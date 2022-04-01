<html>
  
<head>
   
    <script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </script>
  
    <script>      
  
        $.getJSON("https://api.ipify.org?format=json",
                  function(data) {  
          
            $("#ip").html(data.ip);
        })
    </script>
</head>
  
<body>
    <center>       
  
        <p id="ip"></p>
	<?php
		echo $_SERVER['SERVER_ADDR'];
	?>
  
    </center>
	teste
</body>
  
</html>
