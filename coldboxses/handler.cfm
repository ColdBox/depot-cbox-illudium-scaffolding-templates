<cfoutput>
<cfloop from="1" to="#arrayLen(root.bean.dbtable.xmlChildren)#" index="i"><cfif root.bean.dbtable.xmlChildren[i].xmlAttributes.primaryKey eq "Yes"><cfset primaryKey = root.bean.dbTable.xmlChildren[i].xmlAttributes.name></cfif></cfloop>
<%cfcomponent name="#root.bean.xmlAttributes.name#" extends="coldbox.system.EventHandler" output="false"%>
	
<%/cfcomponent%>
</cfoutput>