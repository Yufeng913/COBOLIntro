       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION. 
PROGRAM-ID. cobolintro.
AUTHOR. YuFeng Yao.
DATE-WRITTEN.April 30th, 2022
ENVIRONMENT DIVISION. *> one of the big divisions

*> COBOL is not a type language.
*> Letter case matters

DATA DIVISION. *> used to define the variables used in a program.
FILE SECTION.
WORKING-STORAGE SECTION.
01 UserName PIC X(30) VALUE "You". *> "PIC is used declaring a variable, X(30) means that maximum 30 digits? and X means that basically anything you can type on your keyboard
01 Num1 PIC 9 VALUE ZEROS. 
01 Num2 PIC 9 VALUE ZEROS.
01 Total PIC 99 VALUE 0.
01 SSNum.
       02 SSArea PIC 999.
       02 SSGroup PIC 99.
       02 SSSerial PIC 9999.
01 PIValue CONSTANT AS 3.14. *> How to define a constant

*> These are figurative constants

*> ZERO, ZEROES (represent figurative constant of 0)
*> SPACE SPACES (self-explanatory)
*> HIGH-VALUE or HIGH-VALUES (figureative constant of the largest value within)
*> LOW-VALUE or LOW-VALUES (same but for the smallest value)

*>----------------------------------------------------------------

PROCEDURE DIVISION. *> one of the big divisions
DISPLAY "What is your name? " WITH NO ADVANCING *>  "with no advancing" does not indent the line
ACCEPT UserName
DISPLAY "Hello " UserName *> Self explanatory here

MOVE ZERO TO UserName
DISPLAY UserName
DISPLAY "Enter 2 values to sum"
    ACCEPT Num1
    ACCEPT Num2
    COMPUTE Total = Num1 + Num2 
    DISPLAY Num1 " + " Num2 " = " Total
    display "Enter your area code"
    accept SSNum
    display "Area " SSArea

STOP RUN. *> Every COBOL program ends with STOP RUN.

