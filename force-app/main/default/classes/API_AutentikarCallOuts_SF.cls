/* Test envio de mail 16042023*/

public class API_AutentikarCallOuts_SF {
    public static String API_AutentikIT_SF(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();

        String akUser = 'acc22286-140b-498b-b060-a40875a06b1a';
        String akPassword = 'fHNzIrMGWX6RgexTncPNrSKl1wrURIIJyNy';
        String AutentikarToken = '';

        Blob headerValue = Blob.valueOf(akUser + ':' + akPassword);
        String authorizationHeader = 'BASIC ' + EncodingUtil.base64Encode(headerValue);

        request.setEndpoint('https://api.autentikar.com/account/token');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');//formato de Contexto para API > JSON para este caso.
        request.setHeader('Authorization', authorizationHeader);//Solicitud de autenticación para evitar que el API sea publico.

        HttpResponse response = http.send(request);

        // Parse the JSON response
        if(response.getStatusCode() != 200) {
            System.debug('The status code returned was not expected: ' +
                response.getStatusCode() + ' ' + response.getStatus());
        } else {
            // Deserialize the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            AutentikarToken = String.valueof(results.get('token'));
            System.debug(response.getBody());
            System.debug('AutentikarToken: ' + AutentikarToken);
        }
        return AutentikarToken;

    }
}