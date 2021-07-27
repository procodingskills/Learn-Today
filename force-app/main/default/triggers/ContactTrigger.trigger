/**
 * @description       : 
 * @author            : i.lakshmideepak@gmail.com
 * @group             : 
 * @last modified on  : 06-18-2021
 * @last modified by  : i.lakshmideepak@gmail.com
 * Modifications Log 
 * Ver   Date         Author                      Modification
 * 1.0   06-01-2021   i.lakshmideepak@gmail.com   Initial Version
**/
trigger ContactTrigger on Contact (before insert , after insert , after update , after delete , after undelete) {
    if(Trigger.isBefore && Trigger.isInsert){
        ContactTriggerHandler.beforeInsert(Trigger.new);
    }
    else if(Trigger.isAfter && Trigger.isInsert){
        ContactTriggerHandler.afterInsert(Trigger.newMap);
    }
    else if(Trigger.isAfter && Trigger.isUpdate){
        ContactTriggerHandler.afterUpdate(Trigger.newMap, Trigger.oldMap);
    }
    else if(Trigger.isAfter && Trigger.isDelete){
        ContactTriggerHandler.afterDelete(Trigger.oldMap);
    }
    else if(Trigger.isAfter && Trigger.isUndelete){
        ContactTriggerHandler.afterUndelete(Trigger.newMap);
    }
}