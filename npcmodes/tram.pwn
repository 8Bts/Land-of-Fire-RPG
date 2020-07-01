#include <a_npc>

#define RECORDING "tram" //Это имя файла путей, который мы только что записали
#define RECORDING_TYPE 1//1 для водителя 2 для пешехода

#include <a_npc>
main(){}
public OnRecordingPlaybackEnd() StartRecordingPlayback(RECORDING_TYPE, RECORDING);

#if RECORDING_TYPE == 1
    public OnNPCEnterVehicle(vehicleid, seatid) StartRecordingPlayback(RECORDING_TYPE, RECORDING);
    public OnNPCExitVehicle() StopRecordingPlayback();
#else
    public OnNPCSpawn() StartRecordingPlayback(RECORDING_TYPE, RECORDING);
#endif
