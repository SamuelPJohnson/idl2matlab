/******************************************************************************
*                                IDL2MATLAB Project
*-----------------------------------------------------------------------------
*   ILL (Institut Laue Langevin)
*
*   38000 GRENOBLE Cedex
*-----------------------------------------------------------------------------
*   Module              :       Abstract Tree
*   Auteurs             :       Gardon Lucien
*                               Sylvestre Nadege
*   Date creation       :       11 / 11 / 2001
*   Modification        :     	23 / 05 / 2002
*
*****************************************************************************/

#ifndef TYPE_H
 #define TYPE_H

/* Old version - NE PAS MODIFIER LA TAILLE = 10 */
#define I2M_VERSION "V1.0.     "

/* Current version - NE PAS MODIFIER LA TAILLE = 10 */
#define I2M_VERSION_2 "V2.0.     "

/* Booleen scilab : true */
/* #define %T 1 */

/* Booleen scilab : false */
/* #define %F 0 */

/* OS cible */
#define OS_UNIX
/*#define OS_WINDOWS*/

#ifdef OS_UNIX
  #define PATHSEP '/'
#endif
#ifdef OS_WINDOWS
  #define PATHSEP '\\'
#endif


/******************************************************/
/* Definition des principaux types de base du systeme */
/******************************************************/

/* valeur d'un node */
/* Un node peut contenir plusieurs types de valeurs */
typedef union {
    char uString[256];	/* si idf */
    int uInt;			/* si denotation entiere */
    char uReal[256];   		/* si denotation reelle */
} leaf ;

/* type Node - Brique de base de l'arbre abstrait */
typedef struct Node {
  int typeNode ; 		/* le type du noeud */
  int lineInSource;		/* numero de ligne dans le fichier source */
  leaf valNode ;		/* sa valeur */
  struct Node *fg;		/* acces fils droit */
  struct Node *fd;		/* acces fils gauche */
} Node ;

typedef Node *PNode;		/* Pointeur sur un noeud */

typedef struct Comment {
  int lineInSource;		/* numero de ligne dans le fichier source */
  char *commentString;		/* commentaire */
  struct Comment *nextComment;	/* acces suivant */
} Comment ;


/************************************************************/
/* Definition des principales variables globales du systeme */
/************************************************************/

Node *root;			/* racine de l arbre abstrait */
Comment *commentTable; 	      	/* table contenant les caracteres */
Comment *lastComment; 	      	/* dernierCommentaire de la table */
int translationError;		/* indicateur d erreur pendant la traduction */
int fileTranslationError;	/* indicateur d erreur dans un fichier */
int numCurrentLine;		/* compteur de ligne courante dans le fichier cible */
int nbGeneratedFile;		/* nb de fichiers generes */
int nbWarningFile;		/* nombre de warning pour un fichier */
int nbWarning;			/* nombre total de warning */
int nbLinesTotal; /* nombre total de lignes */

int scriptFileTranslation;	/* type de fichier a traduire */
      	      	      	      	/* vaut 1 si la source est un script 0 sinon */
int displayMessage;    	      	/* affichage des messages si = 1 sinon 0 */
int writeWarning;     	      	/* ecrit les warning dans le fichier log si = 1 */
int writeAbstractTree;	      	/* affiche l'arbre abstrait si = 1 */
int stringTranslation; 	      	/* vaut 1 en cas de traduction de chaine de car*/
int oneFunctionTranslation;   	/* pour traduire 1 seule fonction */
int inScilabTranslation;      	/* pour traduire en Scilab */
int tabVal;   	      	      	/* nb d'espace pour l'indentation */
char* commentaire;				/* caractere du commentaire */

#endif
