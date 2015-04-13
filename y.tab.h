#define DIESE2 257
#define IDENTIFIER 258
#define INTEGER 259
#define REAL 260
#define DECIMAL 261
#define HEXADECIMAL 262
#define OCTAL 263
#define STRING 264
#define End 265
#define Begin 266
#define If 267
#define Then 268
#define Of 269
#define Or 270
#define Case 271
#define And 272
#define LT 273
#define LE 274
#define GT 275
#define GE 276
#define EQ 277
#define NE 278
#define Pro 279
#define Not 280
#define SLASH 281
#define Mod 282
#define While 283
#define Repeat 284
#define For 285
#define Endrep 286
#define Endwhile 287
#define Endfor 288
#define Do 289
#define Until 290
#define Assign 291
#define Else 292
#define Endelse 293
#define Endif 294
#define Function 295
#define Common 296
#define Extra 297
#define Ref_Extra 298
#define Endcase 299
#define Return 300
#define DIESE 301
#define XOR 302
#define Catch 303
#define Forward_function 304
#define FLECHE 305
#define INHERITS 306
#define OBJECT 307
#define SOL_PARENT 308
#define SOL_TIMES 309
#define COMPILE_OPT 310
#define UUMINUS 311
#define UUPLUS 312
typedef union {
	PNode uNode;
	char uChar[256];
	int uInt;
	char uReal[256];
} YYSTYPE;
extern YYSTYPE yylval;
