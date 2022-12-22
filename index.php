<?php

// Start output buffering
ob_start();

?>

<!-- Original HTML code -->
<html>
      <head>
          <meta charset="utf-8" />
          <link rel="stylesheet" href="style.css" />
          <title>Primy</title>
      </head>


      <body>
            <header>
                <h1>Primy</h1>
            </header>

            <p><iframe name="I1" src="primy_output.txt">
              Texte si le navigateur est trop vieux.
              </iframe></p>
              <button onClick="window.location.reload();">Refresh Page</button>
 
            </aside>
              <p> par DAVIDEK Lukas et MASSEREY Pierre </p>
            </footer>
      </body>
</html>

<?php

// Get the contents of the output buffer
$html = ob_get_contents();

// End output buffering and send the output to the browser
ob_end_flush();

