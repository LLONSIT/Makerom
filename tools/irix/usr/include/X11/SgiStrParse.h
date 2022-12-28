#ifndef _SGISTRPARSE_H
#define _SGISTRPARSE_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

typedef struct {
	void		*indexes;
	unsigned short	index_type;
	unsigned short 	codesetHandle;
} _sgiEncData, *_sgiEncDataPtr;

int _sgiGetLocaleCodesets(char ***);
int _sgimbStrParse(char *, _sgiEncData *, int *, int *);
int _sgiwcStrParse(wchar_t *, _sgiEncData *, int *, int *);
char *_sgiCreateOneMbString(_sgiEncData *, int);

#define _SGISTR_SUCCESS		0
#define _SGISTR_NOLOCALE	-1
#define _SGISTR_BADSTATE	-2
#define _SGISTR_BADSTRING	-3
#define _SGISTR_NOROOM		-4
#define _SGISTR_ERROR		-100

#ifdef __cplusplus
}
#endif /* __cplusplus */
#endif /* ! _SGISTRPARSE_H */
