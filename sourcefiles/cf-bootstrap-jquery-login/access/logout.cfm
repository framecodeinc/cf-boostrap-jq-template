<cfset structClear(session)>
<cfset sessionInvalidate()/>
<!--- <cfset getPageContext().getSession().invalidate()> --->
<cflocation url="index.cfm" addtoken="false">