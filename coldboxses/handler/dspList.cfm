	<%cffunction name="list" access="public" returntype="void" output="false"%>
		<%cfargument name="event" type="any" required="yes"%>
		<%cfscript%>
		//Get references
		var rc = event.getCollection();
		var oService = getPlugin("IOC").getBean("#root.bean.xmlAttributes.name#Service");
		
		//set The exit handlers
		rc.xehEditor = "#root.bean.xmlAttributes.name#/dspEditor";
		rc.xehDelete = "#root.bean.xmlAttributes.name#/doDelete";
		rc.xehList = "%getSetting('sesBaseURL')%/#root.bean.xmlAttributes.name#/list";
		
		//Get the listing
		rc.q#root.bean.xmlAttributes.name# = oService.get#root.bean.xmlAttributes.name#s() ;
		
		//Sorting Logic.
		if ( event.getValue("sortOrder","") neq ""){
			if (rc.sortOrder eq "asc")
				rc.sortOrder = "desc";
			else
				rc.sortOrder = "asc";
		}
		else{
			rc.sortOrder = "asc";
		}
		if ( event.getValue("sortBy","") neq "" ){
			//Sort via Query Helper.
			rc.q#root.bean.xmlAttributes.name# = getPlugin("QueryHelper").sortQuery(rc.q#root.bean.xmlAttributes.name#,rc.sortBy, rc.sortOrder);
		}
		else{
			rc.sortBy = "";
		}
		
		//Set the view to render
		event.setView("#root.bean.xmlAttributes.name#List");
		<%/cfscript%>
	<%/cffunction%>