/*---Test Invocable Apex desde Flow para API 04/05/2023---*/

public class CallFlow_Authentikar_test {
    @InvocableMethod
    public static void GetCallDatappty_test(List<Id> ids) {
    /*public static void GetCallDatappty_test(String AccountName){
        String AccntName = AccountName;
        System.debug('>Test Nombre Cuenta: ' + AccntName);*/
        List<Opportunity> oppList = [SELECT AccountId, Amount 
                                    FROM Opportunity 
                                    WHERE Id =: ids[0]];
        System.debug('>Test Lista Oppty: ' + oppList);
    }
    /*@InvocableMethod
    public static void GetCallDataOppty_test1(String AccountName) {
        String AccntName = AccountName;
            System.debug('>Test Nombre Cuenta: ' + AccntName);
        }*/
}