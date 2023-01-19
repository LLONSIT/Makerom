
#ifndef MAKEROM_COMMON_H
#define MAKEROM_COMMON_H
#include "types.h"


//Macros (common)
#define COMMON_UNKNOWN_FLAG 2


//Irix Version Macros
#define IRIX_VERSION_53 0
#define IRIX_VERSION_62 1
#define IRIX_VERSION_63 2
#define IRIX_VERSION_64 3
#define IRIX_VERSION_UNKNOWN 4

//Consider this temporary


static u8 B_10016520[0x100];
static u8 B_10016620[0x100];
static u8 B_10016720[0x100];
static u8 B_10016820[0x100];
static u8 B_10016920[0x100];


#ifdef __sgi
struct sigaction_t act;
#else
const struct sigaction *restrict act; //ah
#endif

static unsigned char segmentSymbolSource[255];
static unsigned char segmentSymbolObject[255];
static unsigned char entrySource[255];
static unsigned char entryObject[255];
static unsigned char objectListFile[255];
static unsigned char* romFile;
static int checkOverlap;
static unsigned char* progName;

//First
  int irixVersion;
  int debug;
  void* bootAddress;
  void* bootBuf;
  u32 bootWordAlignedByteSize;
  s32 changeclock;
  s32 clockrate;
  u8 fillData;
  s32 finalromSize;


//Second
  void* fontBuf;
  u32 fontdataWordAlignedByteSize;
  u8* headerBuf;
  u32 headerWordAlignedByteSize;
  s32 nofont;
  s32 offset;
  
//Third
  s32 loadMap;
  s32 gcord;
  FILE *yyin;
  static u8 *yylval;
  static u8 *yyval;
  static char* B_10016A20;
  s32 cosim;
  s32 emulator;

//Four
  s32 pif2bootBuf;
  s32 pif2bootWordAlignedByteSize;
  static u8 *bootEntryName;
  static u8 *bootStackName;
  static u8 *bootStackOffset;
  static int checkOverlap;
  u8 fileName;
  void *Allocate;
  static s32 lineNumber = 1;
  static s8 yytext[0x800];


#endif //MAKEROM_COMMON_H
