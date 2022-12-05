#include <sys/types.h>
#include <signal.h>

typedef signed int s32;
typedef unsigned int u32;
typedef unsigned char u8;
typedef signed char s8;
typedef signed short s16;
typedef unsigned short u16;




static char B_10016520[1];
static char B_10016620[1];
static char B_10016720[1];
static char B_10016820[1];

static char* B_10016A20;
static sigaction_t D_100141E0;
static char* D_10014200;
static s32 D_10014204;
//  ? RO_1000F05C;
void* bootBuf;
s32 changeclock;
s32 clockrate;
s32 cosim;
s32 debug;
s32 emulator;
char* fileName;
s8 fillData;
s32 finalromSize;
void* fontBuf;
s32 gcord;
void* headerBuf;
s32 irixVersion;
s32 keep_going;
s32 loadMap;
s32 nofont;
s32 offset;
char* optarg;
s32 optind;
void* waveList;
FILE* yyin;
u32 headerWordAlignedByteSize;
u32 bootWordAlignedByteSize;
u32 fontdataWordAlignedByteSize;

char* bootEntryName;
char* bootStackName;
int bootStackOffset;
int cosim;
int errno;
int finalromSize;
