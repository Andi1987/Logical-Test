<?php
	class Bilangan {
		
		public $a;
		public $b;
		public $x;
		public $y;
		
		function bagi($a,$b){
			$a = 7;
			$b = 2;
		$rsl1 = $a /= $b;
		
		print_r( round($rsl1,0, PHP_ROUND_HALF_ODD));
		
		echo "<br/>";
		$x = 8;
		$y = 4;
		
		$rsl2 = $x /= $y;
		echo round($rsl2,0, PHP_ROUND_HALF_ODD);
		}
	}

?>