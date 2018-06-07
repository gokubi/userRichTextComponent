@isTest
private class userRTAcontroller_TEST
{
	@isTest
	static void itShould()
	{
		// Given
		//current user


		// When
		//current user adds links
		User currentUser = new User(
			id = UserInfo.getUserId(),
			User_Rich_Text__c = 'TEST user Links'
			);

		update currentUser;

		//org links record
		Org_Links__c newOrgLinks = new Org_Links__c(
			Audience__c = 'Everyone',
			Links_RTA__c = 'TEST Org Links'
			);

		insert newOrgLinks;


		// Then
		userRTAcontroller myController = new userRTAcontroller();
		userRTAcontroller.getMyUser();
		userRTAcontroller.getOrgLinks();
        	userRTAcontroller.getOrgName();
	
	}
}
