public with sharing class TopicController {
    public TopicController(ApexPages.StandardController controller) {
        
    }

    public Pagereference goToList(){
        PageReference pr=Page.ListTopic;
        return pr;
    }

      public Pagereference goToAddress(){
        PageReference pr=Page.AddAdress;
        return pr;
    }
}
