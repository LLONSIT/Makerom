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
// extern ? RO_1000F05C;
extern void* bootBuf;
extern s32 changeclock;
extern s32 clockrate;
extern s32 cosim;
extern s32 debug;
extern s32 emulator;
extern char* fileName;
extern s8 fillData;
extern s32 finalromSize;
extern void* fontBuf;
extern s32 gcord;
extern void* headerBuf;
extern s32 irixVersion;
extern s32 keep_going;
extern s32 loadMap;
extern s32 nofont;
extern s32 offset;
extern char* optarg;
extern s32 optind;
extern void* waveList;
extern FILE* yyin;

 char* bootEntryName;
 char* bootStackName;
 int bootStackOffset;
 int cosim;
 int errno;
 int finalromSize;
