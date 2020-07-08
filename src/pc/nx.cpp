#ifdef __SWITCH__
#include <switch.h>
#include "nx.h"

static char g_initialized = 0;

extern "C" {
	void userAppInit(void);
	void userAppExit(void);
}

void userAppInit()
{
	smInitialize();
	fsInitialize();
	romfsInit();
}

void userAppExit()
{
}

void initialize()
{
	if(g_initialized)
	{
		return;
	}

	g_initialized  = 1;

	/*smInitialize();
	fsInitialize();
	romfsInit();*/
	
	//appletInitialize();
	accountInitialize(AccountServiceType_Application);
	
	//if (hosversionBefore(8, 0, 0) || true)
	{
		//if (pcvSetClockRate(PcvModule_CpuBus, clock()))
		if (appletSetCpuBoostMode(ApmCpuBoostMode_Type1))
		{
			return;
		}
	}
	/*else
	{
		ClkrstSession session = { 0 };
		clkrstOpenSession(&session, PcvModuleId_CpuBus, 3);
		if (clkrstSetClockRate(&session, clock()))
		{
		}
		clkrstCloseSession(&session);
	}*/
}

int appletEnsureSaveData(AccountUid uid)
{
	return serviceDispatchIn(appletGetServiceSession_Functions(), 20, uid);
}

AccountUid currentUser()
{
	AccountUid uid;
	
	uid.uid[0] = 0;
	uid.uid[1] = 0;
	
	if (accountGetPreselectedUser(&uid))
	{
	}
	
	return uid;
}

int mountSaveData()
{
	FsFileSystem fileSystem;
	
	initialize();

	if (fsOpen_SaveData(&fileSystem, FS_SAVEDATA_CURRENT_APPLICATIONID, currentUser()))
	{
		return -1;
	}

	if (fsdevMountDevice("sv", fileSystem) == -1)
	{
		fsdevUnmountDevice("sv");
		return -2;
	}
	return 0;
}

int unmountSaveData()
{
	if (fsdevUnmountDevice("sv") == -1)
	{
		return -1;
	}
	return 0;
}

int commitSave()
{
	return fsdevCommitDevice("sv");
}

#endif
