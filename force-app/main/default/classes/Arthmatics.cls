/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-18-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   05-17-2021   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public with sharing class Arthmatics {
   // 2.1 + 3 = 5.1 --> INteger , double
   // param1 , Param2 --> SUM (Param1 , Param2)
   public static Decimal getSum(Decimal firstNumber , Decimal secondNumber){
       Decimal result = firstNumber + secondNumber ; 
       return result;
   }
   // Collections --> a Variable which stores more than 1 value of same data type
   // Set , List , Map 
   public static Decimal getSum(List<Decimal> sumNumbers){
      // HOw to read values from LIST --> Through Iterations we can read
      Decimal result = 0;
      for(Decimal num : sumNumbers){
         result = result + num;
      }
      return result;
   }

   public static List<Decimal> getNumbers(Decimal startNumber , Decimal endNumber){
       List<Decimal> result = new List<Decimal>();
       for(Decimal num = startNumber ; num <= endNumber ; num++){
           result.add(num);
       }
       return result;
   }

   // What is MAP --> Key , value pair
   /*
     ==> Key can not be duplicate , 
     ==> Value can be anything and duplicated 
     ==> If same key passed then exiting value get replaced with new values 
     ==> Keys --> Set<KeyDataType> --> Map<Key,Value> myMap==> myMap.keyset()
     ==> Values --> List<ValuesDataType>  --> Map<Key,Value> myMap ==> myMap.values();
   */

   public static void mapExample(){
       Map<String,Integer> peopleAge  = new Map<String,Integer>();
       // to assign a value to map 
       peopleAge.put('LakshmiDeepak',30);
       peopleAge.put('Vamsi',35);
       peopleAge.put('Nagesh',40);
       peopleAge.put('Gowtham',45);
       peopleAge.put('viharikha',50);

       // to read values based on keys
       System.debug('Vamsi Age is : '+peopleAge.get('Vamsi'));
       // What if key doesn't exits
       System.debug('Random age is : '+peopleAge.get('Random'));
       peopleAge.put('Gowtham',55);
       // Map can be iterrated using keys and Values --> Keys
       for(String key : peopleAge.keySet() ){
        // System.debug(key+' Age is : '+peopleAge.get(key));
       }
       
       // Iterate Map using Values
       for(Integer value : peopleAge.values()){
           // system.debug(' age is : '+value);
       }

       Map<Id,Account> accMap = new Map<Id,Account>([SELECT Id , Name , Phone , Rating FROM Account]);
       for(Id key : accMap.keyset()){
           Account acc = accMap.get(key);
           String accName = acc.Name;
           System.debug(key + ' Related Account is : '+ accName);

       }

       system.debug('==================================================================================');
       for(Account record : accMap.values()){
           System.debug(record.Id + ' Related Account is : '+record.Name);
       }
   }
}