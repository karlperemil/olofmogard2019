<div id="menu">
	<div id="title-bar" class="title-bar">
        <!-- <h1 class="hide-mobile">Emil Jönsson</h1> -->
        <figure class="menu-logo ej-logo"></figure>
	</div>
	<div id="menu-select">
		<?php
			$serviceslink = '/services';
			$worklink = '/work';
			$whitelist = array('127.0.0.1', "::1");
			if(!in_array($_SERVER['REMOTE_ADDR'], $whitelist)){
				$serviceslink = '/services';
				$worklink = '/work';
			}
		?>
		<p><a href="<?php echo $serviceslink ?>" class="menu-about"><span class="menu-plus-about menu-plus">+</span><span class="menu-minus-about menu-minus">-</span><span class="menu-text">Services</span></a></p>
 		 <p><a href="<?php echo $worklink ?>" class="menu-work"><span class="menu-plus-work menu-plus">+</span><span class="menu-minus-work menu-minus">-</span><span class="menu-text">Work</span></a></p>
	</div>
</div>