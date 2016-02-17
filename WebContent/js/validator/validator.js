

var validator = (function($){
	var message, tests, checkField, validate, mark, unmark, field, minmax, defaults,
		validateWords, lengthRange, lengthLimit, pattern, alertTxt, data,
		
		

	message = {
		
		empty			: 'Required',
		
	};
	
	if(!window.console){
		console={};
		console.log=console.warn=function(){ return; }
	}


	defaults = { alerts:true };

	tests = {
		sameAsPlaceholder : function(a){
			return $.fn.placeholder && a.attr('placeholder') !== undefined && data.val == a.prop('placeholder');
		},
		hasValue : function(a){
			if( !a ){
				alertTxt = message.empty;
				return false;
			}
			return true;
		},
		
		text : function(a){
	
			if( validateWords ){
				var words = a.split(' ');
				// iterrate on all the words
				var wordsLength = function(len){
					for( var w = words.length; w--; )
						if( words[w].length < len )
							return false;
					return true;
				};

				if( words.length < validateWords || !wordsLength(2) ){
					alertTxt = message.complete;
					return false;
				}
				return true;
			}
			if( lengthRange && a.length < lengthRange[0] ){
				alertTxt = message.min;
				return false;
			}

			// check if there is max length & field length is greater than the allowed
			if( lengthRange && lengthRange[1] && a.length > lengthRange[1] ){
				alertTxt = message.max;
				return false;
			}
			// check if the field's value should obey any length limits, and if so, make sure the length of the value is as specified
			if( lengthLimit && lengthLimit.length ){
				var obeyLimit = false;
				while( lengthLimit.length ){
					if( lengthLimit.pop() == a.length )
						obeyLimit = true;
				}
				if( !obeyLimit ){
					alertTxt = message.complete;
					return false;
				}
			}

			
			return true;
		},
	
		
	
	};

	
    mark = function( field, text ){
		if( !text || !field || !field.length )
			return false;

		
		var item = field.parents('.item'),
			warning;
			
		if( item.hasClass('bad') ){
			if( defaults.alerts )
				item.find('.alert').html(text);
		}


        else if( defaults.alerts ){
            warning = $('<div class="alert">').html( text );
            item.append( warning );
        }
		
        item.removeClass('bad');
		// a delay so the "alert" could be transitioned via CSS
        setTimeout(function(){
            item.addClass('bad');
        }, 0);
	};
	
	unmark = function( field ){
		if( !field || !field.length ){
			console.warn('no "field" argument, null or DOM object not found');
			return false;
		}

		field.parents('.item')
			 .removeClass('bad')
			 .find('.alert').remove();
	};

	function testByType(type, value){
		if( type == 'tel' )
			pattern = pattern || 'phone';

		if( !type || type == 'password' || type == 'tel' )
			type = 'text';

		return tests[type](value);
	}

	function prepareFieldData(el){
		field = $(el);

		field.data( 'valid', true );				
		field.data( 'type', field.attr('type') );	
		pattern = el.pattern;
	}

	
	function keypress(e){
		prepareFieldData(this);

		if( e.charCode )
			return testByType( data.type, String.fromCharCode(e.charCode) );
	}

	/* Checks a single form field by it's type and specific (custom) attributes
	*/
	function checkField(){
		// skip testing fields whom their type is not HIDDEN but they are HIDDEN via CSS.
		if( this.type !='hidden' && $(this).is(':hidden') )
			return true;

		prepareFieldData(this);

		field.data( 'val', field[0].value.replace(/^\s+|\s+$/g, "") );	// cache the value of the field and trim it
		data = field.data();

		// Check if there is a specific error message for that field, if not, use the default 'invalid' message
		alertTxt = message[field.prop('name')] || message.invalid;

		if( field[0].nodeName.toLowerCase() === "select" ){
			data.type = 'select';
		}
		if( field[0].nodeName.toLowerCase() === "textarea" ){
			data.type = 'text';
		}
		
		validateWords	= data['validateWords'] || 0;
		lengthRange 	= data['validateLengthRange'] ? (data['validateLengthRange']+'').split(',') : [1];
		lengthLimit		= data['validateLength'] ? (data['validateLength']+'').split(',') : false;
		minmax			= data['validateMinmax'] ? (data['validateMinmax']+'').split(',') : ''; // for type 'number', defines the minimum and/or maximum for the value as a number.

		data.valid = tests.hasValue(data.val);
		
		if( data.valid ){
		
			if( tests.sameAsPlaceholder(field) ){
				alertTxt = message.empty;
				data.valid = false;
			}

		
			if( data.validateLinked ){
				var linkedTo = data['validateLinked'].indexOf('#') == 0 ? $(data['validateLinked']) : $(':input[name=' + data['validateLinked'] + ']');
				data.valid = tests.linked( data.val, linkedTo.val() );
			}
		
			else if( data.valid || data.type == 'select' )
				data.valid = testByType(data.type, data.val);

			// optional fields are only validated if they are not empty
			if( field.hasClass('optional') && !data.val )
				data.valid = true;
		}

		// mark / unmark the field, and set the general 'submit' flag accordingly
		if( data.valid )
			unmark( field );
		else{
			mark( field, alertTxt );
			submit = false;
		}

		return data.valid;
	}

	/* vaildates all the REQUIRED fields prior to submiting the form
	*/
	function checkAll( $form ){
		$form = $($form);

		if( $form.length == 0 ){
			console.warn('element not found');
			return false;
		}

		var that = this,
			submit = true, // save the scope
			fieldsToCheck = $form.find(':input').filter('[required=required], .required, .optional').not('[disabled=disabled]');

		fieldsToCheck.each(function(){
			// use an AND operation, so if any of the fields returns 'false' then the submitted result will be also FALSE
			submit = submit * checkField.apply(this);
		});

		return !!submit;  // casting the variable to make sure it's a boolean
	}

	return {
		defaults 	: defaults,
		checkField 	: checkField,
		keypress 	: keypress,
		checkAll 	: checkAll,
		mark 		: mark,
		unmark		: unmark,
		message		: message,
		tests 		: tests
	}
})(jQuery);