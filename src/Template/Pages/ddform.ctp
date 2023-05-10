<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" 
          href=
"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<?php 


	$form_start = $this->Form->create('',['id'=>'inside-form']);


	$input_type_button = $this->Form->button(' submit',['class'=>'form-control mt-2','id'=>'form-save']);

	$form_end = $this->Form->end();

?>


<div class="container-fluid">
	<div class="row">
		<div class="col-md-8 div1 mt-5">

		<?= $form_start; ?>



		<?= $form_end; ?>

	</div>

	<div class="col-md-4 div2 mt-5">

		<li class="formbuilder-icon-text" id="input-type-text-field"><span>Text Field</span></li>
		<li class="formbuilder-icon-text mt-2" id="input-type-checkbox-field"><span>Checkbox</span></li>
		<li class="formbuilder-icon-text mt-2" id="input-type-select-field"><span>Select</span></li>
		<li class="formbuilder-icon-text mt-2" id="i-t-b"><span>Submit Button</span></li>



		<button class="btn btn-success float-right mt-3" id = "form-save">Save</button>
		<a href="saved-forms" class="btn btn-info float-left mt-3" id = "form-save">Saved Forms</a>
	</div>

	</div>
</div>


<script>
	
 

	var count = 0;
	var input_type_text = 'input_type_text';
	var input_type_checkbox = 'input_type_checkbox';
	var input_type_select = 'input_type_select';

		var current_input_tag;
		var modification_data = 
		'<div id="modify-menu"><label for="req1">Required</label>&nbsp;<input type="checkbox" id="req1" name="req1" value="required"></br>'+
		'<label for="namechnge">Input Name</label><input type="text" id="namechnge">'+
		'<label for="plchld1">Placeholder</label><input type="text" id="plchld1" name="plchld1">'+
		'<label for="subtype">Type</label><select id="subtype" name="subtype" class="form-control"><option value="text">Text Field</option><option value="password">Password</option><option value="email">Email</option></select></br>'+
		'<a class="btn btn-danger mb-2" id="hide-menu" disable>Hide</a></div>';

$('#input-type-text-field').click(function(){
 		count += 1;
 		var input_type_text_fun = getcountvalue(count,input_type_text);
  		myFunction(input_type_text_fun);
  });

    $('#input-type-checkbox-field').click(function(){
    	count += 1;
    	var input_type_text_fun = getcountvalue(count,input_type_checkbox);
  		myFunction(input_type_text_fun);
  });

   $('#input-type-select-field').click(function(){
    	count += 1;
    	var input_type_text_fun = getcountvalue(count,input_type_select);
  		myFunction(input_type_text_fun);
  });


	function getcountvalue(count,input_type_data){
		// alert(input_type_data);

			if(input_type_text == input_type_data){

			return	input_type_data  = '<div class="input-icons"><input type="text"  class="form-control mt-2" name="uname-'+ count +'" id="input-'+ count +'"><i class="fa fa-pencil-square" id="input-icon-'+ count +'"></i></div>';
			}

			if(input_type_checkbox == input_type_data){

			return	input_type_data  = '<div class="checkbox-group"><label>Checkbox Group</label>&nbsp;<i class="fa fa-pencil-square" id="checkbox-icon-'+ count +'"></i></br>'
			+
			'<label>Checkbox 1</label><input type="checkbox" name="ucheckbox-'+ count +'" id="checkbox-'+ count +'"></div>';
			}

			if(input_type_select == input_type_data){

			return	input_type_data  = '<div class="input-icons"><label for="subtype">Type</label><select id="subtype" name="subtype" class="form-control"><option value="text">Text Field</option><option value="password">Password</option><option value="email">Email</option></select><i class="fa fa-pencil-square" id="select-icon-'+ count +'"></i></div>';
		}
	}


	function myFunction(input_field_pass_in_function) 
	{

		// $("#inside-form").append(input_field_pass_in_function);
		// var i_pencil_square;
		// $(".fa-pencil-square").click(function(){
		// 	i_pencil_square = $(this).attr('id');
		// });


		$(".fa-pencil-square").click(function(){
			 // console.log($(this).attr("id"));
			  current_input_tag = $(this).siblings('input').attr("id");
			  $(this).after(modification_data);
			  $(this).hide();

			  $('#req1').change(function(){
			  	var checkbox_value = $(this).val();
			  	$('#'+current_input_tag).attr("required",checkbox_value);
			  });

			 $('#namechnge').change(function(){
			  	var name_value = $(this).val();
			  	$('#'+current_input_tag).attr("name",name_value);
			  });

			 $('#plchld1').change(function(){
			  	var placeholder_value = $(this).val();
			  	$('#'+current_input_tag).attr("placeholder",placeholder_value);
			  });

			 $('#subtype').change(function(){
			  	var select_value = $(this).val();
			  	$('#'+current_input_tag).attr("type",select_value);
			  });

			 $('#hide-menu').click(function(){
			 	$("#modify-menu").remove();
			 	$("i").toggle();
			 });
		});

	}

	$("#i-t-b").on("click",function(){

		$("#inside-form").append('<?php echo $input_type_button ?>');
	});


	$('#form-save').click(function(){

		var content1 = $('.div1').html();
		 // console.log(content);

		$.ajax ({

			url : "form-save",
			type : "Get",
			data : {form_code : content1},
			success : function(response){
				alert(response);
			}

		});

	});


		



</script>
