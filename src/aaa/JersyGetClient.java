package aaa;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
 
public class JersyGetClient {
 
    public static void main(String a[]){
         
        String url = "http://www.weberleads.in/http-api.php?username=NADHIYA&password=36816&senderid=TAKEOF&route=2&number=9052276429&message=good3541365";
        Client restClient = Client.create();
        WebResource webResource = restClient.resource(url);
        ClientResponse resp = webResource.accept("application/json")
                                                    .get(ClientResponse.class);
        if(resp.getStatus() != 200){
            System.err.println("Unable to connect to the server");
        }
        String output = resp.getEntity(String.class);
        System.out.println("response: "+output);
    }
}