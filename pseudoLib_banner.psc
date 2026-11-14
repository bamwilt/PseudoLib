// Generado por PseudoLib Image Generator
// Imagen cuantizada a RGB binario (0..7) + luminancia
// Modo seleccionado: RGB8 compilado en cadenas ANSI (sin calculos RGB en PSeInt)
// RGB_8: refinada v4: detalle v3 + limpieza exterior 0%.
// Estrategia: filas con ANSI totalmente compilado en JavaScript, una escritura por fila
// Canvas final: 396 x 47
// Celda física de consola ancho/alto: 0.428571 (calibración visual)
// Matriz logica de muestreo: 396 x 47
// Indice de color: R + 2*G + 4*B; orden en _8 corregido.
// RGB8: cada paquete representa 3 celdas visibles. Posiciones calculadas en columnas y validadas sin superposiciones.
// Ancho terminal: 396, repeticiones por celda: x1
// Carácter visual de cada celda: ¶

// PseudoLib: dependencias transitivas para pixel RGB _8
Funcion length <- native_string_length(text)
	Definir length Como Entero;
	length = Longitud(text);
FinFuncion

Funcion result_string <- native_number_toString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion num <- native_number_parseNum(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion native_println(text)
	Escribir text;
FinFuncion

Funcion native_print(text)
	Escribir text Sin Saltar;
FinFuncion

Funcion native_clearConsole
	Limpiar Pantalla;
FinFuncion

Funcion num_trunc <- native_math_truncate(num)
	Definir num_trunc Como Entero;
	num_trunc = Trunc(num);
FinFuncion

Funcion num_module <- native_math_module(number1, number2)
	Definir num_module Como Real;
	num_module = number1 MOD number2;
FinFuncion

Funcion user_input_wait
	Esperar Tecla;
FinFuncion

Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = str1+separator+str2+"";
FinFuncion

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = string_append_withSeparator(str1, str2, "");
FinFuncion

Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs, str_data Como Texto;
	Definir end_substring Como Entero;
	message_validateRangeInString("string_substring", result_string, start, end);
	end_substring = math_max_int( math_minus(end, 1), 0);
	str_data = native_string_substring(result_string, start, end_substring);
	strSubs = if_else(number_isEquals(start, end), "", str_data);
FinFuncion

Funcion strSubs <- string_substring_from(result_string, start)
	Definir strSubs Como Texto;
	Definir end_substring Como Entero;
	end_substring = native_string_length(result_string);
	strSubs = string_substring(result_string, start, end_substring);
FinFuncion

Funcion result_string <- char_At(text, index)
	Definir result_string Como Texto;
	Definir end_substring, text_length Como Entero;
	text_length   = native_string_length(text);
	end_substring = math_min_int(math_increment(index), text_length);
	result_string = string_substring(text, index, end_substring);
FinFuncion

Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Entero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion

Funcion index <- string_indexOf_fromIndex(text, match, start_index)
	Definir index, i, match_length, end_index, value_NULL Como Entero;
	Definir isMatch Como Logico;
	value_NULL   = number_NULL();
    index        = value_NULL;
    match_length = native_string_length(match);
	i            = math_max_int(start_index, 0);
	end_index    = math_minus(native_string_length(text), match_length);
	Mientras end_index >= i & number_isEquals(index, value_NULL) Hacer
		isMatch = string_isEquals(match, string_substring(text, i, math_sum(i, match_length)));
		Si isMatch Entonces
			index = i;
		SiNo
			i = math_sum(i, 1);
		FinSi
	FinMientras
FinFuncion

Funcion num <- string_length(text)
	Definir num Como Entero;
	num = native_string_length(text);
FinFuncion

Funcion result_string <- string_insert_withReplace(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, true);
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min_int(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
FinFuncion

Funcion result_string <- string_repeatText(text, repeats)
	Definir result_string Como Texto;
	Definir current_repeats, next_repeats, missing_repeats, text_length Como Entero;
	si repeats < 0 Entonces
		result_string = "";
	SiNo
		result_string = text;
		current_repeats = 1;
		text_length = native_string_length(text);
		next_repeats = math_sum(current_repeats, current_repeats);
		Mientras next_repeats <= repeats Hacer
			result_string = string_append(result_string, result_string);
			current_repeats = next_repeats;
			next_repeats = math_sum(current_repeats, current_repeats);
		FinMientras
		si current_repeats < repeats Entonces
			missing_repeats = math_minus(repeats, current_repeats);
			result_string = string_append(result_string, String_subString(result_string, 0, (missing_repeats * text_length)));
		FinSi
	FinSi
FinFuncion

Funcion result_str <- string_remove(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	message_validateRangeInString("string_remove()", text, start, end);
	start_Str  = string_substring(text, 0, start);//Hello <-]
	end_Str    = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion result_str <- string_remove_From(text, start)
	Definir result_str Como Texto;
	result_str = string_remove(text, start, native_string_length(text));
FinFuncion

Funcion result_string <- string_trim(text)
    Definir result_string Como Texto;
	result_string = string_Strip(text, " ");
FinFuncion

Funcion result_string <- string_Strip(text, strip_symbol)
    Definir result_string Como Texto;
    Definir start, end, length_text Como Entero;
    length_text = native_string_length(text);
    start = 0;
    Mientras start < length_text & string_isEquals(char_At(text, start), strip_symbol) Hacer
        start = math_increment(start);
    FinMientras
    end = length_text;
    Mientras end > start & string_isEquals(char_At(text, math_decrement(end)), strip_symbol) Hacer
        end = math_decrement(end);
    FinMientras
    result_string = string_SubString(text, start, end);
FinFuncion

Funcion limit <- __private_string_get_firewall_limit(matcher_len, max_limit)
    Definir limit Como Entero;
    Si matcher_len > 0 Entonces
        limit = math_div_int(max_limit, matcher_len);
    SiNo
        limit = 1;
    FinSi
FinFuncion

Funcion count <- string_countMatches_strict(text, text_matcher, start_index, matcher_len)
    Definir count, repeats, text_len, j, current_match_len, firewall_limit Como Entero;
    Definir current_matcher, sub_text Como Texto;
    Definir is_match Como Logico;
    text_len       = native_string_length(text);
    count          = 0;
    j              = math_max_int(start_index, 0);
    repeats        = 1;
    firewall_limit = __private_string_get_firewall_limit(matcher_len, 131072);
    Mientras j < text_len & repeats > 0 Hacer
        current_matcher   = string_repeatText(text_matcher, repeats);
        current_match_len = native_string_length(current_matcher);
        Si math_sum(j, current_match_len) <= text_len Entonces
            sub_text = string_substring(text, j, math_sum(j, current_match_len));
            is_match = string_isEquals(current_matcher, sub_text);
        SiNo
            is_match = false();
        FinSi
        Si is_match Entonces
            count = math_sum(count, repeats);
            j     = math_sum(j, current_match_len);
            Si repeats < firewall_limit Entonces
                repeats = repeats * 2;
            FinSi
        SiNo
            repeats = math_div_int(repeats, 2);
            Si repeats <= 0 Entonces
                repeats = -1;
            FinSi
        FinSi
    FinMientras
FinFuncion

Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring(text, 0, native_string_length(text_match)), text_match);
FinFuncion

Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = boolean_isEquals_general(str1, str2);
FinFuncion

Funcion zero_count <- __private_number_countLeadingZeros(str_unsigned, str_length)
	Definir zero_count Como Entero;
	zero_count = math_min_int(string_countMatches_strict(str_unsigned, "0", 0, 1), math_decrement(str_length));
FinFuncion

Funcion fits <- __private_number_tenDigitsFitInt32(str_ten_digits, is_negative)
	Definir fits Como Logico;
	Definir limit_32b Como Real;
	limit_32b = 2147483647;
	Si is_negative Entonces
		limit_32b = 2147483648;
	FinSi
	fits = (limit_32b >= native_number_parseNum(str_ten_digits));
FinFuncion

Funcion type_number <- string_isNumber_dispatcher(str_num)
	Definir is_valid, is_negative Como Logico;
	Definir index, str_length, point_count, zero_count, digit_count, type_number Como Entero;
	Definir str_char, str_unsigned Como Texto;
	type_number  = -1;
	str_num      = string_trim(str_num);
	is_negative  = string_startsWith(str_num, "-");
	str_unsigned = str_num;
	Si is_negative Entonces
		str_unsigned = string_substring_from(str_num, 1);
	FinSi
	str_length  = native_string_length(str_unsigned);
	is_valid    = (str_length > 0);
	point_count = 0;
	index       = 0;
	Mientras is_valid & (index < str_length) Hacer
		str_char = char_At(str_unsigned, index);
		Si str_char == "." Entonces
			point_count = math_increment(point_count);
			is_valid    = (point_count <= 1) & (index > 0) & (index < math_decrement(str_length));
		SiNo
			is_valid    = ascii_IsNumberSymbols(str_char);
		FinSi
		index = math_increment(index);
	FinMientras
	Si is_valid Entonces
		type_number = 0;
		Si point_count < 1 Entonces
			zero_count = 0;
			Si char_At(str_unsigned, 0) == "0" Entonces
				zero_count = __private_number_countLeadingZeros(str_unsigned, str_length);
			FinSi
			digit_count = math_minus(str_length, zero_count);
			Si digit_count < 10 Entonces
				type_number = 1;
			FinSi
			Si digit_count == 10 Entonces
				Si __private_number_tenDigitsFitInt32(string_substring_from(str_unsigned, zero_count), is_negative) Entonces
					type_number = 1;
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion isNumber <- string_isNumber(str_num)
	Definir isNumber Como Logico;
	isNumber = (string_isNumber_dispatcher(str_num) >= 0);
FinFuncion

Funcion isNumber <- string_isNumber_int(str_num)
	Definir isNumber Como Logico;
	isNumber = (string_isNumber_dispatcher(str_num) == 1);
FinFuncion

Funcion isNumber <- string_isNumber_float(str_num)
	Definir isNumber Como Logico;
	isNumber = string_isNumber(str_num);
FinFuncion

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion

Funcion println_array(array, index_array)
	Definir i Como Entero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		native_println(array[i]);
	FinPara
FinFuncion

Funcion println_array_color(array, index_array, color)
	println_array_decorator(array, index_array, color);
FinFuncion

Funcion println_array_decorator(array, index_array, decorator)
	Definir i Como Entero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		array[i] = string_append(decorator, array[i]);
	FinPara
	println_array(array, index_array);
FinFuncion

Funcion clearConsole
	native_clearConsole();
FinFuncion

Funcion log_ERROR(message)
	__private_general_log(message, "ERROR: ", COLOR_RED());
FinFuncion

Funcion __private_general_log(message, start_tag, SELECTED_COLOR)
	message = string_append(start_tag, message);
	native_println(string_append(SELECTED_COLOR, message));
FinFuncion

Funcion num <- number_parseNumber(text_number)
	Definir num Como Entero;
	Si string_isNumber(text_number) Entonces
		num = native_number_parseNum(text_number);
	SiNo
		num = number_NULL();
		error_message_function("number_parseNumber(text_number)", string_append("The text cannot be parsed into a [number] >> ", text_number));
	FinSi
FinFuncion

Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = boolean_isEquals_general(num, num2);
FinFuncion

Funcion result_string <- integer_ToString(num)
	Definir result_string Como Texto;
	result_string = native_number_toString(num);
	Si !string_isNumber_int(result_string) Entonces
		exection_Error(string_append("typing error integer: ", result_string));
	FinSi
FinFuncion

Funcion result_string <- float_ToString(num)
	Definir result_string Como Texto;
	result_string = native_number_toString(num);
	Si !string_isNumber_float(result_string) Entonces
		exection_Error(string_append("typing error Float: ", result_string));
	FinSi
FinFuncion

Funcion result <- math_max_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, true());
FinFuncion

Funcion result <- math_max_Float(value, limit)
	Definir result Como Real;
	result = __private_math_choose(value, limit, true());
FinFuncion

Funcion result <- math_min_int(value, limit)
	Definir result Como Entero;
	result = __private_math_choose(value, limit, false());
FinFuncion

Funcion result <- __private_math_choose(value, limit, isMax)
	Definir result Como Entero;
	Definir operation_flag Como Logico;
	operation_flag = (value > limit) & isMax;
	operation_flag = operation_flag | ((value < limit) & !isMax);
	Si operation_flag Entonces
		result = value;
	SiNo
		result = limit;
	FinSi
FinFuncion

Funcion num_div <- math_div_int(dividend, divisor)
	Definir num_div Como Entero;
	num_div = native_math_truncate(math_div(dividend, divisor));
FinFuncion

Funcion num_div <- math_div(dividend, divisor)
	Definir num_div Como Real;
	Si divisor == 0 Entonces
		divisor = number_NULL();
		error_message_function("math_div(dividend, divisor)","divisor = 0");
	FinSi
	num_div = dividend / divisor;
FinFuncion

Funcion num_trunc <- math_truncate(num)
	Definir num_trunc, index_point Como Entero;
	Definir str_num Como Texto;
	str_num = float_ToString(num);
	index_point = string_indexOf(str_num, ".");
	si index_point > 0 Entonces
		str_num = string_remove_From(str_num, index_point);
	FinSi
	num_trunc = number_parseNumber(str_num);
FinFuncion

Funcion module <- math_module(dividend, divisor)
	Definir module Como Entero;// module = a-floor(a/b)*b
	divisor = math_max_float(divisor, 1);
	module = dividend - math_truncate(dividend/divisor) * divisor;
FinFuncion

Funcion numInc <- math_increment(num)
	Definir numInc Como Numero;
	numInc = num + 1;
FinFuncion

Funcion numInc <- math_sum(num, value)
	Definir numInc Como Numero;
	numInc = num + value;
FinFuncion

Funcion numDec <- math_decrement(num)
	Definir numDec Como Numero;
	numDec = num - 1;
FinFuncion

Funcion numDec <- math_minus(num, value)
	Definir numDec Como Numero;
	numDec = num - value;
FinFuncion

Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion

Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion

Funcion boolean <- boolean_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion

Funcion result <- if_else(condition, result, result2)
	Si !(condition) Entonces
		result = result2;
	FinSi	
FinFuncion

Funcion error_message_function(method, message)
	error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion error_message(message)
	native_println(symbol_Escape() + "31m[ERROR] // " + message + ".");
FinFuncion

Funcion message_validateRangeInString(Function_name, result_string, start, end)
    Definir str_length Como Entero;
    str_length = string_Length(result_string);
    message_validateRangeInValue(Function_name, start, 0, str_length);
    message_validateRangeInValue(Function_name, end, 0, str_length);
	si (start > end) Entonces
		error_message_function(Function_name, "Index Error: Start > End");
	FinSi
FinFuncion

Funcion message_validateRangeInValue(Function_name, value, min_val, max_val)
	si (min_val > max_val) Entonces
		error_message_function(Function_name, "Config Error: Min > Max");
	FinSi
    Si !condition_number_IsInRange(value, min_val, max_val) Entonces
        Definir error_msg Como Texto;
        error_msg = string_append("Value out of range: ", integer_toString(value));
        error_msg = string_append(error_msg, string_append(" [Limit: ", integer_toString(min_val)));
        error_msg = string_append(error_msg, string_append(" - ", integer_toString(max_val)));
        error_msg = string_append(error_msg, "]");
        error_message_function(Function_name, error_msg);
    FinSi
FinFuncion

Funcion IsInRange <- condition_number_IsInRange(value, min_val, max_val)
    Definir IsInRange Como Logico;
    IsInRange = value >= min_val & value <= max_val;
FinFuncion

Funcion exection_Error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
FinFuncion

Funcion color <- COLOR_RED
	Definir color Como Texto;
	color =  COLOR_byIndex(1);
FinFuncion

Funcion color <- COLOR_byIndex(index)
	Definir color Como Texto;
	Si index < 0 Entonces 
		index = 0;
	FinSi
	si (index > 7) Entonces
		index = native_math_module(index, 8);
	FinSi
	index = math_sum(index, 30);
	color = command_graphicText(index);
FinFuncion

Funcion color <- COLOR_STYLE_BOLD
	Definir color Como Texto;
	color = command_graphicText(1);
FinFuncion

Funcion color <- COLOR_STYLE_PLAIN
	Definir color Como Texto;
	color = command_graphicText(0);
FinFuncion

Funcion result_string <- symbol_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

Funcion Num <- number_NULL
	Definir Num Como Entero;
	Num = -1;
FinFuncion

Funcion canvas_xy <- canvas_new_withPixel(CWx, CWy, pixel_background)
	Definir canvas_xy, canvas_x Como Texto;
	canvas_x  = string_repeatText(pixel_background, CWx);
	canvas_xy = string_repeatText(canvas_x, CWy);
FinFuncion

Funcion canvas_display(canvas, CWx, CWy)
	canvas_display_monoColor(canvas, CWx, CWy, "");
FinFuncion

Funcion canvas_display_monoColor(canvas, CWx, CWy, color)
	Definir i, slice_start, slice_end, norm_CWy Como Entero;
	Definir canvas_array, DrawX Como Texto;
	Si CWy > 0 Entonces
		Dimension canvas_array[CWy];
		norm_CWy = math_decrement(CWy);
		para i=0 Hasta norm_CWy con paso 1 Hacer
			slice_start = canvas_calculate_index(0, i, CWx);
			slice_end 	= canvas_calculate_index(0, math_increment(i), CWx);
			DrawX		= string_substring(canvas, slice_start, slice_end);
			canvas_array[i] = DrawX;
		FinPara	
		println_array_color(canvas_array, CWy, color);
	SiNo
		error_message_function("canvas_display_monoColor()", "error dimension CWy < 1");
	FinSi
FinFuncion

Funcion index_canvas <- canvas_calculate_index(x0, y0, CWx)
	Definir index_canvas Como Entero;
	index_canvas= math_sum(x0, (y0*CWx));
FinFuncion

Funcion canvas_point <- canvas_DrawPoint(canvas, CWx, CWy, x0, y0)
	Definir canvas_point Como Texto;
	canvas_point = canvas_DrawPoint_withPixel(canvas, CWx, CWy, x0, y0, pixel_plain());
FinFuncion

Funcion canvas_point <- canvas_DrawPoint_withPixel(canvas, CWx, CWy, x0, y0, pixel_symb)
	Definir canvas_point Como Texto;
	Definir post_pixel Como Entero;
	canvas_point = canvas;
	si x0 < CWx & y0 < CWy & x0 >= 0 & y0 >= 0 Entonces
		post_pixel = canvas_calculate_index(x0, y0, CWx);//x+(y*cX)=12+(1*40) = 52
		canvas_point = string_insert_withReplace(canvas_point, pixel_symb, post_pixel);
	FinSi
FinFuncion

Funcion pixel <- pixel_plain
	Definir pixel Como Texto;
	pixel = get_pixel_withIndex(1);
FinFuncion

Funcion pixel <- get_pixel_withIndex(index)
	Definir pixel Como Texto;
	Segun index Hacer
		caso 0:
			pixel = "·";
		caso 1:
			pixel = "¤";//*
		caso 2: 
			pixel = "ø";
		De Otro Modo:
			pixel = "Ø";
	FinSegun
FinFuncion

Funcion result_pixel <- canvas_getPixelRGB(b1, b2, b3, lum)
	Definir result_pixel Como Texto;
	Definir weight_b2, weight_b3, idx Como Entero;
	weight_b2 = b2 * 2;
	weight_b3 = b3 * 4;
	idx = math_sum(math_sum(weight_b2, weight_b3),  b1);
	Si lum > 0 Entonces
		result_pixel = COLOR_STYLE_BOLD();
	SiNo
		result_pixel = COLOR_STYLE_PLAIN();
	FinSi
	result_pixel = string_append(result_pixel, COLOR_byIndex[idx]);
	result_pixel = string_append(result_pixel, "¶");
FinFuncion

Funcion pixel <- canvas_getPixelRGB_8(b1, b2, b3, lum)
	Definir pixel Como Texto;//colors: 0,1,2,3,4,5,6,7
	Definir i, j, num, residue Como Entero;
	Definir rv, bv, gv Como Entero;
	pixel = "";
	num = b1;
	i = 0 ;
	mientras i < 3 Hacer 
		segun i Hacer 
			caso 0: 
				num = b1;
			caso 1: 
				num = b2;
			caso 2: 
				num = b3;
		FinSegun
		j = 0;
		Mientras j < 3 Hacer
			residue = math_module(num, 2);
			num = math_truncate(num/2);
			segun j Hacer 
				caso 0: 
					rv = residue;
				caso 1: 
					bv = residue;
				caso 2: 
					gv = residue;
			FinSegun
			j = math_increment(j);
		FinMientras
		pixel = string_append(pixel, canvas_getPixelRGB(rv, bv, gv, lum));
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '0', '9');//48-57
FinFuncion

Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
FinFuncion

Funcion color_asc <- command_graphicText(number_int)
	Definir color_asc Como Texto;
	color_asc = command_esc(integer_toString(number_int), "m");
FinFuncion

Funcion esc <- command_esc(middle_command, end_command)
    Definir esc Como Texto;
    esc = string_append(string_append(symbol_Escape(), middle_command), end_command);
FinFuncion

Funcion console_setCursor(pos_x, pos_y)
    Definir command_exe Como Texto;
	Definir pos_xNorm, pos_yNorm Como Entero;
	pos_xNorm   = math_increment(math_max_int(pos_x, 0));
	pos_yNorm   = math_increment(math_max_int(pos_Y, 0));
    command_exe = string_append(integer_toString(pos_xNorm), string_append(";", integer_toString(pos_yNorm)));
    native_print(command_esc(command_exe, "H"));
FinFuncion

Funcion PseudoLibLogo
	// Filas compiladas: 39 de 47
	// Render: 39 posiciones de cursor, 39 escrituras.
	// Celdas: 5164, espacios internos: 4882, secuencias ANSI: 10328
	// Cada celda contiene ESC[0m/ESC[1m + ESC[3Xm + ¶ (igual que canvas_getPixelRGB).
    Definir canvas Como Texto;
    Definir ancho, alto Como Entero;
	
    ancho <- 396;
    alto <- 47;
	
    canvas <- canvas_new_withPixel(ancho, alto, " ");
    canvas <- canvas_drawPoint(canvas, ancho, alto, ancho - 1, alto - 1);
    canvas_display(canvas, ancho, alto);
    user_input_wait();
    clearConsole();
    canvas <- canvas_drawPoint_withPixel(canvas, ancho, alto, ancho - 1, alto - 1, " ");
    canvas_display(canvas, ancho, alto);
	
    // Una única escritura por fila con contenido; ANSI y ¶ compilados en JS.
    console_setCursor(261, 0);
    Escribir Sin Saltar "[0m[34m¶[1m[36m¶";
    console_setCursor(169, 5);
    Escribir Sin Saltar "[1m[35m¶";
    console_setCursor(134, 6);
    Escribir Sin Saltar "[1m[36m¶";
    console_setCursor(364, 8);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶";
    console_setCursor(364, 9);
    Escribir Sin Saltar "[0m[30m¶[1m[35m¶[1m[35m¶";
    console_setCursor(297, 11);
    Escribir Sin Saltar "[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(32, 12);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶                                                                                                                                       [1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[30m¶                                                             [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[30m¶";
    console_setCursor(32, 13);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[30m¶                                                                                                                                   [1m[36m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[0m[30m¶                                                             [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶";
    console_setCursor(32, 14);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[30m¶                                                                                                                                 [1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[0m[34m¶                                                             [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶        [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶";
    console_setCursor(32, 15);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶          [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶                                                                                                                                [0m[34m¶[1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[0m[30m¶                                                             [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                                          [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶";
    console_setCursor(32, 16);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[31m¶             [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[30m¶                                                                                                                               [1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[0m[34m¶                                                             [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                                          [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶";
    console_setCursor(32, 17);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶              [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶        [0m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶                 [0m[30m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[0m[35m¶             [1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶            [0m[34m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[34m¶            [1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶    [1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[0m[30m¶              [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                                 [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶   [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(32, 18);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶              [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶     [0m[30m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[30m¶          [1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶          [1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶            [0m[34m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[0m[34m¶         [1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶ [1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[0m[30m¶          [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶                             [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(32, 19);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶             [0m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶    [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶        [1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[0m[35m¶       [1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶            [0m[34m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[0m[35m¶       [1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[0m[30m¶        [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                           [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(32, 20);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[31m¶            [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶    [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶        [0m[31m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶        [0m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[0m[35m¶        [1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[0m[35m¶      [1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶            [0m[34m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[0m[35m¶      [1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[34m¶   [0m[30m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[0m[34m¶      [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶    [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶                         [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶    [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(32, 21);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶     [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶                    [0m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶             [1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶     [1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶            [0m[34m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[34m¶     [1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[34m¶          [1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[0m[30m¶     [1m[36m¶[1m[37m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶            [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶           [0m[30m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(32, 22);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶        [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶              [1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[0m[35m¶              [1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶     [1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶            [0m[34m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[0m[35m¶     [1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[30m¶             [1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[0m[30m¶     [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶              [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶              [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶";
    console_setCursor(32, 23);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶            [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶      [0m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶    [1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶            [0m[34m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[0m[35m¶    [0m[34m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶              [1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[0m[30m¶    [1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[37m¶               [0m[30m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                       [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[30m¶              [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(32, 24);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶                              [0m[30m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶    [0m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[0m[34m¶    [1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶            [0m[34m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[0m[35m¶    [1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶              [1m[36m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[0m[34m¶    [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[30m¶               [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                       [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶               [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(21, 25);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶   [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶                                     [0m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶    [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶                           [1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶            [0m[34m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[35m¶    [0m[34m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶              [1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[0m[30m¶    [0m[36m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[36m¶[1m[36m¶              [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[34m¶                       [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶              [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(21, 26);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶   [1m[31m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶                             [1m[31m¶             [1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶   [1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶                          [1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[0m[35m¶          [0m[34m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[0m[35m¶     [1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[34m¶           [1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[0m[34m¶     [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶            [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶            [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(24, 27);
    Escribir Sin Saltar "[0m[30m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶   [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶                           [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶          [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶    [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶          [0m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶          [1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶       [1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[0m[35m¶      [1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶       [1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[0m[30m¶      [1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[34m¶       [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                         [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶     [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶       [0m[30m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[30m¶";
    console_setCursor(32, 28);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶                         [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶      [0m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶         [1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[0m[35m¶       [1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[30m¶       [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[30m¶                          [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶     [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(32, 29);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[31m¶                           [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[30m¶         [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶         [1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶ [1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[35m¶         [1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶ [1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[1m[36m¶[1m[37m¶[0m[30m¶         [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[34m¶                            [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶     [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶        [0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶ [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[30m¶";
    console_setCursor(32, 30);
    Escribir Sin Saltar "[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶                              [0m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[0m[35m¶                [1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[35m¶[1m[37m¶[1m[37m¶[0m[35m¶               [1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶    [1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[34m¶            [1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶    [1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[1m[37m¶[0m[30m¶             [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶                                [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶     [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶        [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(81, 31);
    Escribir Sin Saltar "[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                   [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶              [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶        [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶        [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                            [0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶";
    console_setCursor(34, 32);
    Escribir Sin Saltar "[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                                [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶     [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                     [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶";
    console_setCursor(26, 33);
    Escribir Sin Saltar "[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶                             [0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶                    [0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶";
    console_setCursor(23, 34);
    Escribir Sin Saltar "[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶                    [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[33m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶     [0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                    [0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶                 [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶";
    console_setCursor(20, 35);
    Escribir Sin Saltar "[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶         [0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶     [0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶        [0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶                     [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                      [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶";
    console_setCursor(17, 36);
    Escribir Sin Saltar "[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶       [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶      [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶           [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶         [0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[33m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶ [1m[35m¶[1m[35m¶                     [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                       [0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶";
    console_setCursor(12, 37);
    Escribir Sin Saltar "[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶               [0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶         [0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶                 [0m[31m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶            [0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶                           [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶                         [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶";
    console_setCursor(8, 38);
    Escribir Sin Saltar "[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶               [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                                                     [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                 [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                  [0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶          [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶     [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶                                [0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[36m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶                            [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶";
    console_setCursor(3, 39);
    Escribir Sin Saltar "[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶          [0m[30m¶[0m[35m¶                                    [1m[35m¶[1m[35m¶                                                                                                                [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[30m¶[0m[30m¶              [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                                        [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                               [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶     [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶";
    console_setCursor(0, 40);
    Escribir Sin Saltar "[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[31m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                                          [1m[35m¶[1m[35m¶[1m[35m¶                                                                                                                               [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶                                                                              [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶                                 [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶       [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶";
    console_setCursor(3, 41);
    Escribir Sin Saltar "[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶[0m[30m¶[0m[35m¶                                                      [1m[35m¶[1m[35m¶[1m[35m¶                                                                                                                                     [0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶  [1m[36m¶[1m[36m¶[0m[36m¶                                                                              [0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶                                      [0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶            [0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[34m¶[0m[30m¶[0m[30m¶[0m[30m¶    [1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[30m¶";
    console_setCursor(204, 42);
    Escribir Sin Saltar "[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶                                                                                            [0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶[0m[32m¶                                              [0m[30m¶[0m[32m¶[0m[30m¶[0m[30m¶[0m[30m¶                              [0m[36m¶[1m[36m¶";
    console_setCursor(153, 45);
    Escribir Sin Saltar "[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶";
    console_setCursor(152, 46);
    Escribir Sin Saltar "[0m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[1m[36m¶[0m[36m¶";

    user_input_wait();
FinFuncion

Proceso pseudoLib
    PseudoLibLogo;
FinProceso