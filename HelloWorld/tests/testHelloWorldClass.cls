 
 /*------------------------------------------------------------------------
    File        : testHelloWorldClass
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : ionpa
    Created     : Thu Oct 20 12:15:55 EDT 2022
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING OpenEdge.Core.Assert.

BLOCK-LEVEL ON ERROR UNDO, THROW.



CLASS testHelloWorldClass:
      
    
    /*------------------------------------------------------------------------------
            Purpose:                                                                        
            Notes:                                                                        
    ------------------------------------------------------------------------------*/
    @Test. 
    METHOD PUBLIC VOID testcalculateSum(  ):
        
        DEFINE VARIABLE hw AS CLASS HelloWorldClass NO-UNDO.
        
        DEFINE VARIABLE i AS INTEGER NO-UNDO.
        
        hw = new HelloWorldClass(). 

        assert:EQUALS (5, hw:calculateSum(2, 3)).

        RETURN.

    END METHOD.
    
END CLASS.