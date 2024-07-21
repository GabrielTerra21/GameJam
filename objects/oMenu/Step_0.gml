// Inputs
var up_key = keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(vk_down);
var confirm_key = keyboard_check_pressed(vk_space);

// Anda a opção selecionada
pos += down_key - up_key;
if pos >= menu_size {pos = 0};
if pos < 0 {pos = menu_size - 1};

// Confirma a opção do menu
if confirm_key {
	
	switch(pos){
	
	case 0:
		room_goto_next();	
		break;



	}

}


