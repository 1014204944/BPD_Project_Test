@RestResource(urlMapping='/API_Autenticar_SF')
global with sharing class API_Autentikar_SF_Test1 {
    /*@HttpGet
    global static Account doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = '0013x00002SLv8JAAT'];
        return result;
    }*/
   @HttpGet
    global static String doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String APIAutenticar = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        String clientId = 'acc22286-140b-498b-b060-a40875a06b1a';
        String clientKey = 'fHNzIrMGWX6RgexTncPNrSKl1wrURIIJyNy'; 
        if (res != null){
            APIAutenticar = 'Canciono';
        }
        else{
            APIAutenticar = 'No canciona';
        }
        return clientId;
        //return clientKey;
        /*return APIAutenticar;*/
    }
    /*@HttpPost
    global static String doPost(String clientId, String clientKey) 
    {
        Account account = new Account();
        account.Name = name;
        account.phone = phone;
        account.website = website;
        insert account;
        return account.Id;
    }    */   

}