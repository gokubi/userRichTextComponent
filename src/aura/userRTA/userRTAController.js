({
	doInit : function(component) {
		var action = component.get("c.getMyUser");//get data from controller
        
        action.setCallback(this, function(a) {
            component.set("v.user", a.getReturnValue());//set data in the page variable
        });
        $A.enqueueAction(action);
        
        var orgLinksAction = component.get("c.getOrgLinks");//get data from controller
        
        orgLinksAction.setCallback(this, function(b) {
            component.set("v.orglinks", b.getReturnValue());//set data in the page variable
        });
        $A.enqueueAction(orgLinksAction);
        
        var orgNameAction = component.get("c.getOrgName");//get data from controller
        
        orgNameAction.setCallback(this, function(d) {
            component.set("v.orgname", d.getReturnValue());//set data in the page variable
        });
        $A.enqueueAction(orgNameAction);
	}
})