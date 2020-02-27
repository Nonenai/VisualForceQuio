public with sharing class AddressController {
    public AddressController(ApexPages.StandardController controller) {
        
    }

    public Pagereference goToList(){
        PageReference pr=Page.ListAdress;
        return pr;
    }

      public Pagereference goToTopic(){
        PageReference pr=Page.ListTopic;
        return pr;
    }
}
