({
    calculateValues: function (component, event, helper) {
        // get firstnumber
        let fValue = component.find("fnumber").get("v.value");
        if (fValue == undefined || fValue == null || fValue == '') {
            fValue = 0;
        }
        // get second Number 
        let sValue = component.find("sNumber").get("v.value");
        // caluclate 
        let tValue = Number(fValue) + Number(sValue);
        // set Total number 
        component.find("tNumber").set("v.value", tValue);

        let params = event.getParam("arguments");
        if(params){
            let ht = params.headTitle;
            alert("Params : "+ht);
        }
    }
})