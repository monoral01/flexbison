#include <stdio.h>
#include <string.h>
#include "test.tab.h"
int yyerror(char *s)
{
    printf("%s on line\n", s);
    return 0;
}

int main()
{
    while (1)
    {
        yyparse();
    }
    return 0;
}