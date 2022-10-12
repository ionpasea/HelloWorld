
/*------------------------------------------------------------------------
    File        : helloworld.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : ionpa
    Created     : Sun Oct 09 10:17:34 EDT 2022
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
DEFINE VARIABLE iii AS INTEGER.
DEFINE VARIABLE ciii AS CHARACTER.

define new shared temp-table ttt
    field abc as character.
MESSAGE "Hello World"
VIEW-AS ALERT-BOX.