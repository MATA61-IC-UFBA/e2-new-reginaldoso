/* recognize tokens for the calculator */

%option noyywrap nodefault yylineno
%{
#include "token.h"
%}

%%

[0-9]+		{return NUMBER;}
"+"		{return PLUS;}
"-"		{return MINUS;}
"*"		{return TIMES;}
"/"		{return DIV;}
\n		{return EOL;}
[ \t]		{/* ignora espaço em branco */}
.		{return ERROR;}
%%


int main(){

	int tok = 0;
	int parada = -1;
 	
 	while(tok > parada){
 	
 	tok = yylex();
 	
 	if(tok == NUMBER){
 	printf("constante decimal: %s\n", yytext);
 	}
 	
 	else if(tok == PLUS){
 	printf("código do token: %d\n", PLUS);
 	}
 	
 	else if(tok == MINUS){
 	printf("código do token: %d\n", MINUS);
 	}
 	
 	else if(tok == TIMES){
 	printf("código do token: %d\n", TIMES);
 	}
 	
 	else if(tok == DIV){
 	printf("código do token: %d\n", DIV);
 	}
 	
 	else if(tok == ERROR){
 	printf("código do token: %d\n", ERROR);
 	}
 	
 	else if(tok == EOL){
 	printf("código do token: %d\n", EOL);
 	tok = -1;
 	} 	
 	
 	
 	}
 	
 	
}


