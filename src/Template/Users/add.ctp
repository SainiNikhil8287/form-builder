

<div class="container">
	<div class="cstm">
	
		<?php 

			echo $this->Form->create();

			echo $this->Form->input('username',['placeholder'=>'Enter User Name','id'=>'uname']);
			echo $this->Form->input('password',['placeholder'=>'Enter Password','id'=>'upass']);
		/*	echo $this->Form->input('email',['placeholder'=>'Enter Email','id'=>'upass']); */
			echo $this->Form->button('submit');
			
			echo $this->Form->end();

		?>

	</div>
</div>