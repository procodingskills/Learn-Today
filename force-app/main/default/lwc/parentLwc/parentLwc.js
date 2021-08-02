import { LightningElement } from 'lwc';

export default class ParentLwc extends LightningElement {
    messageUpdated(event){
        let dataValue = event.target.value;
        this.template.querySelector("c-child-lwc[data-my-id=childlwc]").messageChild = dataValue;
    }

    callChildMethod(event){
        let dataValue = this.template.querySelector("lightning-input[data-my-id=inputType]").value;
        this.template.querySelector("c-child-lwc[data-my-id=childlwc]").showMeMessage(dataValue);
    }
}