@RestResource(urlMapping='/getChatButton/*')
global without sharing class getChatButtonId {
 
    @HttpGet
    global static LiveChatbutton doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String country = req.params.get('country');
        String locale = req.params.get('locale');
        livechatbutton result = [SELECT Id from livechatbutton where masterlabel =: country and windowlanguage =:locale limit 1];
        return result;
    }
  
 

}
