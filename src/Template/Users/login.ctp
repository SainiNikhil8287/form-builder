

<div class="container">
	<div class="cstm">
		<center>
		<?php 

			echo $this->Form->create();

			// echo $this->Form->email('email',['placeholder'=>'Enter Email','id'=>'upass']); 


			echo $this->Form->text('username',['placeholder'=>'Enter User Name','id'=>'uname']);


			echo $this->Form->password('password',['placeholder'=>'Enter Password','id'=>'upass']);


			echo $this->Form->button('submit');
			
			echo $this->Form->end();

			echo $this->Form->postLink(
			    'Login with Facebook',
			    [
			        'prefix' => false,
			        'plugin' => 'ADmad/SocialAuth',
			        'controller' => 'Auth',
			        'action' => 'login',
			        'provider' => 'facebook',
			        '?' => ['redirect' => $this->request->getQuery('redirect')]
			    ]
			);

		?>
		</center>
	</div>
</div>


