
//types
typedef signed int s32;
typedef unsigned int u32;
typedef unsigned char u8;
typedef signed char s8;



static char B_10016520[1];
static char B_10016620[1];
static char B_10016720[1];
static char B_10016820[1];

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
