<?php

namespace App\Controller;

use Cake\Core\Configure;
use Cake\Http\Exception\ForbiddenException;
use Cake\Http\Exception\NotFoundException;
use Cake\View\Exception\MissingTemplateException;


class PagesController extends AppController
{

    public function home()
    {
        

    }

    public function ddform()
    {
        

    }

    public function formsave(){

        $this->autoRender = false;
        $form_code = $_GET['form_code'];


        $this->loadModel('customForms');

        $blank_data = $this->customForms->newEntity();

        $blank_data->form_code = $form_code;
        $blank_data->user_id = 1234;
        if($this->customForms->save($blank_data)){
          // $this->Flash->success("Form Saved Successfull");
          $output = "Form Saved Successfull";
        }
        echo  $output;
        exit;

    }

    public function savedforms(){

        // $this->autoRender = false;
        $this->loadModel('customForms');

        $founded = $this->customForms->find('all',['conditions'=>['status'=>'Active']])->toArray();

        $this->set(compact('founded'));


    }
}
