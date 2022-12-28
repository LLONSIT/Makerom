void	error(char *);
void	diff3(GLdouble [3], GLdouble [3], GLdouble [3]);
void	add3(GLdouble [3], GLdouble [3], GLdouble [3]);
void	scalarmult(GLdouble, GLdouble [3], GLdouble [3]);
GLdouble	dot3(GLdouble [3], GLdouble [3]);
GLdouble	length3(GLdouble [3]);
GLdouble	dist3(GLdouble [3], GLdouble [3]);
void	copy3(GLdouble [3], GLdouble [3]);
void	crossprod(GLdouble [3], GLdouble [3], GLdouble [3]);
void	normalize(GLdouble [3]);
void	print3(GLdouble [3]);
void	printmat3(GLdouble [3][3]);
void	identifymat3(GLdouble [3][3]);
void	copymat3(GLdouble *, GLdouble *);
void	xformvec3(GLdouble [3], GLdouble [3][3], GLdouble [3]);

void m_resetmatrixstack();
void m_xformpt(GLdouble [3], GLdouble [3], GLdouble [3], GLdouble [3]);
void m_xformptonly(GLdouble [3], GLdouble [3]);
void m_pushmatrix();
void m_popmatrix();
void m_shear(GLdouble, GLdouble, GLdouble);
void m_translate(GLdouble, GLdouble, GLdouble);
void m_scale(GLdouble, GLdouble, GLdouble);
void m_rotate(GLdouble, char);


