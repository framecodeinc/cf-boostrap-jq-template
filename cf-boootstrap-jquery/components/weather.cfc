<cfcomponent displayname="components.weather">
	<cffunction name="GetWeatherForecast" access="remote" returntype="struct">
        <cfset var currentPath = getDirectoryFromPath(getCurrentTemplatePath())>
        <cfset var pathParts = listToArray(currentPath, "/\")>
        <cfset var projectName = pathParts[arrayLen(pathParts)-1]>
        <cfset var componentPath = projectName & ".components.weatherforecast">
        <!--- ----------  --->
		<cfset var forecasts = StructNew()>
       	<cfset var startDate = createDate(year(now()), month(now()), day(now()))>
        <cfset var summaries = ["Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"]>
        <!--- ----------  --->
        <cfloop from="1" to="5" index="index">
            <cfset var forecast = createObject("component", componentPath)>
            <cfset forecast.date = dateAdd("d", index, startDate)>
            <cfset forecast.temperatureC = randRange(-20, 55)>
            <cfset forecast.summary = summaries[randRange(1, arrayLen(summaries))]>
			<cfset forecast.temperatureF = forecast.getTemperatureF(forecast.temperatureC)>
            <!--- ----------  --->
            <cfset StructInsert(forecasts, index, forecast)>
        </cfloop>
        <!--- ----------  --->
		<cfreturn forecasts>
	</cffunction>
</cfcomponent>