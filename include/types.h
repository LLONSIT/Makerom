#include <sys/types.h>
#include <signal.h>

//types: TEMP
typedef signed int s32;
typedef unsigned int u32;
typedef unsigned char u8;
typedef signed char s8;
typedef signed short s16;

//Structs

struct scnhdr
       {
       char	       s_name[8];    /* section name */
       long	       s_paddr;      /* physical address, aliased s_nlib */
       long	       s_vaddr;      /* virtual address */
       long	       s_size;	     /* section size */
       long	       s_scnptr;     /* file ptr to raw data for section */
       long	       s_relptr;     /* file ptr to relocation */
       long	       s_lnnoptr;    /* file ptr to gp table */
       unsigned short  s_nreloc;     /* number of relocation entries */
       unsigned short  s_nlnno;      /* number of gp table entries */
       long	       s_flags;      /* flags */
       };


static u8 B_10016520[0x100];
static u8 B_10016620[0x100];
static u8 B_10016720[0x100];
static u8 B_10016820[0x100];
static u8 B_10016920[0x100];



/*
static char B_10016520[1];
static char B_10016620[1];
static char B_10016720[1];
static char B_10016820[1];
*/

struct sigaction act;
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
int keep_going;
static void* B_10016A60;
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
void* headerBuf;
u32 headerWordAlignedByteSize;
s32 nofont;
s32 offset;
u32 Address;
u32 Data0;
u32 Data1;
struct ldfile* LDPtr;
char* OFileName;
struct scnhdr SHeader;
char* SName;
s32 Swap;

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
