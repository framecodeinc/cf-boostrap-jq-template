<script type="text/javascript" language="javascript">
    $(function () {
        getWeatherForecast();
    });
    function getWeatherForecast() {
        $("#emLoad").text("Loading...");
        setTimeout(function() {
            $.ajax({
                url: "components/weather.cfc",
                method: "POST",
                dataType: "json", 
                data: {
                    method: "GetWeatherForecast",
                    returnformat: "json" // "json" if returning structs/arrays
                },
                success: function (forecasts) {
                    let tbody = $("#tableWeather tbody");
                    tbody.empty(); // clear previous rows.
                    // Loop through the forecasts and append rows to the table body
                    $.each(forecasts, function(index, forecast) {
                        let date = new Date(forecast.DATE);
                        let dateFormatted = date.toLocaleDateString("en-US"); // MM/DD/YYYY
                        let row = `<tr>
                                    <td>${dateFormatted}</td>
                                    <td>${forecast.TEMPERATUREC}</td>
                                    <td>${forecast.TEMPERATUREF}</td>
                                    <td>${forecast.SUMMARY}</td>
                                  </tr>`;
                        tbody.append(row);
                    });
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log('Error:', textStatus, errorThrown);
                }
            })
            .fail(function(jqXHR, textStatus, errorThrown) {
                console.log('Error:', textStatus, errorThrown);
            })
            .always (function () {
                $("#emLoad").text("");
            });
        }, 2000); // Simulate asynchronous loading to demonstrate streaming rendering
    }
</script>

<h1>Weather</h1>

<p>This component demonstrates showing data.</p>

<p><em id="emLoad"></em></p>

<table id="tableWeather" class="table">
    <thead>
        <tr>
            <th>Date</th>
            <th>Temp. (C)</th>
            <th>Temp. (F)</th>
            <th>Summary</th>
        </tr>
    </thead>
    <tbody>
        
    </tbody>
</table>