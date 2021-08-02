import { LightningElement , api } from 'lwc';

export default class ChildLwc extends LightningElement {
    @api messageChild;

    @api
    showMeMessage(valueStr){
        alert("Your Message is :"+valueStr);
    }
}