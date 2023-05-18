/* Test envio de mail 16042023*/

global class BPD_SendEmail_Test {
    
    public static void sendingEmail()
    {
        Messaging.SingleEmailMessage semail = new Messaging.SingleEmailMessage();
        String[] sendingTo = new String[]{'layomoque@gmail.com'}; 
        semail.setToAddresses(sendingTo); 
        //String[] sendingToBccAdd = new String[]{'XXXXXXXXX@gmail.com'}; 
        //semail.setBccAddresses(sendingToBccAdd); 
        //String[] sendingTocAdd = new String[]{'XXXXXXXXXXX@gmail.com'}; 
        //semail.setCcAddresses(sendingTocAdd); 
        semail.setSubject('BPD Email Example'); 
        semail.setPlainTextBody('Hello!!!!! Este es un email test simple'); 
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {semail}); 
        //return null; 
    } 

}