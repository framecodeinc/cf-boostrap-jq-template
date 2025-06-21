<script type="text/javascript" language="javascript">
    $(function () {
        let counter = 0;
        $("#btnIncrement").click(function() {
            counter++;
            $("#counter").text(counter);
        });
    });
</script>
<h1>Counter</h1>

<p role="status">Current count: <span id="counter">0</span></p>

<button id="btnIncrement" class="btn btn-primary">Click me</button>