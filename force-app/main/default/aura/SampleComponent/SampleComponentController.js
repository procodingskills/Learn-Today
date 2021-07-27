({
    fireEvent : function(component, event, helper) {
        let appE = $A.get("e.c:appEvent");
        appE.fire();
        alert("event Fired");
    },
    addEventHandler : function(component , event , helper){
        component.addEventHandler("c:appEvent",component.getReference("c.handlerEvent"));
        alert("Event handler has been Added");
    },
    handlerEvent : function(component , event , helper){
        alert("EVENT HANDLER");
    },
    /*Dynamic Component event handler*/
    fireEventCom : function(cmp, evt , hlp){
       let ce = cmp.getEvent("cevent"); 
        ce.fire();
        alert("event fired");
    },
    addEventHandlerC : function(cm,ev,hlp){
        cm.addEventHandler("cevent",cm.getReference("c.handlerCEvent"));
        alert("C Handler Added");
    },
    handlerCEvent : function(cm,ev,hlp){
        alert("Event handler of Component");
    }
})