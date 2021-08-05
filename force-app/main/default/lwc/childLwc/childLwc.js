import { LightningElement , api } from 'lwc';

export default class ChildLwc extends LightningElement {
    @api messageChild;

    @api
    showMeMessage(valueStr){
        alert("Your Message is :"+valueStr);
    }
    customEventDispatch(event){
        /*
        --> No Upper Case in event name
        --> No Space in event Name
        --> No special characters in event Name 
        --> NO Underscore to seperate words in event Name
         */
        let eventName = 'customeventexample';
        let data = {firstName : "Deepak" , lastName : "Lakshmi"};
        let eventDetails = new CustomEvent(eventName , {detail : data});
        this.dispatchEvent(eventDetails);
    }
}