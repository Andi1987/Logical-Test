<?php
	for($i = 1; $i <= 50; $i++) {
		if ($i % 3 == 1 && $i % 5 == 1) {
	}
	  if ($i % 3 == 1) echo 'Foo';
	  echo "<br/>";
	  if ($i % 5 == 1) echo 'Bar';
	  echo "<br/>";
	  if ($i % 50 == 1) echo 'FooBar';
			echo "<br/>";
			echo $i;
		
	}
?>