public without sharing class userRTAcontroller {
    @AuraEnabled
	 public static User getMyUser() {//Fetch data
        return [SELECT Id, User_Rich_Text__c FROM User WHERE Id = :UserInfo.getUserId() limit 1];
    } 
    @AuraEnabled
    public static Org_Links__c getOrgLinks() {//Fetch data
        return [SELECT Links_RTA__c FROM Org_Links__c WHERE Audience__c = 'Everyone' limit 1];
    }
    @AuraEnabled
    public static String getOrgName() {//Fetch data
        return Userinfo.getOrganizationName();
    }
}