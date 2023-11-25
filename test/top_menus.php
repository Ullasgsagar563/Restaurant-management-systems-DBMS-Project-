<br>
<br>
<ul class="nav nav-tabs">	
	<?php if($_SESSION["role"] == 'admin') { ?>	    
		<li id="category"><a href="category.php">Category</a></li>
		<li id="tables"><a href="tables.php">Table</a></li>
		<li id="tax"><a href="tax.php">Tax</a></li>
		<li id="items"><a href="items.php">Items</a></li>			
		<li id="order"><a href="order.php">Order</a></li>				
	<?php } ?>	
	<?php if($_SESSION["role"] == 'waiter') { ?>		
		<li id="order"><a href="order.php">Order</a></li>
		<li id="pro"><a href="procedure.php">In-complete</a></li>
		<li id="billing"><a href="billing.php">Billing</a></li>
	<?php } ?>
	<?php if($_SESSION["role"] == 'cashier') { ?>
		<li id="order"><a href="order.php">Order</a></li>
		<!--<li id="billing"><a href="billing.php">Billing</a></li>-->
	<?php } ?>
	<?php if($_SESSION["role"] == 'user') { ?>
		<li id="order"><a href="order.php">Order</a></li>
	<?php } ?>
</ul>