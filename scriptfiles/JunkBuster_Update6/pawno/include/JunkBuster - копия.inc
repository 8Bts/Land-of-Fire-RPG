#include <a_samp>
#include <Dini>

#define CONFIG_FILE "JunkBuster/JunkBuster.cfg"
#define BAD_WORDS_FILE "JunkBuster/BadWords.cfg"
#define FORBIDDEN_WEAPONS_FILE "JunkBuster/ForbiddenWeapons.cfg"
#define JB_LOG_FILE "JunkBuster/JunkBuster.log"
#define BLACKLIST_FILE "JunkBuster/Blacklist.txt"
#define WHITELIST_FILE "JunkBuster/Whitelist.txt"
#define IP_BAN_FILE "JunkBuster/IpBans.txt"
#define TEMP_BAN_FILE "JunkBuster/TempBans.txt"
#define BAD_RCON_LOGIN_FILE "JunkBuster/BadRconLogin.txt"

#define MAX_JB_VARIABLES 28
#define MAX_BAD_WORDS 100
#define MAX_FORBIDDEN_WEAPONS 20
#define MAX_PING_CHECKS 3
#define MAX_WEAPONS 47
#define MAX_CHECKS 3
#define MAX_JB_BANS 100

#define WEAPON_HACK 0
#define MONEY_HACK 1
#define JETPACK 2
#define HEALTH_HACK 3
#define ARMOUR_HACK 4
#define DRIVE_BY 5
#define SPAM 6
#define COMMAND_SPAM 7
#define BAD_WORDS 8
#define CAR_JACK_HACK 9
#define TELEPORT_HACK 10
#define MAX_PING 11
#define SPECTATE_HACK 12
#define BLACKLIST 13
#define IP_BANS 14
#define TEMP_BANS 15
#define SPAWNKILL 16
#define CAPS_LOCK 17
#define SPEED_3D 18
#define MAX_SPEED 19
#define ADMIN_IMMUNITY 20
#define ADVERTISEMENT 21
#define FREEZE_UPDATE 22
#define SPAWN_TIME 23
#define CHECKPOINT_TELEPORT 24
#define AIRBREAK 25
#define TANK_MODE 26
#define WARN_PLAYERS 27

#define RED 0xFF0000FF
#define GREEN 0x00FF00FF
#define GREEN_BLUE 0x00D799FF

#define DIALOG_CFG 28354
#define DIALOG_VARLIST 28355
#define DIALOG_SETVAR 28356

new FALSE=false;
new TRUE=true;
#pragma unused TRUE

#define JB_SendFormattedMessage(%0,%1,%2,%3) do{new _string[128]; format(_string,sizeof(_string),%2,%3); SendClientMessage(%0,%1,_string);} while(FALSE)
#define JB_SendFormattedMessageToAll(%0,%1,%2) do{new _string[128]; format(_string,sizeof(_string),%1,%2); SendClientMessageToAll(%0,_string);} while(FALSE)
#define JB_LogEx(%0,%1) do{new _string[256]; format(_string,sizeof(_string),%0,%1); JB_Log(_string);} while(FALSE)
#define JB_Speed(%0,%1,%2,%3,%4) floatround(floatsqroot(%4?(%0*%0+%1*%1+%2*%2):(%0*%0+%1*%1))*%3*1.6)

#define ForEachPlayer(%0) for(new index_%0=0, %0=ConnectedPlayerList[0]; index_%0<ConnectedPlayers; index_%0++, %0=ConnectedPlayerList[index_%0])

//==============================================================================

new ConnectedPlayers;
new ConnectedPlayerList[MAX_PLAYERS+1];//Loop would bug when server is full D:





new IpBans[MAX_JB_BANS][4];
new IpBanned[MAX_JB_BANS];
enum tbInfo
{
	tbName[MAX_PLAYER_NAME],
	tbIp[16],
	tbTime
}
new TempBanInfo[250][tbInfo];


public JB_Kick(playerid,reason[])
{
	if(IsPlayerConnected(playerid))
	{
	    new string[128];
	    format(string,sizeof(string),"~r~Kick notification:~n~%s",reason);
	    GameTextForPlayer(playerid,string,60000,4);

	    TogglePlayerControllable(playerid,false);
	    JB_SendFormattedMessageToAll(RED,"JunkBuster: Kicking player '%s'. Reason: %s",ReturnPlayerName(playerid),reason);
	    JB_LogEx("%s (%s) has been kicked for %s.",ReturnPlayerName(playerid),ReturnPlayerIp(playerid),reason);
	    Kick(playerid);
	    return 1;
	}
	return 0;
}

public JB_Ban(playerid,reason[])
{
	if(IsPlayerConnected(playerid))
	{
	    new string[128];
	    format(string,sizeof(string),"~r~Ban notification:~n~%s",reason);
	    GameTextForPlayer(playerid,string,60000,4);

	    TogglePlayerControllable(playerid,false);
	    JB_SendFormattedMessageToAll(RED,"JunkBuster: Banning player '%s'. Reason: %s",ReturnPlayerName(playerid),reason);
	    JB_LogEx("%s (%s) has been banned for %s.",ReturnPlayerName(playerid),ReturnPlayerIp(playerid),reason);
	    BanEx(playerid,reason);
	    return 1;
	}
	return 0;
}


stock Split(ip_string[])
{
	new ip[4],string[16];
	format(string,sizeof(string),ip_string);

	for(new i=0;i<strlen(string);i++)
		if(string[i]=='.')
		    string[i]=' ';

	new idx,tmp[32];
	for(new i=0;i<4;i++)
	{
	    tmp=JB_strtok(string,idx);
	    if(tmp[0]=='*')
	        ip[i]=-1;
		else
			ip[i]=strval(tmp);
	}
	return ip;
}

stock IpBanCheck(playerid)
{
	new ip[4];
	ip=Split(ReturnPlayerIp(playerid));
	for(new i=0;i<sizeof(IpBans);i++)
	    if(IpBanned[i])
			if(IsSameIpEx(IpBans[i],ip))
			    return 1;
	return 0;
}

stock IsSameIp(ip1[4],ip2[4])
{
 	for(new i=0;i<4;i++)
		if(ip1[i]!=ip2[i])
		    return 0;
	return 1;
}

stock IsSameIpEx(ip1[4],ip2[4])// Check for range-ban
{
	for(new i=0;i<4;i++)
		if(ip1[i]!=ip2[i] && ip1[i]!=-1 && ip2[i]!=-1)
		    return 0;
	return 1;
}


public BanIp(ip_string[])
{
    new ip[4];
	ip=Split(ip_string);
	for(new i=0;i<sizeof(IpBans);i++)
	{
	    if(!IpBanned[i])
	    {
			IpBanned[i]=true;
			IpBans[i]=ip;
			JB_LogEx("IP %s has been banned.",ip_string);

			ForEachPlayer(j)
		        if(IsSameIpEx(ip,Split(ReturnPlayerIp(j))))
		            JB_Kick(j,"IP has been banned");
			return 1;
	    }
	}
	JB_LogEx("Could not ban IP %s!",ip_string);
	return 0;
}

public UnbanIp(ip_string[])
{
	new ip[4];
	ip=Split(ip_string);
	for(new i=0;i<sizeof(IpBans);i++)
	{
	    if(IsSameIp(IpBans[i],ip))
	    {
			IpBanned[i]=false;
			JB_LogEx("IP %s has been unbanned.",ip_string);
			return 1;
	    }
	}
	JB_LogEx("Could not unban IP %s!",ip_string);
	return 0;
}

public SaveIpBans()
{
 	fremove(IP_BAN_FILE);
	new File:f=fopen(IP_BAN_FILE, io_append),string[32];
	for(new i=0;i<sizeof(IpBans);i++)
	{
		if(IpBanned[i])
		{
		    string[0]=0;
			for(new j=0;j<4;j++)
			{
			    if(IpBans[i][j]==-1)
			        format(string,sizeof(string),"%s.*",string);
				else
				    format(string,sizeof(string),"%s.%d",string,IpBans[i][j]);
			}
			format(string,sizeof(string),"%s\r\n",string[1]);
			fwrite(f,string);
		}
	}
	fclose(f);
	return 1;
}

public LoadIpBans()
{
    if(dini_Exists(IP_BAN_FILE))
	{
	    for(new i=0;i<sizeof(IpBans);i++)
	        IpBanned[i]=false;

	    new File:f=fopen(IP_BAN_FILE, io_read),c,string[16];
	    while(fread(f,string,sizeof(string)) && c<sizeof(IpBans))
	    {
	        JB_StripNewLine(string);
	        if(strlen(string))
	        {
				IpBans[c]=Split(string);
				IpBanned[c]=true;
				c++;
			}
	    }
	    fclose(f);
		JB_LogEx("%d IP-bans have been loaded.",c);
	    return 1;
	}
	JB_Log("Could not load IP-bans!");
	return 0;
}

//==============================================================================

public LoadBlacklist()
{
	if(dini_Exists(BLACKLIST_FILE))
	{
	    for(new i=0;i<sizeof(Blacklist);i++)
	        Blacklist[i][0]=0;

	    new File:f=fopen(BLACKLIST_FILE, io_read),c,string[MAX_PLAYER_NAME];
	    while(fread(f,string,sizeof(string)) && c<sizeof(Blacklist))
	    {
	        JB_StripNewLine(string);
	        if(strlen(string))
	        {
	            Blacklist[c]=string;
	            c++;
	        }
	    }
	    fclose(f);
		JB_LogEx("%d blacklist entries have been loaded.",c);
	    return 1;
	}
	JB_Log("Could not load blacklist!");
	return 0;
}

public UpdateBlacklist()
{
	fremove(BLACKLIST_FILE);
	new string[MAX_PLAYER_NAME+2];
	new File:f=fopen(BLACKLIST_FILE,io_append);
	for(new i=0;i<sizeof(Blacklist);i++)
	{
	    if(Blacklist[i][0])
	    {
			format(string,sizeof(string),"%s\r\n",Blacklist[i]);
			fwrite(f,string);
		}
	}
	JB_Log("Blacklist has been updated.");
	return fclose(f);
}

public AddNameToBlacklist(name[])
{
	new success;
	for(new i=0;i<sizeof(Blacklist);i++)
	{
	    if(!Blacklist[i][0])
	    {
			format(Blacklist[i],MAX_PLAYER_NAME,name);
			success=true;
			break;
	    }
	}

	if(success)
	{
		if(UpdateBlacklist())
		{
			JB_LogEx("Player '%s' has successfully been added to blacklist.",name);
		    return 1;
		}
	}
	JB_LogEx("Could not add player '%s' to blacklist!",name);
	return 0;
}

public RemoveNameFromBlacklist(name[])
{
	new success;
	for(new i=0;i<sizeof(Blacklist);i++)
	{
	    if(Blacklist[i][0])
	    {
			if(!strcmp(Blacklist[i],name,false))
			{
			    Blacklist[i][0]=0;
				success=true;
				break;
			}
	    }
	}

	if(success)
	{
		if(UpdateBlacklist())
		{
			JB_LogEx("Player '%s' has successfully been removed from blacklist.",name);
		    return 1;
		}
	}
	JB_LogEx("Could not remove player '%s' from blacklist!",name);
	return 0;
}

public AddPlayerToBlacklist(playerid)
{
	if(AddNameToBlacklist(ReturnPlayerName(playerid)))
		return JB_Ban(playerid,"Blacklist");
	return 0;
}

stock IsPlayerOnBlacklist(playerid)
{
	new name[MAX_PLAYER_NAME];
	name=ReturnPlayerName(playerid);
	for(new i=0;i<sizeof(Blacklist);i++)
	{
	    if(Blacklist[i][0])
	        if(!strcmp(name,Blacklist[i],false))
	            return true;
	}
	return false;
}

//==============================================================================

public LoadWhitelist()
{
	if(dini_Exists(WHITELIST_FILE))
	{
	    for(new i=0;i<sizeof(Whitelist);i++)
	        Whitelist[i][0]=0;

	    new File:f=fopen(WHITELIST_FILE, io_read),c,string[MAX_PLAYER_NAME];
	    while(fread(f,string,sizeof(string)) && c<sizeof(Whitelist))
	    {
	        JB_StripNewLine(string);
	        if(strlen(string))
	        {
	            Whitelist[c]=string;
	            c++;
	        }
	    }
	    fclose(f);
		JB_LogEx("%d whitelist entries have been loaded.",c);
	    return 1;
	}
	JB_Log("Could not load whitelist!");
	return 0;
}

public UpdateWhitelist()
{
	fremove(WHITELIST_FILE);
	new string[MAX_PLAYER_NAME+2];
	new File:f=fopen(WHITELIST_FILE,io_append);
	for(new i=0;i<sizeof(Whitelist);i++)
	{
	    if(Whitelist[i][0])
	    {
			format(string,sizeof(string),"%s\r\n",Whitelist[i]);
			fwrite(f,string);
		}
	}
	JB_Log("Whitelist has been updated.");
	return fclose(f);
}

public AddNameToWhitelist(name[])
{
	new success;
	for(new i=0;i<sizeof(Whitelist);i++)
	{
	    if(!Whitelist[i][0])
	    {
			format(Whitelist[i],MAX_PLAYER_NAME,name);
			success=true;
			break;
	    }
	}

	if(success)
	{
		if(UpdateWhitelist())
		{
			JB_LogEx("Player '%s' has successfully been added to whitelist.",name);
		    return 1;
		}
	}
	JB_LogEx("Could not add player '%s' to whitelist!",name);
	return 0;
}

public RemoveNameFromWhitelist(name[])
{
	new success;
	for(new i=0;i<sizeof(Whitelist);i++)
	{
	    if(Whitelist[i][0])
	    {
			if(!strcmp(Whitelist[i],name,false))
			{
			    Whitelist[i][0]=0;
				success=true;
				break;
			}
	    }
	}

	if(success)
	{
		if(UpdateWhitelist())
		{
			JB_LogEx("Player '%s' has successfully been removed from whitelist.",name);
		    return 1;
		}
	}
	JB_LogEx("Could not remove player '%s' from whitelist!",name);
	return 0;
}

public AddPlayerToWhitelist(playerid)
{
	return AddNameToWhitelist(ReturnPlayerName(playerid));
}

stock IsPlayerOnWhitelist(playerid)
{
	new name[MAX_PLAYER_NAME];
	name=ReturnPlayerName(playerid);
	for(new i=0;i<sizeof(Whitelist);i++)
	{
	    if(Whitelist[i][0])
	        if(!strcmp(name,Whitelist[i],false))
	            return true;
	}
	return false;
}

//==============================================================================

stock TemporaryBanCheck(playerid)
{
	new name[MAX_PLAYER_NAME],ip[16];
	name=ReturnPlayerName(playerid);
	ip=ReturnPlayerIp(playerid);
	for(new i=0;i<sizeof(TempBanInfo);i++)
	{
	    if(TempBanInfo[i][tbTime])
	    {
	        if(!strcmp(TempBanInfo[i][tbName],name,false))
			{
				TempBanInfo[i][tbIp]=ip;
				JB_SendFormattedMessage(playerid,RED,"JunkBuster: You are temporary banned for %d hour(s) and now, you will be banned for one more day.",TempBanInfo[i][tbTime]);
                TempBanInfo[i][tbTime]+=24;// Banning player for one day longer because of ban evading.
                JB_LogEx("%s (%s) has been banned for Ban evading.",name,ip);
				BanEx(playerid,"Ban evading");
				return 1;
			}
	    }
	}
	return 0;
}

public TempBan(playerid,hours,reason[])
{
	if(hours)
	{
		new name[MAX_PLAYER_NAME],ip[16];
		name=ReturnPlayerName(playerid);
		ip=ReturnPlayerIp(playerid);
	    for(new i=0;i<sizeof(TempBanInfo);i++)
		{
			if(!TempBanInfo[i][tbTime])
			{
			    TempBanInfo[i][tbTime]=hours;
			    TempBanInfo[i][tbIp]=ip;
			    TempBanInfo[i][tbName]=name;
			    new string[32];
			    format(string,sizeof(string),"%s [%d hour(s)]",reason,hours);
				JB_Ban(playerid,string);
				return 1;
			}
		}
	}
	return 0;
}

public DeleteTempBan(name[])
{
	for(new i=0;i<sizeof(TempBanInfo);i++)
	{
		if(TempBanInfo[i][tbTime])
		{
		    if(!strcmp(TempBanInfo[i][tbName],name,false))
		    {
			    TempBanInfo[i][tbTime]=0;
				new string[16];
				format(string,sizeof(string),"unbanip %s",TempBanInfo[i][tbIp]);
				SendRconCommand(string);
				JB_LogEx("Player '%s' (%s) has been unbanned.",name,TempBanInfo[i][tbIp]);
				return 1;
			}
		}
	}
	return 0;
}

public LoadTempBans()
{
	if(dini_Exists(TEMP_BAN_FILE))
	{
	    new File:f=fopen(TEMP_BAN_FILE, io_read),c,string[64],idx;
	    while(fread(f,string,sizeof(string)) && c<sizeof(TempBanInfo))
	    {
	        JB_StripNewLine(string);
	        idx=0;
			if(strlen(string))
			{
			    TempBanInfo[c][tbTime]=strval(JB_strtok(string,idx));
				if(TempBanInfo[c][tbTime])
				{
				    format(TempBanInfo[c][tbIp],16,JB_strtok(string,idx));
				    format(TempBanInfo[c][tbName],16,JB_strtok(string,idx));
				    c++;
				}
			}
	    }
	    fclose(f);
	    JB_LogEx("%d temporary bans have been loaded.",c);
	    return 1;
	}
	JB_Log("Could not load temporary bans!");
	return 0;
}

public SaveTempBans()
{
 	fremove(TEMP_BAN_FILE);
	new File:f=fopen(TEMP_BAN_FILE, io_append),string[64];
	for(new i=0;i<sizeof(TempBanInfo);i++)
	{
		if(TempBanInfo[i][tbTime])
		{
		    format(string,sizeof(string),"%d %s %s\r\n",TempBanInfo[i][tbTime],TempBanInfo[i][tbIp],TempBanInfo[i][tbName]);
		    fwrite(f,string);
		}
	}
	fclose(f);
	return 1;
}

public TempBanUpdate()
{
    new string[32];
    for(new i=0;i<sizeof(TempBanInfo);i++)
	{
		if(TempBanInfo[i][tbTime])
		{
		    TempBanInfo[i][tbTime]--;
		    if(!TempBanInfo[i][tbTime])
		    {
				format(string,sizeof(string),"unbanip %s",TempBanInfo[i][tbIp]);
				SendRconCommand(string);
				JB_LogEx("Player '%s' (%s) has been unbanned.",TempBanInfo[i][tbName],TempBanInfo[i][tbIp]);
			}
		}
	}
	return 1;
}


stock ReturnTime()
{
	new jb_time[16],jb_h,jb_m,jb_s;
	gettime(jb_h,jb_m,jb_s);
	format(jb_time,sizeof(jb_time),"%02d:%02d:%02d",jb_h,jb_m,jb_s);
	return jb_time;
}

stock ReturnDate()
{
	new jb_date[32],jb_day,jb_month,jb_year;
	getdate(jb_year,jb_month,jb_day);
	format(jb_date,sizeof(jb_date),"%d. %s %d",jb_day,GetMonth(jb_month),jb_year);
	return jb_date;
}

stock GetMonth(month)
{
	new string[32];
	string="Unknown month";
	switch(month)
	{
	    case 1:
	        string="January";
		case 2:
		    string="February";
        case 3:
		    string="March";
        case 4:
		    string="April";
        case 5:
		    string="May";
		case 6:
		    string="June";
		case 7:
		    string="July";
		case 8:
		    string="August";
		case 9:
		    string="Septembre";
		case 10:
		    string="Octobre";
		case 11:
		    string="Novembre";
		case 12:
		    string="Decembre";
	}
	return string;
}

stock ReturnPlayerName(playerid)
{
	new name[MAX_PLAYER_NAME];
	GetPlayerName(playerid,name,sizeof(name));
	return name;
}

stock ReturnPlayerIp(playerid)
{
	new ip[16];
	GetPlayerIp(playerid,ip,sizeof(ip));
	return ip;
}

stock JB_strtok(const string[], &index,seperator=' ')
{
	new length = strlen(string);
	new offset = index;
	new result[32];
	while ((index < length) && (string[index] != seperator) && ((index - offset) < (sizeof(result) - 1)))
	{
		result[index - offset] = string[index];
		index++;
	}

	result[index - offset] = EOS;
	if ((index < length) && (string[index] == seperator))
	{
		index++;
	}
	return result;
}

stock JB_IsNumeric(string[])
{
	for (new i = 0, j = strlen(string); i < j; i++)
		if ((string[i] > '9' || string[i] < '0') && string[i]!='-' ) return 0;
	return 1;
}

stock JB_StripNewLine(string[])
{
	new len = strlen(string);
	if (string[0]==0) return ;
	if ((string[len - 1] == '\n') || (string[len - 1] == '\r')) {
		string[len - 1] = 0;
		if (string[0]==0) return ;
		if ((string[len - 2] == '\n') || (string[len - 2] == '\r')) string[len - 2] = 0;
	}
}



public OnPlayerCommandText(playerid, cmdtext[])
{
	

		if(!strcmp("/tban",cmd,true))
		{
		    new time,idx2=strlen(cmd)+2;
		    tmp=JB_strtok(cmdtext,idx);
		    idx2+=strlen(tmp);
		    if(strlen(tmp))
		    {
		        if(JB_IsNumeric(tmp))
		        {
		            pid=strval(tmp);
		            if(IsPlayerConnected(pid))
		            {
						tmp=JB_strtok(cmdtext,idx);
						idx2+=strlen(tmp);
						if(strlen(tmp))
						{
							if(JB_IsNumeric(tmp))
							{
							    time=strval(tmp);
							    if(strlen(cmdtext[idx2]) && time)
								{
							        TempBan(pid,time,cmdtext[idx2]);
							        return 1;
							    }
							}
						}
		            }
		        }
		    }
		    SendClientMessage(playerid,RED,"Usage: /tban <ID> <time in hours> <reason>");
			return 1;
		}

		
