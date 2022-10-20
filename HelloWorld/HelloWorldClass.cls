 
 /*------------------------------------------------------------------------
    File        : HelloWorldClass
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : ionpa
    Created     : Tue Oct 11 15:40:21 EDT 2022
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS HelloWorldClass: 

method public integer calculateSum(i1 as integer, i2 as integer):
    return i1 + i2.
end.

END CLASS.