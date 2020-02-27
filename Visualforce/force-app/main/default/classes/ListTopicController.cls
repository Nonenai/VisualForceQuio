public with sharing class ListTopicController {

        public ApexPages.StandardSetController setTopics {
            get {
                if(setTopics == null) {
                    setTopics = new ApexPages.StandardSetController(
                        Database.getQueryLocator(
                            [SELECT Name, Description FROM Topic]
                        )
                    );
                }
                return setTopics;
            }
            set;
        }
    
        // Initialize setCon and return a list of records
        public List<Topic> getTopics() {
            return (List<Topic>) setTopics.getRecords();
        }
    
        public Pagereference goToTopic(){
            PageReference pr=Page.AddTopic;
            return pr;
        }
    
          public Pagereference goToAddress(){
            PageReference pr=Page.AddAdress;
            return pr;
        }
    
}
