 
 /*------------------------------------------------------------------------
    File        : SonarRulesClass
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : ionpa
    Created     : Sun Oct 16 21:06:08 EDT 2022
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS SonarRulesClass ABSTRACT: 
METHOD PUBLIC ABSTRACT VOID mthd1():  // Ending with colon is OK for the compiler
METHOD PUBLIC ABSTRACT VOID mthd2().
END CLASS.