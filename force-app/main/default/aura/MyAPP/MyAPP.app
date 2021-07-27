<aura:application >
	<!-- 
     1) Attributes 
     2) Handlers 
     3) Events 
    -->
    <aura:attribute name="firstName" type="String" default="" description="This firstName will store the Persons Name"/>
    <aura:attribute name="lastName" type="String" default="On Load value"/>
    
    <!-- Data Binding (2 Way Data Update)-->
    <lightning:input label="First Name" value="{!v.firstName}"/>
    <br/>
    OUTPUT :
    First Name : {!v.firstName}
    <!-- Data Assigning (1 way way data passing)-->
    <lightning:input label="Last Name" value="{#v.lastName}"/>
    OUTPUT:
    Last Name : {!v.lastName}
    
    <br/>
    <c:CMP1 firstName="{!v.firstName}" lastName="{!v.lastName}"/>
    
</aura:application>