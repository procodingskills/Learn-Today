({
    callChildMethod : function(component, event, helper) {
        // get your child method 
        let childCmp = component.find("childcmpid");
        childCmp.doOperation("My Title" , "My Footer");
    }
})