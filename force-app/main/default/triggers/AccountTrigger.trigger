/**
 * @description       : 
 * @author            : i.lakshmideepak@gmail.com
 * @group             : 
 * @last modified on  : 05-21-2021
 * @last modified by  : i.lakshmideepak@gmail.com
 * Modifications Log 
 * Ver   Date         Author                      Modification
 * 1.0   05-19-2021   i.lakshmideepak@gmail.com   Initial Version
**/

trigger AccountTrigger on Account (before insert , after insert , before update) {
    AccountTriggerHandler handler = new AccountTriggerHandler();
        // Before Insert 
        if(Trigger.isBefore && Trigger.isInsert){
            handler.beforeInsert(Trigger.new);
        }
    // After Insert 
        if(Trigger.isAfter && Trigger.isInsert){
            handler.afterInsert(Trigger.new, Trigger.newMap);
        }
    // Before Update
    if(Trigger.isBefore && Trigger.isUpdate){
        handler.beforeUpdate(Trigger.newMap , Trigger.oldMap);
    }

}