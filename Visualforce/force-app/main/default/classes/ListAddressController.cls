public with sharing class ListAddressController {
    public ApexPages.StandardSetController setAddresses {
        get {
            if(setAddresses == null) {
                setAddresses = new ApexPages.StandardSetController(
                    Database.getQueryLocator(
                        [SELECT Name, AddressType, Country, Description FROM Address]
                    )
                );
            }
            return setAddresses;
        }
        set;
    }

    // Initialize setCon and return a list of records
    public List<Schema.Address> getAddresses() {
        return (List<Schema.Address>) setAddresses.getRecords();
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
