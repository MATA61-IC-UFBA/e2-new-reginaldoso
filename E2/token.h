/* token.h */

/*
Padrão { Ação }
*/

typedef enum {
        EOL=0,          // newline (final de linha)   
        NUMBER,      // 2
        PLUS,            // 3
        MINUS,         // 4
        TIMES,          // 5
        DIV,               // 6
        ERROR        // 7
} token_t; 
