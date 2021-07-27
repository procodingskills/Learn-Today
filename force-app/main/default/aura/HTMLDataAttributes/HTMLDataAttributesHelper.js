({
    dataSetupHlp : function(component , event , helper) {
        let dataJson = [];
        // Passing Standard JSON object to array
        dataJson.push({Name : "Lava",Phone : "9986973453" });
        dataJson.push({Name : "Lakshmi Deepak",Phone : "9986973450"});
        dataJson.push({Name : "Vamsi",Phone : "9986973451"});
        dataJson.push({Name : "Gowtham",Phone : "9986973452"});
        // Assign values to Attribute
        component.set("v.dataSetDetails",dataJson);
    }
})