<!--- Check if exists session --->
<cfif NOT StructKeyExists(Session, "userId")>
  <!--- <cflocation url="index.cfm" addtoken="false"> --->
  <!--- Include custom JS for the checksession.cfm --->
  <script type="text/javascript" language="javascript" src="./js/access/checksession.js"></script>
</cfif>
 