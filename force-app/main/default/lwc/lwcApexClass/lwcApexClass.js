import { LightningElement , wire } from 'lwc';
import propertyType from '@salesforce/apex/SObjectService.getPropertType';
export default class LwcApexClass extends LightningElement {
    /* Call apex Method as Wire Property */
    @wire(propertyType , { actionType : "WireProperty" }) 
    wirePropertyVariable;

    /* Call Apex Method as Wire Function */
    wireFunctionData;
    wireFuctionError;
    @wire(propertyType ,{actionType : "WireFunction" })
    processWireFunction(data , error){
        if(data){
           this.wireFunctionData = data.data
        }
        if(error){
            this.wireFuctionError = error.body.message;
        }
    }

    /* Imperative Calling of Apex Class */
    userData;
    userError;
    handleUser(event){
        let params = { actionType : "Imperative" };
        propertyType(params)
        .then(result => {
            this.userData = result;
        })
        .catch(error => {
            this.error = error;
        });
    }
}