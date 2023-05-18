// Clase de prueba para ejecutar pruebas en Visual COde de SF - 17042023
@isTest
public class BPD_SendMail_Debug_Test {
    @isTest
    public static void BPD_SendMail_Debug_Test_DebugVsCode() {
       Test.startTest();
            BPD_SendEmail_Test.sendingEmail();
        Test.stopTest();
    }
}