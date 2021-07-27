/**
 * @description       : 
 * @author            : i.lakshmideepak@gmail.com
 * @group             : 
 * @last modified on  : 06-15-2021
 * @last modified by  : i.lakshmideepak@gmail.com
 * Modifications Log 
 * Ver   Date         Author                      Modification
 * 1.0   06-15-2021   i.lakshmideepak@gmail.com   Initial Version
**/
public with sharing class EventProcessBatch implements Database.Batchable<sObject>{
    public string query;
    public  Set<Id> eventIds;
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(query);
    }
    public void execute(Database.BatchableContext bc , List<sObject> scope){

    }
    public void finish(Database.BatchableContext bc){
        
    }
   
}