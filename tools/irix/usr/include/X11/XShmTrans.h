#ifndef _XSHMTRANS_H_
#define _XSHMTRANS_H_

#include <ulocks.h>

#define SGI_SHM_FILENAME "/usr/tmp/.Xshmtrans"

typedef struct _connhdr {
    ulock_t clientlock;			/* spinlock to single thread startup */
    usema_t *syncsema;			/* semaphore for synchronization */
    usema_t *syncsema2;			/* semaphore for synchronization */
    unsigned char *arenahdr;		/* used for passing per/client arena */
} connhdr_t;

typedef struct _arenahdr {
    unsigned char *shmbuf;		/* start of buffer */
    unsigned char *shmbufend;		/* end of buffer */

    volatile int fullflag;		/* buffer is full flag */
    volatile int emptyflag;		/* buffer is empty flag */

    usema_t *fullsema;			/* semaphore for full flag */
    usema_t *emptysema;			/* semaphore for empty flag */

    ulock_t headlock;			/* spinlock to protect head ptr */
    ulock_t taillock;			/* spinlock to protect tail ptr */

    volatile unsigned char *headptr;	/* head of valid data */
    volatile unsigned char *tailptr;	/* tail of valid data */
} arenahdr_t;

typedef struct _shmdata {
    usptr_t *arena;			/* shared arena */
    arenahdr_t *arenahdr;		/* shared data structures */
    connhdr_t *connhdr;			/* server connection header */
    unsigned char *curreqptr;		/* pointer to start of current req. */
    unsigned char *reqendptr;		/* pointer to end of current request */
    unsigned char *halfptr;		/* pointer to end of current request */
    int pid;
} shmdata_t;


/* do n bytes fit in buffer?? */
#define SHM_BYTES_FIT( head, tail, endofbuf, n) \
	( ( (tail) <= (head) ) ? \
		( ( (head) + (n) ) < (endofbuf) ) : \
		( ( (head) + (n) ) < (tail) ) )

#define _XShmAlloc( ret, type, my_shmptr, my_dpy, nbytes ) \
{ \
	arenahdr_t *my_arenahdr = (my_shmptr)->arenahdr; \
	unsigned char *my_tailptr = (unsigned char *)my_arenahdr->tailptr; \
	if ( (my_dpy)->bufptr != (my_dpy)->buffer ) \
		_XShmCompatBufCopy(my_dpy); \
	if ( SHM_BYTES_FIT( (my_shmptr)->reqendptr, my_tailptr, \
				my_arenahdr->shmbufend, (nbytes) ) ) \
	{ \
/* printf("_XShmAlloc:n = %d, ret = 0x%x, tail = 0x%x\n", nbytes, (my_shmptr)->reqendptr, my_tailptr); */ \
		(ret) = (type)((my_shmptr)->reqendptr); \
		(my_shmptr)->reqendptr += nbytes; \
	} else { \
		(ret) = (type) _XShmRealAlloc( (my_dpy), (nbytes) ); \
	} \
}

extern void _XShmFastBcopy(volatile int *, volatile int *, int);
extern unsigned char *_XShmRealAlloc(struct _XDisplay *, unsigned long);
extern void _XShmFlush(struct _XDisplay *, int);
extern void _XShmWaitForNotFull(struct _XDisplay *, unsigned char *);
extern void _XShmCompatBufCopy(struct _XDisplay *);
extern void _XShmEndBuf(struct _XDisplay *, unsigned char *);
extern void _XShmSendData(struct _XDisplay *, unsigned char *, unsigned long);

#endif /* _XSHMTRANS_H_ */
