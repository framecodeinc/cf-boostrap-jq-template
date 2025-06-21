<cfcomponent displayname="components.weatherforecast">
    <cfproperty name="date" type="date" access="public" />
    <cfproperty name="temperatureC" type="numeric" access="public" />
    <cfproperty name="summary" type="string" access="public" />
    <cfproperty name="temperatureF" type="numeric" access="public" />
    <!--- ----------  --->
    <cffunction name="getTemperatureF" access="public" returntype="numeric">
        <cfargument name="temperatureC" type="numeric" required="true"> 
        <cfreturn 32 + int(#temperatureC# / 0.5556)>
    </cffunction>
</cfcomponent>
