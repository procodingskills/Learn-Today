/**
 * @description       : 
 * @author            : i.lakshmideepak@gmail.com
 * @group             : 
 * @last modified on  : 06-07-2021
 * @last modified by  : i.lakshmideepak@gmail.com
 * Modifications Log 
 * Ver   Date         Author                      Modification
 * 1.0   06-06-2021   i.lakshmideepak@gmail.com   Initial Version
**/
public with sharing class RollUpSummary {
    public static void onInsertRollUp(Map<Id,Contact> newMap) {
        // Get Accounts Id from the Contact
        Set<Id> accountIds = new Set<Id>();
        for(Contact record : newMap.values()){
            if(record.AccountId != null ){
                accountIds.add(record.AccountId);
            }
        }
        // Invoke update method
        updateAccounts(accountIds);
    }

    public static void onAfterUpdate(Map<Id,Contact> newMap , Map<Id,Contact> oldMap){
        // Get Modified AccountIds from the Contact records
        Set<Id>  accountIds = new Set<Id>();
        for(Contact newCon : newMap.values()){
            Contact oldCon = oldMap.get(newCon.Id);
            if(newCon.AccountId != oldCon.AccountId){
                accountIds.add(newCon.AccountId);
                accountIds.add(oldCon.AccountId);
            }
        }
        // Invoke update method
        updateAccounts(accountIds);
    }

    private static void updateAccounts(Set<Id> accountIds){
        // get The Account with Contact information (Child to Parent SOQL)
        List<Account> accList = [Select Id , Total_Contacts__c , (SELECT Id FROM Contacts) FROM Account WHERE Id IN:accountIds];
        // Assign the Total count to Account fields
        for(Account acc : accList){
            acc.Total_Contacts__c = acc.Contacts.size();
        }
        // Update the Account
        if(accList.size() > 0 ){
            update accList;
        }
    }
}