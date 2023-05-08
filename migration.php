<?php
  $command = 'php app/database/migrations.php';
  $output = shell_exec($command);
  
  // Check if there is any output from the script
  if ($output !== null) {
    echo "Script output: $output";
  } else {
    echo "Script did not produce any output";
  }
?>