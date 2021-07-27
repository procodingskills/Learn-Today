/**
 * @description       : 
 * @author            : i.lakshmideepak@gmail.com
 * @group             : 
 * @last modified on  : 06-18-2021
 * @last modified by  : i.lakshmideepak@gmail.com
 * Modifications Log 
 * Ver   Date         Author                      Modification
 * 1.0   06-18-2021   i.lakshmideepak@gmail.com   Initial Version
**/
trigger UserTrigger on User (After insert , After Update) {

    switch on Trigger.operationType {
        when  AFTER_INSERT {
            ContactUserSync.syncContact(Trigger.newMap, null);
        }
        when AFTER_UPDATE{
            ContactUserSync.syncContact(Trigger.newMap, Trigger.oldMap);
        }
        
    }

}