	<%cffunction name="doDelete" access="public" returntype="void" output="false"%>
		<%cfargument name="event" type="any" required="yes"%>
		<%cfscript%>
		//References
		var rc = event.getCollection();
		var oService = getPlugin("IOC").getBean("#root.bean.xmlAttributes.name#Service");
		
		//Remove via the incoming id
		oService.delete#root.bean.xmlAttributes.name#(rc.#primaryKey#);
		
		//Redirect with message box
		getPlugin("MessageBox").setMessage("info","The record was sucessfully deleted");
		setNextRoute("#root.bean.xmlAttributes.name#/list");
		<%/cfscript%>		
	<%/cffunction%>	