public with sharing class Controlador {
    public Controlador() {
        
    }
   @AuraEnabled
    public static Object[] callWithParam(Object[] coche){
       System.debug(coche);
       
        return coche; 
    }
    
   
}
