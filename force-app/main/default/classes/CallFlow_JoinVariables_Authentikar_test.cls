/*---Test Invocable Apex desde Flow para API con variable unida 08/05/2023---*/

public class CallFlow_JoinVariables_Authentikar_test {
    
    public class Input_JoinVariables_test{
        @InvocableVariable
         public List<String> varInputFlow1;
         //public List<SObject> varInputFlow1;

        @InvocableVariable
         public List<String> varInputFlow2;
         //public List<SObject> varInputFlow2;
     }

    @InvocableMethod(label='In Join Variable' description= 'Valida el ingreso de la variables unidas')
    public static void GetCallDataJoinVariable_Flow_test(List<Input_JoinVariables_test> inputVariables) {
      
        /*List<SObject> varInputFlow1 = inputVariables[0].varInputFlow1;
        SObject SObjectTestOppty = varInputFlow1[0];
        System.debug('>Test SObject Oppty :' + SObjectTestOppty);

        List<SObject> varInputFlow2 = inputVariables[0].varInputFlow2;
        SObject strInputAccnt = varInputFlow2[0];
        System.debug('>Test SObject Accnt :' + strInputAccnt);*/

        /*public static void GetCallDatappty_test(String AccountName){
            String AccntName = AccountName;
            System.debug('>Test Nombre Cuenta: ' + AccntName);*/
 
        /*List<Opportunity> oppList = [SELECT AccountId, Amount 
                                        FROM Opportunity 
                                        WHERE Id =: ids[0]];
        System.debug('>Test Lista Oppty: ' + oppList);*/

        List<String> strInputFlow1 = inputVariables.get(0).varInputFlow1;
        System.debug('>Test Data Oppty: ' + strInputFlow1);
        String var1Test = strInputFlow1.get(2);
        System.debug('>Name Oppty: ' + var1Test);

        List<String> strInputFlow2 = inputVariables.get(0).varInputFlow2;
        System.debug('>Test Data Acnnt: ' + strInputFlow2);
        String accntName = strInputFlow2.get(0);
        System.debug('>Name Accnt: ' + accntName);
        String accntMail = strInputFlow2.get(1);
        System.debug('>Email Accnt: ' + accntMail);


        }

        /*public class Input_JoinVariables_test{
           @InvocableVariable
            public List<String> varInputFlow;
        }*/
    
}





/*public with sharing class GetFirstFromCollection {
    @InvocableMethod
    public static List <Results> execute (List<Requests> requestList) {
      List<SObject> inputCollection = requestList[0].inputCollection;
      SObject outputMember = inputCollection[0];
  
      //Create a Results object to hold the return values
      Results response = new Results();
  
      //Add the return values to the Results object
      response.outputMember = outputMember;
  
      //Wrap the Results object in a List container 
      //(an extra step added to allow this interface to also support bulkification)
      List<Results> responseWrapper= new List<Results>();
      responseWrapper.add(response);
      return responseWrapper;    
    }
  
    public class Requests {
      @InvocableVariable(label='Records for Input' description='yourDescription' required=true)
      public List<SObject> inputCollection;
    }
  
    public class Results {
      @InvocableVariable(label='Records for Output' description='yourDescription' required=true)
      public SObject outputMember;
    }
  }*/