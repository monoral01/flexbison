/* FLEX CODE */
%{

#include <stdio.h>
#include <string.h>
#include "test.tab.h" 
void showError();
%}

/* определение наборов символов через regexp */
numbers     ([0-9])+
alpha       ([a-zA-Z])+

%%

{alpha}			   {sscanf(yytext, "%s", yylval.name); return (STRING);}
{numbers}      {yylval.number = atoi(yytext); return (NUM);}
";"      		   {return (SEMICOLON);}
.      		     {showError(); return(OTHER);}

%%

/* методы */
void showError(){
    printf("Not a string or number");
}
