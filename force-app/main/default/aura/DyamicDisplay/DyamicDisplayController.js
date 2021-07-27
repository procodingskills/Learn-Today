({
    displayComponent : function(component, event, helper) {
        let displayComponentName = "c:"+component.find("cName").get("v.value");
        let oldCmp = component.find(component.find("cName").get("v.value"));
        if(oldCmp){
            alert("Component is already loaded");
            return;
        }
        $A.createComponent(displayComponentName ,
             {
                 // Set Aura Id for the component
                 "aura:id": component.find("cName").get("v.value"),
                 "firstName" : component.getReference("v.firstName")
             } , 
             function(newComponent , status , errorMessage){
                if(status === "SUCCESS"){
                    let body = component.get("v.body");
                    body.push(newComponent);
                    component.set("v.body",body);
                }
                else{
                    alert("ERROR : "+JSON.stringify(errorMessage));
                }
             });
    },
    resetDisplay : function(component, event, helper){
        let displayComponentName = component.find("cName").get("v.value");
        let displayComponent = component.find(displayComponentName);
        if(displayComponent){
            displayComponent.destroy();
        }
    }
    /*
    $A.createComponent(displayComponentWithNameSpace , setAttributes , function( newComponent , status , errorMessage ) {
        if(status === "SUCCESS"){
            // push your new component to v.body or to a particular div
        }
    } );
    
    */
})