function Dialogue() constructor {

	// array for the different dialogue sequences
	_dialogs = [];
	
	// adds dialogue to the dialogue array
	add = function(_message){
		array_push(_dialogs, {
			message: _message,
		});
	}
	
	
	// resets/deletes the dialogue after it has been said
	pop = function() {
		var _t = array_first(_dialogs);
		
		array_delete(_dialogs, 0, 1);
		
		return _t;
	}
	
	
	// just shows how much/if theres more dialogue to show in the dialog array
	count = function() {
		return array_length(_dialogs);
	}
}