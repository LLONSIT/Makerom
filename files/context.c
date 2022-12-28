typedef union sigval {
 int sival_int;
 void *sival_ptr;
} sigval_t;
typedef struct sigevent {
 int sigev_signo;
 union sigval sigev_value;
} sigevent_t;
typedef void (*SIG_PF) ();
extern void (*signal(int,void (*)()))();
// #ident "$Revision: 3.70 $"
// #ident "$Revision: 1.5 $"
typedef int __int32_t;
typedef unsigned __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef __int32_t __psint_t;
typedef __uint32_t __psunsigned_t;
typedef __int32_t __scint_t;
typedef __uint32_t __scunsigned_t;
typedef unsigned char uchar_t;
typedef unsigned short ushort_t;
typedef unsigned int uint_t;
typedef unsigned long ulong_t;
typedef char * addr_t;
typedef char * caddr_t;
typedef long daddr_t;
typedef long pgno_t;
typedef __uint32_t pfn_t;
typedef short cnt_t;
typedef enum { B_FALSE, B_TRUE } boolean_t;
typedef long id_t;
typedef ulong_t major_t;
typedef ulong_t minor_t;
typedef struct {
        unsigned char u_bits[16];
} uuid_t, *uuid_p_t;
typedef ushort_t o_mode_t;
typedef short o_dev_t;
typedef ushort_t o_uid_t;
typedef o_uid_t o_gid_t;
typedef short o_nlink_t;
typedef short o_pid_t;
typedef __uint32_t o_ino_t;
typedef unsigned long mode_t;
typedef unsigned long dev_t;
typedef long uid_t;
typedef long gid_t;
typedef unsigned long nlink_t;
typedef long pid_t;
typedef unsigned long ino_t;
typedef __uint64_t ino64_t;
typedef long off_t;
typedef __int64_t off64_t;
typedef __scint_t __scoff_t;
typedef __scoff_t scoff_t;
typedef long swblk_t;
typedef unsigned long paddr_t;
typedef int key_t;
typedef unsigned char use_t;
typedef short sysid_t;
typedef short index_t;
typedef unsigned int lock_t;
typedef signed char cpuid_t;
typedef unsigned int size_t;
typedef int ssize_t;
typedef long time_t;
typedef long clock_t;
typedef __scunsigned_t bitnum_t;
typedef __scunsigned_t bitlen_t;
typedef int processorid_t;
typedef int toid_t;
typedef long *qaddr_t;
typedef __uint32_t inst_t;
typedef unsigned machreg_t;
typedef __uint32_t fpreg_t;
typedef signed char int8_t;
typedef short int16_t;
typedef __int32_t int32_t;
typedef unsigned char u_int8_t;
typedef unsigned short u_int16_t;
typedef __uint32_t u_int32_t;
typedef long hostid_t;
// #ident "$Revision: 1.2 $"
typedef struct { int r[1]; } * physadr;
typedef unsigned char unchar;
typedef unsigned char u_char;
typedef unsigned short ushort;
typedef unsigned short u_short;
typedef unsigned int uint;
typedef unsigned int u_int;
typedef unsigned long ulong;
typedef unsigned long u_long;
typedef struct _quad { long val[2]; } quad;
// #ident "$Revision: 1.4 $"
typedef unsigned long fd_mask;
typedef struct fd_set {
 fd_mask fds_bits[(((1024)+(((sizeof(fd_mask) * 8))-1))/((sizeof(fd_mask) * 8)))];
} fd_set;
typedef struct {
        __uint32_t sigbits[2];
} k_sigset_t;
typedef __uint32_t k_fltset_t;

typedef struct {
        __uint32_t sigbits[4];
} sigset_t;
typedef struct sigaction {
 int sa_flags;
 void (*sa_handler)();
 sigset_t sa_mask;
 int sa_resv[2];
} sigaction_t;
struct sigaltstack {
 char *ss_sp;
 int ss_size;
 int ss_flags;
};
typedef struct sigaltstack stack_t;
typedef struct sigcontext {
 __uint32_t sc_regmask;
 __uint32_t sc_status;
 __uint64_t sc_pc;
 __uint64_t sc_regs[32];
 __uint64_t sc_fpregs[32];
 __uint32_t sc_ownedfp;
 __uint32_t sc_fpc_csr;
 __uint32_t sc_fpc_eir;
 __uint32_t sc_ssflags;
 __uint64_t sc_mdhi;
 __uint64_t sc_mdlo;
 __uint64_t sc_cause;
 __uint64_t sc_badvaddr;
 __uint64_t sc_triggersave;
 sigset_t sc_sigset;
 __uint64_t sc_pad[32];
} sigcontext_t;
struct sigstack {
 char *ss_sp;
 int ss_onstack;
};
// #ident "$Revision: 1.13 $"
typedef struct siginfo {
 int si_signo;
 int si_code;
 int si_errno;
 union {
  int _pad[((128 / sizeof(__int32_t)) - 3)];
  struct {
   pid_t _pid;
   union {
    struct {
     uid_t _uid;
    } _kill;
    struct {
     clock_t _utime;
     int _status;
     clock_t _stime;
    } _cld;
   } _pdata;
  } _proc;
  struct {
   caddr_t _addr;
  } _fault;
  struct {
   int _fd;
   int _band;
  } _file;
  union sigval _value;
 } _data;
} siginfo_t;
typedef int sig_atomic_t;
extern int raise(int);
extern int kill(pid_t, int);
extern int sigaction(int, const struct sigaction *, struct sigaction *);
extern int sigpending(sigset_t *);
extern int sigprocmask(int, const sigset_t *, sigset_t *);
extern int sigsuspend(const sigset_t *);
extern int sigaddset(sigset_t *, int);
extern int sigdelset(sigset_t *, int);
extern int sigemptyset(sigset_t *);
extern int sigfillset(sigset_t *);
extern int sigismember(const sigset_t *, int);
extern char *_sys_siglist[];
extern int _sys_nsig;
extern int sigpause(int);
extern int (*ssignal(int, int (*)(int)))(int);
extern void (*sigset(int,void (*)()))();
// #ident "$Revision: 1.6 $"
typedef enum idtype {
 P_PID,
 P_PPID,
 P_PGID,
 P_SID,
 P_CID,
 P_UID,
 P_GID,
 P_ALL
} idtype_t;
typedef enum idop {
 POP_DIFF,
 POP_AND,
 POP_OR,
 POP_XOR
} idop_t;
typedef struct procset {
 idop_t p_op;
 idtype_t p_lidtype;
 id_t p_lid;
 idtype_t p_ridtype;
 id_t p_rid;
} procset_t;
extern int gsignal(int);
extern int sighold(int);
extern int sigrelse(int);
extern int sigignore(int);
extern int sigaltstack(const stack_t *, stack_t *);
extern int sigsend(idtype_t, id_t, int);
extern int sigsendset(const procset_t *, int);
struct timespec;
struct siginfo;
extern int sigqueue(pid_t , int, const union sigval);
extern int sigwaitinfo(const sigset_t *set, struct siginfo *value);
extern int sigtimedwait(const sigset_t *set, struct siginfo *value, struct timespec *ts);
extern int sigwait(const sigset_t *set, int *sig);
extern int sgi_altersigs(int, sigset_t *, int[]);
extern int sgi_sigffset(sigset_t *, int);
extern int sgi_dumpset(sigset_t *);
// #ident "$Revision: 1.3 $"
// #ident "@(#)head:wait.h	1.1"
// #ident "$Revision: 1.37 $"
typedef union wait {
 int w_status;
 struct {
  unsigned int w_Filler:16,
    w_Retcode:8,
    w_Coredump:1,
    w_Termsig:7;
 } w_T;
 struct {
  unsigned int w_Filler:16,
    w_Stopsig:8,
    w_Stopval:8;
 } w_S;
} wait_t;
// #ident "$Revision: 3.31 $"
struct timeval {
 long tv_sec;
 long tv_usec;
};
struct timezone {
 int tz_minuteswest;
 int tz_dsttime;
};
struct itimerval {
 struct timeval it_interval;
 struct timeval it_value;
};
typedef struct timestruc {
 time_t tv_sec;
 long tv_nsec;
} timestruc_t;
extern int BSDgettimeofday(struct timeval *tp, struct timezone *tzp);
extern int BSDsettimeofday(struct timeval *tp, struct timezone *tzp);
extern int gettimeofday(struct timeval *tp,...);
extern int settimeofday(struct timeval *tp,...);
extern int adjtime(struct timeval *, struct timeval *);
extern int getitimer(int, struct itimerval *);
extern int setitimer(int, struct itimerval *, struct itimerval *);
// #ident "$Revision: 1.28 $"
typedef struct timespec {
 time_t tv_sec;
 long tv_nsec;
} timespec_t;
typedef struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
} itimerspec_t;
extern int nanosleep(const struct timespec *, struct timespec *);
struct tm {
 int tm_sec;
 int tm_min;
 int tm_hour;
 int tm_mday;
 int tm_mon;
 int tm_year;
 int tm_wday;
 int tm_yday;
 int tm_isdst;
};
extern clock_t clock(void);
extern double difftime(time_t, time_t);
extern time_t mktime(struct tm *);
extern time_t time(time_t *);
extern char *asctime(const struct tm *);
extern char *ctime (const time_t *);
extern struct tm *gmtime(const time_t *);
extern struct tm *localtime(const time_t *);
extern size_t strftime(char *, size_t, const char *, const struct tm *);
extern void tzset(void);
extern char *tzname[2];
extern long timezone;
extern int daylight;
extern int cftime(char *, char *, const time_t *);
extern int ascftime(char *, const char *, const struct tm *);
extern long altzone;
extern struct tm *getdate(const char *);
extern int getdate_err;
extern char *asctime_r(const struct tm *, char *, int);
extern char *ctime_r(const time_t *, char *, int);
extern struct tm *gmtime_r(const time_t *, struct tm *);
extern struct tm *localtime_r(const time_t *, struct tm *);
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
 long ru_maxrss;
 long ru_ixrss;
 long ru_idrss;
 long ru_isrss;
 long ru_minflt;
 long ru_majflt;
 long ru_nswap;
 long ru_inblock;
 long ru_oublock;
 long ru_msgsnd;
 long ru_msgrcv;
 long ru_nsignals;
 long ru_nvcsw;
 long ru_nivcsw;
};
typedef unsigned long rlim_t;
typedef __uint64_t rlim64_t;
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
struct rlimit64 {
 rlim64_t rlim_cur;
 rlim64_t rlim_max;
};
extern int getrlimit(int, struct rlimit *);
extern int setrlimit(int, const struct rlimit *);
extern int getrlimit64(int, struct rlimit64 *);
extern int setrlimit64(int, const struct rlimit64 *);
extern int getpriority(int, int);
extern int setpriority(int, int, int);
extern int getrusage(int, struct rusage *);
extern pid_t waitpid(pid_t, int *, int);
extern pid_t wait(int *);
extern pid_t wait3(int *, int, struct rusage *);
extern int waitid(idtype_t, id_t, siginfo_t *, int);
typedef signed char s8;
typedef unsigned char u8;
typedef signed short int s16;
typedef unsigned short int u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long int s64;
typedef unsigned long long int u64;
typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;
typedef float f32;
typedef double f64;
extern int strncmp(const char *, const char *, size_t);
extern char *strrchr(const char *, int);
char *strcat( char *dest, const char *src );
char* strcpy(char*, const char*);
size_t strlen(const char*);
#pragma intrinsic (strcpy)
typedef unsigned int greg_t;
typedef greg_t gregset_t[36];
typedef struct prstatus {
 ulong_t pr_flags;
 short pr_why;
 short pr_what;
 short pr_cursig;
 sigset_t pr_sigpend;
 sigset_t pr_sighold;
 struct siginfo pr_info;
 struct sigaltstack pr_altstack;
 sigaction_t pr_action;
 long pr_syscall;
 long pr_nsysarg;
 long pr_errno;
 long pr_rval1;
 long pr_rval2;
 long pr_sysarg[6];
 pid_t pr_pid;
 pid_t pr_ppid;
 pid_t pr_pgrp;
 pid_t pr_sid;
 timestruc_t pr_utime;
 timestruc_t pr_stime;
 timestruc_t pr_cutime;
 timestruc_t pr_cstime;
 char pr_clname[8];
 long pr_filler[20];
 inst_t pr_instr;
 gregset_t pr_reg;
} prstatus_t;
typedef struct {
    unsigned long word[0x10];
} sysset_t;
typedef struct prmap_sgi_arg {
   caddr_t pr_vaddr;
   ulong_t pr_size;
} prmap_sgi_arg_t;
typedef struct prmap_sgi {
 caddr_t pr_vaddr;
 ulong_t pr_size;
 __scoff_t pr_off;
 ulong_t pr_mflags;
 pgno_t pr_vsize;
 pgno_t pr_psize;
 pgno_t pr_wsize;
 pgno_t pr_rsize;
 pgno_t pr_msize;
 dev_t pr_dev;
 ino_t pr_ino;
 long pr_fill[5];
} prmap_sgi_t;
extern unsigned char __ctype[];
extern void *calloc(size_t, size_t);
extern void free(void *);
extern void *malloc(size_t);
extern void *realloc(void *, size_t);
extern char *getcwd(char *, size_t);
extern char *getenv(const char *);
typedef long fpos_t;
typedef struct {
    int _cnt;
    unsigned char *_ptr;
    unsigned char *_base;
    unsigned char _flag;
    unsigned char _file;
} FILE;
extern FILE __iob[100];
extern FILE *_lastbuf;
extern unsigned char *_bufendtab[];
extern unsigned char _sibuf[], _sobuf[];
extern int remove(const char *);
extern int rename(const char *, const char *);
extern FILE *tmpfile(void);
extern char *tmpnam(char *);
extern int fclose(FILE *);
extern int fflush(FILE *);
extern FILE *fopen(const char *, const char *);
extern FILE *freopen(const char *, const char *, FILE *);
extern void setbuf(FILE *, char *);
extern int setvbuf(FILE *, char *, int, size_t);
extern int fprintf(FILE *, const char *, ...);
extern int fscanf(FILE *, const char *, ...);
extern int printf(const char *, ...);
extern int scanf(const char *, ...);
extern int sprintf(char *, const char *, ...);
extern int sscanf(const char *, const char *, ...);
extern int vfprintf(FILE *, const char *, char *);
extern int vprintf(const char *, char *);
extern int vsprintf(char *, const char *, char *);
extern int fgetc(FILE *);
extern char *fgets(char *, int, FILE *);
extern int fputc(int, FILE *);
extern int fputs(const char *, FILE *);
extern int getc(FILE *);
extern int getchar(void);
extern char *gets(char *);
extern int putc(int, FILE *);
extern int putchar(int);
extern int puts(const char *);
extern int ungetc(int, FILE *);
extern size_t fread(void *, size_t, size_t, FILE *);
#pragma int_to_unsigned fread
extern size_t fwrite(const void *, size_t, size_t, FILE *);
#pragma int_to_unsigned fwrite
extern int fgetpos(FILE *, fpos_t *);
extern int fseek(FILE *, long, int);
extern int fsetpos(FILE *, const fpos_t *);
extern long ftell(FILE *);
extern void rewind(FILE *);
extern void clearerr(FILE *);
extern int feof(FILE *);
extern int ferror(FILE *);
extern void perror(const char *);
extern int __filbuf(FILE *);
extern int __flsbuf(int, FILE *);
extern int __semputc(int, FILE *);
extern int __semgetc(FILE *);
extern int __us_rsthread_stdio;
typedef unsigned long int uintptr_t;
struct aouthdr;
struct fdr;
struct filehdr;
union gp_table;
struct pdr;
struct reloc;
struct scnhdr;
union __sgi_auxu_u;
struct __sgi_extr__;
struct __sgi_hdrr_s;
struct __sgi_optr_s;
struct __sgi_symr_s;
extern
int
gethostsex(void);
extern
void
swap_filehdr(struct filehdr *, long);
extern
void
swap_aouthdr(struct aouthdr *, long);
extern
void
swap_scnhdr(struct scnhdr *, long);
extern
void
swap_hdr(struct __sgi_hdrr_s *, long);
extern
void
swap_fd(struct fdr *, long, long);
extern
void
swap_fi(long * , long, long);
extern
void
swap_sym(struct __sgi_symr_s *, long,long);
extern
void
swap_ext(struct __sgi_extr__ *,long,long);
extern
void
swap_pd(struct pdr *,long,long);
extern
void
swap_opt(struct __sgi_optr_s *,long,long);
extern
void
swap_aux(union __sgi_auxu_u *,long,long);
extern
void
swap_reloc(struct reloc *,long,long);
extern
void
swap_gpt(union gp_table *,long,long);
// #ident "$Revision: 3.12 $"
struct tms {
 clock_t tms_utime;
 clock_t tms_stime;
 clock_t tms_cutime;
 clock_t tms_cstime;
};
extern clock_t times (struct tms *);
// #ident "$Revision: 1.8 $"
struct utimbuf {
 time_t actime;
 time_t modtime;
};
extern int utime(const char *, const struct utimbuf *);
// #ident "$Revision: 1.22 $"
// #ident "$Revision: 3.24 $"
extern int errno;
extern char * sys_errlist[];
extern int sys_nerr;
extern int oserror(void);
extern int setoserror(int);
extern int goserror(void);
// #ident "$Revision: 1.78 $"
struct iovec;
struct timeval;
extern int acct(const char *);
extern int brk(void *);
extern int chroot(const char *);
extern int fattach(int, const char *);
extern int fchdir(int);
extern int fchown(int, uid_t, gid_t);
extern int fdetach(const char *);
extern int fsync(int);
extern int ftruncate(int, off_t);
extern pid_t getpgid(pid_t);
extern char *gettxt(const char *, const char *);
extern pid_t getsid(pid_t);
extern int ioctl(int, int, ...);
extern int lchown(const char *, uid_t, gid_t);
extern int lockf(int, int, long);
extern int mincore(caddr_t, size_t, char *);
extern int nice(int);
extern void profil(unsigned short *, unsigned int, unsigned int, unsigned int);
extern int ptrace(int, pid_t, int, int);
extern char *re_comp(const char *);
extern int re_exec(const char *);
extern int readlink(const char *, void *, size_t);
extern int readv(int, struct iovec *, int);
extern void *sbrk(int);
extern int setgroups(int, const gid_t *);
extern pid_t setpgrp(void);
extern int stime(const time_t *);
extern int symlink(const char *, const char *);
extern void sync(void);
extern int truncate(const char *, off_t);
extern int vhangup(void);
extern int writev(int, const struct iovec *, int);
extern int select(int, fd_set *, fd_set *, fd_set *, struct timeval *);
extern int access(const char *, int);
extern unsigned alarm(unsigned);
extern int chdir(const char *);
extern int chown(const char *, uid_t, gid_t);
extern int close(int);
extern char *ctermid(char *);
extern char *cuserid(char *);
extern int dup(int);
extern int dup2(int, int);
extern int execl(const char *, const char *, ...);
extern int execle(const char *, const char *, ...);
extern int execlp(const char *, const char *, ...);
extern int execv(const char *, char *const *);
extern int execve(const char *, char *const *, char *const *);
extern int execvp(const char *, char *const *);
extern void exit(int);
extern void _exit(int);
extern pid_t fork(void);
extern long fpathconf(int, int);
extern char *getcwd(char *, size_t);
extern gid_t getegid(void);
extern uid_t geteuid(void);
extern gid_t getgid(void);
extern int getgroups(int, gid_t *);
extern char *getlogin(void);
extern pid_t getpgrp(void);
extern pid_t getpid(void);
extern pid_t getppid(void);
extern uid_t getuid(void);
extern int isatty(int);
extern int link(const char *, const char *);
extern off_t lseek(int, off_t, int);
extern long pathconf(const char *, int);
extern int pause(void);
extern int pipe(int *);
extern ssize_t read(int, void *, size_t);
extern int rename(const char *, const char *);
extern int rmdir(const char *);
extern int setgid(gid_t);
extern int setpgid(pid_t, pid_t);
extern pid_t setsid(void);
extern int setuid(uid_t);
extern unsigned sleep(unsigned);
extern long sysconf(int);
extern pid_t tcgetpgrp(int);
extern int tcsetpgrp(int, pid_t);
extern char *ttyname(int);
extern int unlink(const char *);
extern ssize_t write(int, const void *, size_t);
extern int BSDchown(const char *, uid_t, gid_t);
extern int BSDdup2(int, int);
extern int BSDfchown(int, uid_t, gid_t);
extern int BSDsetpgrp(int, int);
extern int BSDsetgroups(int, int *);
extern int BSDgetgroups(int, int *);
extern void bset(char *, bitnum_t);
extern void bclr(char *, bitnum_t);
extern int btst(char *, bitnum_t);
extern void bfset(char *, bitnum_t, bitlen_t);
extern void bfclr(char *, bitnum_t, bitlen_t);
extern bitlen_t bftstset(char *, bitnum_t, bitlen_t);
extern bitlen_t bftstclr(char *, bitnum_t, bitlen_t);
extern int _daemonize(int, int, int, int);
extern int ftruncate64(int, off64_t);
extern int getdtablesize(void);
extern int getdtablehi(void);
extern int getdomainname(char *, int);
extern long gethostid(void);
extern int gethostname(char *, int);
extern int getpagesize(void);
extern char *_getpty(int *, int, mode_t, int);
extern char *getwd(char *);
extern off64_t lseek64(int, off64_t, int);
extern int mpin(void *, size_t);
extern int munpin(void *, size_t);
extern pid_t pcreatel(const char *, const char *, ...);
extern pid_t pcreatelp(const char *, const char *, ...);
extern pid_t pcreatev(const char *, char *const *);
extern pid_t pcreateve(const char *, char *const *, char *const *);
extern pid_t pcreatevp(const char *, char *const *);
extern int setdomainname(const char *, int);
extern int sethostid(long);
extern int sethostname(const char *, int);
extern int setregid(gid_t, gid_t);
extern int setreuid(uid_t, uid_t);
extern int sgikopt(const char *, char *, int);
extern int sginap(long);
extern int truncate64(const char *, off64_t);
extern char *getlogin_r(char *, int);
// #ident "$Revision: 1.20 $"
extern int isalnum(int);
extern int isalpha(int);
extern int iscntrl(int);
extern int isdigit(int);
extern int isgraph(int);
extern int islower(int);
extern int isprint(int);
extern int ispunct(int);
extern int isspace(int);
extern int isupper(int);
extern int isxdigit(int);
extern int tolower(int);
extern int toupper(int);
extern int isascii(int);
extern int toascii(int);
extern int _tolower(int);
extern int _toupper(int);
extern unsigned char __ctype[];
// #ident "$Revision: 3.34 $"
// #ident "$Revision: 3.31 $"
struct stat {
 dev_t st_dev;
 long st_pad1[3];
 ino_t st_ino;
 mode_t st_mode;
 nlink_t st_nlink;
 uid_t st_uid;
 gid_t st_gid;
 dev_t st_rdev;
 long st_pad2[2];
 off_t st_size;
 long st_pad3;
 timestruc_t st_atim;
 timestruc_t st_mtim;
 timestruc_t st_ctim;
 long st_blksize;
 long st_blocks;
 char st_fstype[16];
 long st_pad4[8];
};
struct stat64 {
 dev_t st_dev;
 long st_pad1[3];
 ino64_t st_ino;
 mode_t st_mode;
 nlink_t st_nlink;
 uid_t st_uid;
 gid_t st_gid;
 dev_t st_rdev;
 long st_pad2[2];
 off64_t st_size;
 long st_pad3;
 timestruc_t st_atim;
 timestruc_t st_mtim;
 timestruc_t st_ctim;
 long st_blksize;
 long long st_blocks;
 char st_fstype[16];
 long st_pad4[8];
};
int _fxstat(const int, int, struct stat *);
int _xstat(const int, const char *, struct stat *);
int _lxstat(const int, const char *, struct stat *);
int _xmknod(const int, const char *, mode_t, dev_t);
int fchmod(int, mode_t);
extern int chmod(const char *, mode_t);
extern int mkdir(const char *, mode_t);
extern int mkfifo(const char *, mode_t);
extern mode_t umask(mode_t);
int fstat(int, struct stat *);
int stat(const char *, struct stat *);
int lstat(const char *, struct stat *);
int mknod(const char *, mode_t, dev_t);
int fstat64(int, struct stat64 *);
int lstat64(const char *, struct stat64 *);
int stat64(const char *, struct stat64 *);
// #ident "$Revision: 3.37 $"
typedef struct flock {
 short l_type;
 short l_whence;
 off_t l_start;
 off_t l_len;
        long l_sysid;
        pid_t l_pid;
 long pad[4];
} flock_t;
typedef struct flock64 {
 short l_type;
 short l_whence;
 off64_t l_start;
 off64_t l_len;
        long l_sysid;
        pid_t l_pid;
 long pad[4];
} flock64_t;
struct dioattr {
 unsigned d_mem;
 unsigned d_miniosz;
 unsigned d_maxiosz;
};
struct fsxattr {
 unsigned long fsx_xflags;
 unsigned long fsx_extsize;
 unsigned long fsx_nextents;
 uuid_t fsx_uuid;
};
struct getbmap {
 __int64_t bmv_offset;
 __int64_t bmv_block;
 __int64_t bmv_length;
 __int32_t bmv_count;
 __int32_t bmv_entries;
};
typedef struct {
    int capacity;
    int length;
    char** entries;
} list;

#define NULL (void*)0


#define	_U	01	/* Upper case */
#define	_L	02	/* Lower case */
#define	_N	04	/* Numeral (digit) */
#define	_S	010	/* Spacing character */
#define	_P	020	/* Punctuation */
#define	_C	040	/* Control character */
#define	_B	0100	/* Blank */
#define	_X	0200	/* heXadecimal digit */


#define	isalpha(c)	((__ctype + 1)[c] & (_U | _L))
#define	isupper(c)	((__ctype + 1)[c] & _U)
#define	islower(c)	((__ctype + 1)[c] & _L)
#define	isdigit(c)	((__ctype + 1)[c] & _N)
#define	isxdigit(c)	((__ctype + 1)[c] & _X)
#define	isalnum(c)	((__ctype + 1)[c] & (_U | _L | _N))
#define	isspace(c)	((__ctype + 1)[c] & _S)
#define	ispunct(c)	((__ctype + 1)[c] & _P)
#define	isprint(c)	((__ctype + 1)[c] & (_P | _U | _L | _N | _B))
#define	isgraph(c)	((__ctype + 1)[c] & (_P | _U | _L | _N))
#define	iscntrl(c)	((__ctype + 1)[c] & _C)

#define stderr &__iob[2]



#define	isascii(c)	(!((c) & ~0177))
#define	_toupper(c)     ((__ctype + 258)[c])
#define	_tolower(c)	((__ctype + 258)[c])
#define	toascii(c)	((c) & 0177)


#define tolower(x) ((isupper(x)) ? _tolower(x) : (x))

#define EX_OK		020	/* Test for Regular, executable file */



#define IOCPARM_MASK    0x1fff          /* parameter length, at most 13 bits */
#define IOCPARM_LEN(x)  (((x) >> 16) & IOCPARM_MASK)
#define IOCBASECMD(x)   ((x) & ~(IOCPARM_MASK << 16))
#define IOCGROUP(x)     (((x) >> 8) & 0xff)

#define IOCPARM_MAX     (IOCPARM_MASK + 1)      /* max size of ioctl args */
/* no parameters */
#define IOC_VOID        (__uint32_t)0x20000000
/* copy parameters out */
#define IOC_OUT         (__uint32_t)0x40000000
/* copy parameters in */
#define IOC_IN          (__uint32_t)0x80000000
/* copy parameters in and out */
#define IOC_INOUT       (IOC_IN|IOC_OUT)
/* mask for IN/OUT/VOID */
#define IOC_DIRMASK     (__uint32_t)0xe0000000

#define _IOC(inout, group, num, len) \
	(inout | ((len & IOCPARM_MASK) << 16) | ((group) << 8) | (num))
#define _IO(g, n)        _IOC(IOC_VOID,	(g), (n), 0)
#define _IOR(g, n, t)     _IOC(IOC_OUT,	(g), (n), sizeof(t))
#define _IOW(g, n, t)     _IOC(IOC_IN,	(g), (n), sizeof(t))
/* this should be _IORW, but stdio got there first */
#define _IOWR(g, n, t)    _IOC(IOC_INOUT,	(g), (n), sizeof(t))

#define	TIOCGPGRP	_IOR('t', 119, int)	/* get pgrp of tty */





char* strchr(const char*, int);
void handler(void);


int execCommand(unsigned char* s);

typedef unsigned long	Elf32_Addr;
typedef unsigned short	Elf32_Half;
typedef unsigned long	Elf32_Off;
typedef long		Elf32_Sword;
typedef unsigned long	Elf32_Word;

typedef struct Elf Elf;

typedef struct {
	unsigned char	e_ident[16];	/* ident bytes */
	Elf32_Half	e_type;			/* file type */
	Elf32_Half	e_machine;		/* target machine */
	Elf32_Word	e_version;		/* file version */
	Elf32_Addr	e_entry;		/* start address */
	Elf32_Off	e_phoff;		/* phdr file offset */
	Elf32_Off	e_shoff;		/* shdr file offset */
	Elf32_Word	e_flags;		/* file flags */
	Elf32_Half	e_ehsize;		/* sizeof ehdr */
	Elf32_Half	e_phentsize;		/* sizeof phdr */
	Elf32_Half	e_phnum;		/* number phdrs */
	Elf32_Half	e_shentsize;		/* sizeof shdr */
	Elf32_Half	e_shnum;		/* number shdrs */
	Elf32_Half	e_shstrndx;		/* shdr string index */
} Elf32_Ehdr;


typedef struct {
	Elf32_Word	sh_name;	/* section name */
	Elf32_Word	sh_type;	/* SHT_... */
	Elf32_Word	sh_flags;	/* SHF_... */
	Elf32_Addr	sh_addr;	/* virtual address */
	Elf32_Off	sh_offset;	/* file offset */
	Elf32_Word	sh_size;	/* section size */
	Elf32_Word	sh_link;	/* misc info */
	Elf32_Word	sh_info;	/* misc info */
	Elf32_Word	sh_addralign;	/* memory alignment */
	Elf32_Word	sh_entsize;	/* entry size if table */
} Elf32_Shdr;

unsigned	elf_version	(unsigned);

typedef struct Path_s {
    /* 0x0 */ struct Path_s* next;
    /* 0x4 */ unsigned char* name;
    /* 0x8 */ unsigned int textSize;
    /* 0xC */ unsigned int dataSize;
    /* 0x10 */ unsigned int sdataSize;
    /* 0x14 */ unsigned int sbssSize;
    /* 0x18 */ unsigned int bssSize;
    /* 0x1C */ unsigned int textAlign;
    /* 0x20 */ unsigned int dataAlign;
    /* 0x24 */ unsigned int sdataAlign;
    /* 0x28 */ unsigned int sbssAlign;
    /* 0x2C */ unsigned int bssAlign;
    /* 0x30 */ unsigned int textStart;
    /* 0x34 */ unsigned int dataStart;
    /* 0x38 */ unsigned int sdataStart;
    /* 0x3C */ unsigned int sbssStart;
    /* 0x40 */ unsigned int bssStart;
    /* 0x44 */ unsigned int sectionsExisting;
} Path;

typedef struct Segment_s {
    /* 0x0 */ struct Segment_s* next;
    /* 0x4 */ unsigned char* name;
    /* 0x8 */ Path* pathList;
    /* 0xC */ int unk0C;
    /* 0x10 */ unsigned int address;
    /* 0x14 */ int addrFunc;
    /* 0x18 */ struct Segment_s* afterSeg1;
    /* 0x1C */ struct Segment_s* afterSeg2;
    /* 0x20 */ unsigned int align;
    /* 0x24 */ unsigned int romOffset;
    /* 0x28 */ int flags;
    /* 0x2C */ unsigned int textSize;
    /* 0x30 */ unsigned int dataSize;
    /* 0x34 */ unsigned int sdataSize;
    /* 0x38 */ unsigned int sbssSize;
    /* 0x3C */ unsigned int bssSize;
    /* 0x40 */ unsigned int totalSize;
    /* 0x44 */ unsigned int maxSize;
    /* 0x48 */ int romalign;
    /* 0x4C */ unsigned int textAlign;
    /* 0x50 */ unsigned int dataAlign;
    /* 0x54 */ unsigned int sdataAlign;
    /* 0x58 */ unsigned int sbssAlign;
    /* 0x5C */ unsigned int bssAlign;
    /* 0x60 */ unsigned int sectionsExisting;
    /* 0x64 */ unsigned int textStart;
    /* 0x68 */ unsigned int dataStart;
    /* 0x6C */ unsigned int sdataStart;
    /* 0x70 */ unsigned int sbssStart;
    /* 0x74 */ unsigned int bssStart;
} Segment;

typedef struct SegmentChain_s {
    /* 0x0 */ struct SegmentChain_s* next;
    /* 0x4 */ Segment* segment;
} SegmentChain;

typedef struct Wave_s {
    /* 0x0 */ struct Wave_s* next;
    /* 0x4 */ unsigned char* name;
    /* 0x8 */ SegmentChain* segmentChain;
    /* 0xC */ Elf* elf;
    /* 0x10 */ Elf32_Ehdr* ehdr;
    /* 0x14 */ unsigned char elspecFile[255];
    /* 0x114 */ int fd;
    /* 0x118 */ size_t searchIndex;
} Wave;


static char B_1000B540[0x100];
static char B_1000B640[0x100];
static char B_1000B740[0x100];
static char B_1000B840[0x100];
static char B_1000B940[0x100];
extern int debug;
extern Wave* waveList;

#define _W_INT(w)	(*(int *)&(w))  /* convert union wait to int */

#define WSTOPFLG                0177
#define WCONTFLG                0177777
#define WCOREFLAG               0200
#define WSIGMASK                0177

#define WWORD(stat)             (_W_INT(stat)&0177777)
#define WIFCONTINUED(stat)	(WWORD(stat)==WCONTFLG)
#define WCOREDUMP(stat)		(_W_INT(stat) & WCOREFLAG)

#define	WUNTRACED	0004	 /* for POSIX */

#define WIFEXITED(stat)         ((_W_INT(stat)&0377)==0)
#define WIFSIGNALED(stat)       ((_W_INT(stat)&0377)>0&&((_W_INT(stat)>>8)&0377)==0)
#define WIFSTOPPED(stat)        ((_W_INT(stat)&0377)==_WSTOPPED&&((_W_INT(stat)>>8)&0377)!=0)

#define WEXITSTATUS(stat)	((_W_INT(stat)>>8)&0377)
#define WTERMSIG(stat)		(_W_INT(stat)&0177)
#define WSTOPSIG(stat)		((_W_INT(stat)>>8)&0377)


typedef struct Elf_Scn	Elf_Scn;
typedef enum {
	ELF_C_NULL = 0,	/* must be first, 0 */
	ELF_C_READ,
	ELF_C_WRITE,
	ELF_C_CLR,
	ELF_C_SET,
	ELF_C_FDDONE,
	ELF_C_FDREAD,
	ELF_C_RDWR,
	ELF_C_NUM	/* must be last */
} Elf_Cmd;

typedef enum {
	ELF_K_NONE = 0,	/* must be first, 0 */
	ELF_K_AR,
	ELF_K_COFF,
	ELF_K_ELF,
	ELF_K_NUM	/* must be last */
} Elf_Kind;

Elf_Scn		*elf_getscn	(Elf *elf, size_t);
Elf_Scn		*_elf_getscn	(Elf *elf, size_t);
Elf32_Shdr	*elf32_getshdr	(Elf_Scn *);
Elf32_Ehdr	*elf32_getehdr	(Elf *);

Elf		*elf_begin	(int, Elf_Cmd, Elf *);
Elf_Kind	elf_kind	(Elf *);
char		*elf_strptr	(Elf *, size_t, size_t);
int strcmp(const char*, const char*);



int system(const char*);
extern int keep_going;


int readCoff(unsigned char* fname, unsigned int* buf);
int open(const char *, int, ...);


static char B_1000B540[0x100]; // segmentSymbolSource
static char B_1000B640[0x100]; // segmentSymbolObject
static char B_1000B740[0x100]; // entrySource
static char B_1000B840[0x100]; // entryObject
static char B_1000B940[0x100]; // objectListFile

static char* B_1000BA40; // progName

extern int debug;
extern int keep_going;
extern Wave* waveList;
extern size_t* bootBuf;
extern int bootWordAlignedByteSize;
extern size_t* pif2bootBuf;
extern int pif2bootWordAlignedByteSize;
extern char* headerBuf;
extern int headerWordAlignedByteSize;
extern void* fontBuf;
extern size_t fontdataWordAlignedByteSize;



//int main(int argc, unsigned char** argv);
int execCommand(unsigned char* s);

int createElspec(Wave* wave);
int runLinker(Wave* wave, char* symbolFile, char* objListFile);

static char* B_1000BA80; // romImage
extern Segment* segmentList;

int scanSegments();
//{
//    Segment* s;
//    unsigned int offset;
//    int rom_size;
//}

static int sizeObject(Segment* s);
//{
//    unsigned int address1;
//    unsigned int address2;
//    int fd;
//    Elf* elf;
//    Elf_Scn* scn;
//    Elf32_Ehdr* ehdr;
//    Elf32_Shdr* shdr;
//    Path* p;
//    size_t index;
//    unsigned char* sectName;
//    int currAddress;
//    int firstSection;
//}

// static int sizeRaw(Segment* s) {}
//{
//    unsigned int address1;
//    unsigned int address2;
//    unsigned int currAddress;
//    int fd;
//    Path* p;
//    stat statBuffer;
//}

int checkSizes();
//{
//    Segment* s;
//    int sizeViolation;
//}

int checkOverlaps();
//{
//    Wave* w;
//    SegmentChain* sc;
//    SegmentChain* tc;
//    Segment* s;
//    Segment* t;
//    int isOverlap;
//}

int createSegmentSymbols(unsigned char* source, unsigned char* object);
//{
//    FILE* f;
//    Segment* s;
//    unsigned char* cmd;
//}

int createRomImage(unsigned char* romFile, unsigned char* object);
//{
//    FILE* f;
//    Segment* s;
//    ptrdiff_t bootStack;
//    unsigned char* sectName;
//    size_t romSize;
//    int fd;
//    Elf* elf;
//    Elf32_Ehdr* ehdr;
//    Elf_Scn* scn;
//    Elf32_Shdr* shdr;
//    int index;
//    int end;
//    int i;
//    unsigned char* fillbuffer;
//    {
//        int tmp_clock;
//    }
//}

int openAouts();
//{
//    Wave* wave;
//    unsigned char gcordFileBuf[256];
//}

void* lookupSymbol(Wave* wave, unsigned char* name);
//{
//    Elf_Scn* scn;
//    Elf32_Shdr* shdr;
//    Elf_Data* data;
//    Elf32_Sym* sym;
//    size_t index;
//    int i;
//    int count;
//}

Elf32_Shdr* lookupShdr(Wave* wave, unsigned char* segSectName);
//{
//    Elf_Scn* scn;
//    Elf32_Shdr* shdr;
//    size_t index;
//    unsigned char* sectName;
//}

int readObject(Segment* s);
//{
//    unsigned char* segSectName;
//    Elf32_Shdr* shdr;
//}

int readRaw(Segment* s);
//{
//    Path* p;
//    int fd;
//    unsigned int offset;
//    off_t fileSize;
//    off_t totalSize;
//    stat statBuffer;
//}

int createEntryFile(unsigned char* source, unsigned char* object);
//{
//    Segment* s;
//    FILE* f;
//    unsigned char* cmd;
//    unsigned char* segSectName;
//    void* BssStart;
//    Wave* wave;
//    void* bootEntry;
//    void* bootStack;
//    unsigned char romsymbol[14];
//}

unsigned int ALIGNn(unsigned int romalign, int n);
//{
//}
