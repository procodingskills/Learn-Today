/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-15-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   05-13-2021   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public with sharing class IntroApexClass {
  public  String title = 'Intialized 10'; // = assign operator
  public  string wantToStudy; // null --> Declaration of variable
  public  string password = '';
  public  string userName = null; // --> Intilization of variable

  // accessSpecifier static||no static ReturnType methodName ([args --> DataType variableName]){ // set of intructions }
  public void setGowthamDetails(){
    title = 'Manager';
    wantToStudy = 'SAI';
    password = 'random';
    userName = 'sfdc-gowtham';
  }
  public void setViharikhaDetails(){
    title = 'worker';
    wantToStudy = 'IAS';
    password = 'modnar';
    userName = 'sfdc-viharikha';
  }
  public void setPersonDetails(String title , string wantToStudy , string password , String userName){
     this.title = title;
     this.wantToStudy = wantToStudy;
     this.password = password;
     this.userName = userName;
  }
  /*
   Variables 
   ==> Class Level Variables
     --> Static Class Level variable
     --> Non-Static Class Level variable
   ==> Local Variables (inside your methods)
     --> Non static Variables
  */
 


 /*   Methods
     ==> Static methods 
       --> No argumented Static Methods 
       --> Argumented Static Methods
    ==> Non-Static Methods
       --> No Argumented Non-Static Methods
       --> Argumented Non-Static Methods
    Contructors 
      ==> Default Contructor
      ==> no Argumented Contructor
      ==> Argumented Contructor

    Data Types
    Collections
        ==> List
        ==> Set
        ==> Map 
    Iterators 
       ==> For Loop
       ==> Do while
    
    Conditional Statement 
      ==> If .. else If
      ==> Switch Statements 
      ==> terrnory Operator
  */
}