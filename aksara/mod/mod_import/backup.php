<?php
echo"
<ul class='nav nav-tabs'>
    <li class='active'><a data-toggle='tab' href='#home'>Backup</a></li>
    <li><a data-toggle='tab' href='#menu1'>Restore</a></li>
    <li><a data-toggle='tab' href='#menu2'>Kosongkan</a></li>

  </ul>

  <div class='tab-content'>
    <div id='home' class='tab-pane fade in active'>
      
      <p>
";
include"mod/mod_backup/backupfile.php";

echo"
	  
	  </p>
    </div>
    <div id='menu1' class='tab-pane fade'>
    
      <p>
	  
	  ";
	  include"mod/mod_backup/recovery_data.php";

	  echo"
	  </p>
    </div>
    <div id='menu2' class='tab-pane fade'>
     
      <p>
	  ";
	  	  include"mod/mod_backup/kosongkan.php";
	  echo"
	  </p>
    </div>
   
  </div>

";


?>