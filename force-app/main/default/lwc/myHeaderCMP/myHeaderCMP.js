import { LightningElement , api} from 'lwc'; // Every UI Component include a JS with this code
// importing LightningElement from LWC Module

// class Name <-- component name in Pasacal 
export default class MyHeaderCMP extends LightningElement {
    // Lightning Element is a inner wrraper of HTML elements
    /* WHAT LWC JAVASCRIPT FILE CONTAINS
      1. It contains component public API's via Properties and methods
      2. Fields 
      3. Event Handlers
    */ 
    @api 
    username ="Deepak" ;// this is property
    @api // API METHOD
    sampleMethod(event){

    }
}