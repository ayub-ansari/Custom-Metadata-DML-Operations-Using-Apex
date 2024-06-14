public class CustomMetadataServiceExample {
    
    //CustomMetadataServiceExample.createMetadataExample();
    public static void createMetadataExample(){
        //Create Records
        List<TriggerControl__mdt> MetadataList = new List<TriggerControl__mdt>();
        
        MetadataList.add(new TriggerControl__mdt(MasterLabel='Account', DeveloperName = 'Account', Trigger_Name__c= 'AccountTrigger', Deactivate__c = true));
        
        String jobId = CustomMetadataService.upsertMetadata(MetadataList);
    }
    public static void updateMetadataExample(){
        //Update records
        List<TriggerControl__mdt> MetadataList1 = [SELECT MasterLabel, DeveloperName,Trigger_Name__c FROM TriggerControl__mdt WHERE Trigger_Name__c = 'AccountTrigger']; 
        MetadataList1[0].Deactivate__c = false;
        String jobId2 = CustomMetadataService.upsertMetadata(MetadataList1);
    }

}
