	<%cffunction name="dspEditor" access="public" returntype="void" output="false"%>
		<%cfargument name="event" type="any" required="yes"%>
		<%cfscript%>
		//References
		var rc = event.getCollection();
		var oService = getPlugin("IOC").getBean("#root.bean.xmlAttributes.name#Service");
		
		//set the exit handlers
		rc.xehSave = "#root.bean.xmlAttributes.name#/doSave";
		rc.xehList = "#root.bean.xmlAttributes.name#/list";
		
		//Get #root.bean.xmlAttributes.name# bean with/without ID.
		rc.o#root.bean.xmlAttributes.name#Bean = oService.get#root.bean.xmlAttributes.name#(event.getValue("#primaryKey#","0"));
		
		//Set view to render
		event.setView("#root.bean.xmlAttributes.name#Editor");
		<%/cfscript%>		
	<%/cffunction%>