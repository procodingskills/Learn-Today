/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-12-2021
 * @last modified by  : admin@lakshmideepak.com
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   07-05-2021   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public with sharing class HeaderCMP {
    
    @AuraEnabled
    public static List<Account> getAccounts(String accountName){
      String name = '%'+accountName+'%';
      List<Account> accList = [Select Id , Name , Phone , Description FROM Account WHERE Name LIKE : name ];
      return accList;
    }

    @AuraEnabled
    public static List<Contact> getAccountContacts(String parentId){
      return [Select Id , FirstName , LastName FROM Contact WHERE AccountId =: parentId];
    }
}