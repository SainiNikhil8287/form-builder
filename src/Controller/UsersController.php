<?php

namespace App\Controller;

use App\Controller\AppController;
use Cake\Auth\DefaultPasswordHasher;


class UsersController extends AppController{


	public function login()
	{

		if($this->request->is('post'))
		{

			$userdata = $this->Auth->identify();
			if($userdata)
			{
				
				$this->Auth->setUser($userdata);
				
				return $this->redirect('/');
			}
			$this->Flash->error('Invalid username or password try again');


		}


	}


	public function logout()
	{

		return $this->redirect($this->Auth->logout());

	}



	public function add(){

		$this->loadModel('Users');


		if($this->request->is('post')){

			$usersTable = $this->Users->newEntity();

			$usersTable->username = $this->request->data['username'];
			$usersTable->password = $this->request->data['password'];
			// $usersTable->email = $this->request->data['email'];

			if($this->Users->save($usersTable)){
				$this->Flash->success('Data Insert Successfully');
			}

		}

	}

}