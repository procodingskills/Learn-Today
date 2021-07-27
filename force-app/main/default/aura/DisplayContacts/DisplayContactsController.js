/**
 * @description       : 
 * @author            : admin@lakshmideepak.com
 * @group             : 
 * @last modified on  : 07-12-2021
 * @last modified by  : admin@lakshmideepak.com
 * Modifications Log 
 * Ver   Date         Author                    Modification
 * 1.0   07-12-2021   admin@lakshmideepak.com   Initial Version
**/
({
    getContacts : function(component, event, helper) {
        let account = event.getParam("accountId");
         // Call Apex Method FROM THE LITNG Controller.js
         const action = component.get("c.getAccountContacts");
         action.setParams({
            parentId : account
         });
         action.setCallback( this , function(response){
            const state = response.getState();
            if(state === "SUCCESS"){
                component.set("v.contacts",response.getReturnValue());
            }
            else{
                alert("its error");
            }
         });
         $A.enqueueAction(action);;
    }
})