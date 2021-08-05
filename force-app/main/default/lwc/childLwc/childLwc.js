import { LightningElement , api } from 'lwc';

export default class ChildLwc extends LightningElement {
    @api messageChild;

    @api
    showMeMessage(valueStr){
        alert("Your Message is :"+valueStr);
    }
    customEventDispatch(event){
        let eventName = 'customeventexample';
        let data = {firstName : "Deepak" , lastName : "Lakshmi"};
        let eventDetails = new CustomEvent(eventName , {detail : data});
        this.dispatchEvent(eventDetails);
    }
}