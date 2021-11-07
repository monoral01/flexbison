/*BISON CODE*/
%{
#include <stdio.h>
#include "lex.yy.c"
int yylex();
int yyerror(char *s);

%}

%token STRING NUM OTHER SEMICOLON

%type <name> STRING
%type <number> NUM

%union{
	  char name[20];
    int number;
}

%%

prog:
  stmts
;

stmts:
		| stmt SEMICOLON stmts

stmt:
		STRING {
				printf("Вы ввели строку: %s", $1);
		}
		| NUM {
				printf("Вы ввели число: %d", $1);
		}
		| OTHER
;

%%
