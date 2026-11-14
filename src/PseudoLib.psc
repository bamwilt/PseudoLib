///%%%%%[ MAIN.................... ]%%%%%%%[    ##0    ]%%%%%%%%%%%%%%%%%%%%


Funcion main
	println("Hello\nWorld\nPseudoLib!!!");
FinFuncion

///%%%%%[ Pseudo_lib v 0.9.7 ]%%%%%%%%%%%%%%[    #1     ]%%%%%%%%%%%%%%%%%%%%
//___________________________________________________________________________
// ::: TABLE MODULES / CODE_SEARCH: Ctrl+F / year:2026 / © Bryan.A.M.Wilt ::: 
//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// :::: [ ##0 / MAIN ] :::: [  TABLE MODULES  ] :::: [ ##1 / END CODE ] :::::
//___________________________________________________________________________
//  CODE  ::       NAME MODULE         ::        USE           :: STATE
//---------------------------------------------------------------------------
//  #NAV  :: NATIVE                      :: native_                    :: [+]
//  #INP  :: INPUT                       :: user_input_                :: [+]
//  #STR  :: STRING                      :: string_                    :: [+]
//  #ARR  :: ARRAY                       :: array_                     :: [p]
//  #PRI  :: PRINTERS                    :: print_ / prinln_           :: [p]
//  #SLE  :: SLEEP                       :: sleep_                     :: [+]
//  #LOG  :: LOGS                        :: log_                       :: [+]
//  #TES  :: TEST                        :: test_                      :: [+]
//  #NUM  :: NUMBER                      :: int_ / number_ / float     :: [+]
//  #BIN  :: BINARY_STRING               :: binarystring_              :: [+]
//  #MAT  :: MATH                        :: math_                      :: [+]
//  #BOO  :: BOOLEAN                     :: boolean_                   :: [+]
//  #COL  :: COLOR                       :: COLOR_                     :: [+]
//  #VAL  :: VALUE                       :: value_                     :: [+]
//  #TAG  :: TAG                         :: tag_                       :: [+]
//  #PST  :: POINTER_STRING              :: stringPointer_             :: [+]
//  #CLL  :: COLLECTION                  :: collection_                :: [+]
//  #CUN  :: COLLECTION_UNIFORM          :: collectionUniform_         :: [+]
//  #CRO  :: COLLECTION_ROUTED           :: collectionRouted_          :: [+]
//  #CDI  :: COLLECTION_DICTIONARY       :: collectionDictionary_      :: [p]
//  #CDU  :: COLLECTION_DUAL_UNIFORM     :: collectionDualUniform_     :: [X]
//  #CDT  :: COLLECTION_DICTIONARY_TYPED :: collectionDictionaryTyped_ :: [X]
//  #DEQ  :: DEQUE                       :: util_deque_                :: [+]
//  #QUE  :: QUEUE                       :: util_queue_                :: [+]
//  #STA  :: STACK                       :: util_stack_                :: [+]
//  #LIS  :: LIST                        :: util_list_                 :: [+]
//  #SET  :: SET                         :: util_set_                  :: [+]
//  #MAP  :: MAP                         :: util_map_                  :: [p]
//  #OBJ  :: OBJECTS                     :: object_                    :: [X]
//  #TEM  :: TEMPORAL\CHRONO_UNIT        :: temporal_ : chrono_unit    :: [+]
//  #LDA  :: LOCALDATE                   :: localDate_                 :: [+]
//  #LTI  :: LOCALTIME                   :: localTime_                 :: [+]
//  #LDT  :: LOCALDATE_TIME              :: localDate_time_            :: [+]
//  #DUR  :: DURATION                    :: duration_                  :: [+]
//  #PER  :: PERIOD                      :: period_                    :: [+]
//  #CAN  :: CANVAS                      :: canvas_                    :: [+]
//  #SPR  :: SPRITE                      :: sprite_                    :: [p]
//  #TCO  :: TCOMPOMNENT                 :: tComponent_                :: [p]
//  #SCH  :: SCHEME                      :: scheme_                    :: [X]
//  #TUI  :: TUI                         :: tui_                       :: [X]
//  #ASC  :: ASCCI/HASH                  :: ascii_                     :: [+]
//  #VEC  :: VEC                         :: vec_                       :: [X]
//  #CON  :: CONSOLE                     :: console_                   :: [X]
//---------------------------------------------------------------------------
// :::: LINES_CODE: ~10000 ::: +41 MODULES ::: ( Pseint / version.2023 ) ::::
//___________________________________________________________________________
//::::::::::::::::::::::::::: ( STATE MEANING ) :::::::::::::::::::::::::::::
//---------------------------------------------------------------------------
//  [+]: Stable                                                        
//  [D]: Current Development (Unusable temporaly)                     
//  [p]: stable (Pending additions)                                   
//  [X]: Unusable / undeveloped state                                  
//___________________________________________________________________________
//    TYPE   ::::    TYPE_PSEINT     
//---------------------------------------------------------------------------
//    String  =  Texto, Caracter, Cadena
//    Int 32b =  Entero
//    Float 32b =  Real, Numerico, Numero
//   Boolean  =  Logico 
//     | 	  =  || 
//     & 	  =  &&
//  return    = var <- FinFuncion(returns var at the end of the function)
//___________________________________________________________________________
//::::::::::::::::::::::: ( EXTENDED SYMBOLS SPANISH ) ::::::::[#ESP]::::::::
//---------------------------------------------------------------------------
//  ¡ ¢ £ ¤ ¥ ¦ § ¨ © ª « ~ ­® ¯ ° ± ² ³ ´ µ ¶ · ¸ ¹ º » ¼ ½ ¾ ¿ À Á Â Ã Ä 
// 
// Å Æ Ç È É Ê Ë Ì Í Î Ï Ð Ò Ó Ô Õ Ö × Ø Ù Ú Û Ü Ý Þ ß à á â ã ä å æ ç è é é 
//
// ê ë ì í î ï ð ñ ò ó ô õ ö ÷ ø ù ú ü ý þ ÿ ñ Ñ
//___________________________________________________________________________
//::::::::::::::::::::::::::::: ( TO-DO LIST ) :::::::::::::::::::::::::::::: 
//---------------------------------------------------------------------------
// metodos: array_sort, Array_reverse, array_filter, Runnable(opcional)
// contains_IgnoreCase, posible agregado de mas componentes (opcional)
// print color 
// <TODO: agregar hasColor y DeleteColor >  Color
// <TODO: agregar soporte para monocolor y agregar Como maquina de 
//        escritura (Hell_ luego Hello)>  en print_progress_formater()
// recordar hacer un modulo solo de condicionales repetidas
//___________________________________________________________________________
//::::::::::::::::[ You are not expected to understand this ]::::::::::::::::
//---------------------------------------------------------------------------
///%%%%%[ NATIVE.................. ]%%%%%%%[   #NAT    ]%%%%%%%%%%%%%%%%%%%%
Funcion length <- native_string_length(text)
	Definir length Como Entero;
	length = Longitud(text);
FinFuncion

Funcion result_string <- native_number_toString(num)
	Definir result_string Como Texto;
	result_string = ConvertirATexto(num);
FinFuncion

Funcion result <- native_string_append(str1, str2)
	Definir result Como Texto;
	result = Concatenar(str1, str2);
FinFuncion

Funcion strSubs <- native_string_substring(result_string, start, end)
	Definir strSubs Como Texto;
	strSubs = subcadena(result_string, start, end);
FinFuncion

Funcion result_string <- native_string_ToUpperCase(text)
	Definir result_string Como Texto;
	result_string = Mayusculas(text);
FinFuncion

Funcion result_string <- native_string_ToLowerCase(text)
	Definir result_string Como Texto;
	result_string = Minusculas(text);
FinFuncion

Funcion num <- native_number_parseNum(text)
	Definir num Como Numero;
	num = ConvertirANumero(text);
FinFuncion

Funcion native_println(text)
	Escribir text;
FinFuncion

Funcion native_printer_display(decorator, separator, text)
	Escribir decorator, separator, text;
FinFuncion

Funcion native_print(text)
	Escribir text Sin Saltar;
FinFuncion

Funcion native_console_clear
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

Funcion num_abs <- native_math_abs(num)
	Definir num_abs Como Real;
	num_abs = Abs(num);
FinFuncion

Funcion num_redon <- native_math_round(num)
	Definir num_redon Como Entero;
	num_redon = Redon(num);
FinFuncion

Funcion num_raiz <- native_math_sqrt(num)
	Definir num_raiz Como Real;
	Si num < 0 Entonces
		num_raiz = 0;
	SiNo
		num_raiz = Raiz(num);
	FinSi
FinFuncion

Funcion num_sen <- native_math_sin(angle_rad)
	Definir num_sen Como Real;
	num_sen = Sen(angle_rad);
FinFuncion

Funcion num_cos <- native_math_cos(angle_rad)
	Definir num_cos Como Real;
	num_cos = Cos(angle_rad);
FinFuncion

Funcion num_tan <- native_math_tan(angle_rad)
	Definir num_tan Como Real;
	num_tan = Tan(angle_rad);
FinFuncion

Funcion num_ln <- native_math_ln(num)
	Definir num_ln Como Real;
	Si num <= 0 Entonces
		num_ln = 0;
	SiNo
		num_ln = Ln(num);
	FinSi
FinFuncion

Funcion num_log <- native_math_log(num, base)
	Definir num_log Como Real;
	Si num <= 0 Entonces
		num_log = 0; 
	SiNo
		num_log = Ln(num) / Ln(base);
	FinSi
FinFuncion

Funcion num_pot <- native_math_pow(num, num_pow)
	Definir num_pot Como Real;
	num_pot = num ^ num_pow;
FinFuncion

Funcion num_exp <- native_math_exp(num)
	Definir num_exp Como Real;
	num_exp = Exp(num);
FinFuncion

Funcion Time_num <- native_getLocal_time
	Definir Time_num Como Entero;
	Time_num = HoraActual();//102030
FinFuncion

Funcion Date_num <- native_getLocal_date
	Definir Date_num Como Entero;
	Date_num = FechaActual();//20260407;
FinFuncion

Funcion length <- native_int_length(number)
	Definir length, integer_part Como Entero;
	Definir positive_value, log_result Como Real;
	Si number == 0 Entonces
		length = 1;
	SiNo
		positive_value = native_math_abs(number);
		log_result     = native_math_log(positive_value, 10);
		integer_part   = native_math_truncate(log_result);
		length         = integer_part + 1;
	FinSi
FinFuncion

Funcion result_char <- native_char_at(text, index)
	Definir result_char Como Texto;
	result_char = native_string_substring(result_string, index, index);
FinFuncion

Funcion result_max <- native_math_max(value, limit)
	Definir result_max Como Numero;
	result_max = (value + limit + native_math_abs(value - limit)) / 2;
FinFuncion

Funcion result_min <- native_math_min(value, limit)
	Definir result_min Como Numero;
	result_min = (value + limit - native_math_abs(value - limit)) / 2;
FinFuncion

Funcion num_Negate <- native_math_negated(num)
	Definir num_Negate Como Numero;
	num_Negate = (-num);
FinFuncion

Funcion result <- if_else(condition, result, result2)
	Si !(condition) Entonces
		result = result2;
	FinSi	
FinFuncion

Funcion result <- if(condition, result, TYPE)
	Si !(condition) Entonces
		result = value_getNullType(TYPE);
	FinSi
FinFuncion
///%%%%%[ INPUT................... ]%%%%%%%[   #INP    ]%%%%%%%%%%%%%%%%%%%%
//----[ PRIMITIVE ]--------------------------------------------------[#]
Funcion user_input <- user_input_String
	Definir user_input Como Texto;
	Leer user_input;
FinFuncion

Funcion user_input <- user_input_integer
	Definir user_input Como Entero;
	Definir user_input_str Como Texto;
	user_input_str = user_input_String;
	Si string_isNumber_int(user_input_str) Entonces
		user_input = native_number_parseNum(user_input_str);
	Sino
		user_input = number_NULL();
	FinSi
FinFuncion

Funcion user_input <- user_input_boolean
	Definir user_input Como Logico;
	user_input = string_isBoolean_true(user_input_String());
FinFuncion

Funcion user_input <- user_input_Float
	Definir user_input Como Real;
	Definir user_input_str Como Texto;
	user_input_str = user_input_String();
	Si string_isNumber_float(user_input_str) Entonces
		user_input = native_number_parseNum(user_input_str);
	Sino
		user_input = number_NULL();
	FinSi
FinFuncion

Funcion user_input_wait
	Esperar Tecla;
FinFuncion
//----[ OPTIONS ]----------------------------------------------------[#]
Funcion user_input <- user_input_options_message(options_text, message, TYPE)
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Entero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = user_input_options_separator_message(options_text, symbol_separator_Simple(), message, TYPE);
FinFuncion

Funcion user_input <- user_input_options_separator_message(options_text, separator, message, TYPE)
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Entero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	println(message);
	user_input = __private_user_input_options_separator(user_input_String(), options_text, separator, TYPE);
FinFuncion

Funcion user_input <- user_input_options(options_text, TYPE)
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Entero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = __private_user_input_options_separator(user_input_String(), options_text, symbol_separator_Simple(), TYPE);
FinFuncion

Funcion user_input <- user_input_options_ignoreCase(options_text, TYPE)
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Entero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = __private_user_input_options_separator(string_ToLowerCase(user_input_String()), string_ToLowerCase(options_text), symbol_separator_Simple(), TYPE);
FinFuncion

Funcion user_input <- user_input_options_separator(options_text, separator, TYPE)
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Entero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = __private_user_input_options_separator(user_input_String(), options_text, separator, TYPE);
FinFuncion

Funcion user_input <- __private_user_input_options_separator(user_input_obtained, options_text, separator, TYPE)
	user_input_obtained = if(string_struct_contains(user_input_obtained, options_text, separator), user_input_obtained, TYPE_STRING());
	Segun TYPE Hacer
		caso TYPE_BOOLEAN(): Definir user_input Como Logico;
		caso TYPE_INT(): Definir user_input Como Entero;
		caso TYPE_FLOAT(): Definir user_input Como Real;
		De Otro Modo: Definir user_input Como Texto;
	FinSegun
	user_input = value_stringToType(user_input_obtained, TYPE);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion result_string <- symbol_separator_Simple
	Definir result_string Como Texto;
	result_string = ",";
FinFuncion
///%%%%%[ STRING.................. ]%%%%%%%[   #STR    ]%%%%%%%%%%%%%%%%%%%%
//----[ APPENDS ]--------------------------------------------------------[#]
Funcion result <- string_append_withSeparator(str1, str2, separator)
	Definir result Como Texto;
	result = native_string_append(str1, native_string_append(separator, str2));
FinFuncion

Funcion result <- string_append(str1, str2)
	Definir result Como Texto;
	result = native_string_append(str1, str2);
FinFuncion

Funcion text_update <- string_append_in_breakLines(text, text_append)
	Definir text_update Como Texto;
	text_update = string_append_in_separators(text, text_append, "\n");
FinFuncion

Funcion text_result <- string_append_in_separators(text, text_append, separator)
    Definir text_result Como Texto;
    Definir index_sep, sep_length Como Entero;
    text_result = "";
    sep_length = native_string_length(separator);
    text_result = string_append(text_result, text_append);
    index_sep = string_indexOf(text, separator);
    Mientras index_sep >= 0 Hacer
        text_result = string_append(text_result, string_substring(text, 0, math_sum(index_sep, sep_length)));
        text_result = string_append(text_result, text_append);
        text = string_substring_from(text, math_sum(index_sep, sep_length));
        index_sep = string_indexOf_fromIndex(text, separator, 0);
    FinMientras
    text_result = string_append(text_result, text);
FinFuncion
//----[ SUBSTRING ]------------------------------------------------------[#]
Funcion strSubs <- string_substring(result_string, start, end)
	Definir strSubs, str_data Como Texto;
	Definir end_substring Como Entero;
	log_error_condition_rangeString("string_substring", result_string, start, end);
	end_substring = math_max( math_minus(end, 1), 0);
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
	end_substring = math_min(math_increment(index), text_length);
	result_string = string_substring(text, index, end_substring);
FinFuncion
//----[ INDEX ]----------------------------------------------------------[#]
Funcion result <- string_indexOf(text, text_match)// --- >
	Definir result Como Entero;
	result = string_indexOf_fromIndex(text, text_match, 0);
FinFuncion
//speed 23 s string_test:10004
Funcion index <- string_indexOf_fromIndex(text, match, start_index)
	Definir index, i, match_length, end_index, value_NULL Como Entero;
	Definir isMatch Como Logico;
	value_NULL   = number_NULL();
    index        = value_NULL;
    match_length = native_string_length(match);
	i            = math_max(start_index, 0);
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

Funcion index <- string_indexOf_fromIndex_v2(text, match, start_index)
    Definir index, i, match_length, end_index Como Entero;
    Definir i_endSub, start_i, value_NULL Como Entero;
    Definir isMatch Como Logico;
    value_NULL   = number_NULL();
    index        = value_NULL;
    match_length = native_string_length(match);
    start_i      = math_max(start_index, 0);
    end_index    = math_minus(native_string_length(text), match_length);
    Para i = start_i Hasta end_index Con Paso 1 Hacer
        Si !isMatch Entonces
			i_endSub = math_sum(i, match_length);
			isMatch  = string_isEquals(match, string_substring(text, i, i_endSub));
			Si isMatch Entonces
				index = i;
			FinSi
		FinSi
    FinPara
FinFuncion

Funcion result <- string_lastIndexOf(text, text_match)//< ---
	Definir result Como Entero;
	result = string_lastindexOf_fromIndex(text, text_match, native_string_length(text));
FinFuncion
//speed 23 s string_test:10004
Funcion index <- string_LastindexOf_fromIndex(text, match, start_index)
	Definir index, i, match_length, end_index Como Entero;
	Definir condition Como Logico;
    index = number_NULL();
    match_length = native_string_length(match);
	i = math_max(start_index, match_length);
	end_index = match_length;
	Mientras end_index <= i & number_isEquals(index, -1) Hacer
		Si string_isEquals(match, string_substring(text, math_minus(i, match_length), i)) Entonces
			index = math_minus(i, match_length);
			i = -1;
		SiNo
			i = math_decrement(i);
		FinSi
	FinMientras
FinFuncion
//----[ LENGTH ]---------------------------------------------------------[#]
Funcion num <- string_length(text)
	Definir num Como Entero;
	num = native_string_length(text);
FinFuncion

Funcion length_String <- string_length_ToString(text)
	Definir length_String Como Texto;
	length_String = native_number_toString(native_string_length(text));
FinFuncion
//----[ INSERT ]---------------------------------------------------------[#]
Funcion result_string <- string_insert(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, false);
FinFuncion

Funcion result_string <- string_insert_withReplace(text, text_insert, index)
	Definir result_string Como Texto;
	result_string=__private_string_insert_general(text, text_insert, index, true);
FinFuncion

Funcion result_string <- string_insert_from_End(text, text_insert)
	Definir result_string Como Texto;
	result_string = string_insert(text, text_insert, native_string_length(text));
FinFuncion

Funcion result_string <- __private_string_insert_general(text, text_insert, index, isReplace)
	Definir result_string, before, after Como Texto;
	Definir index_after Como Entero;
	before        = string_substring(text, 0, index);
	index_after   = math_sum(index, if_else(isReplace, native_string_length(text_insert), 0));
	after         = string_substring_from(text, math_min(index_after, native_string_length(text)));
	result_string = string_append_withSeparator(before, after, text_insert);
FinFuncion

Funcion result_string <- string_pad_limitStart(text, text_pad, pad_length)
	Definir result_string, res_pad Como Texto;
	Definir text_length, res_length, end_substring Como Entero;
	text_length   = native_string_length(text);
	res_length    = math_minus(pad_length, text_length);
	end_substring = math_max(res_length, 0);
	res_pad       = string_substring(text_pad, 0, end_substring);
	result_string = string_insert(text, res_pad, 0);
FinFuncion

Funcion result_string <- string_pad_limitEnd(text, text_pad, pad_length)
	Definir result_string, res_pad Como Texto;
	Definir text_length, res_length Como Entero;
	text_length		= native_string_length(text);
	res_length      = math_min(text_length, pad_length);
	res_pad         = string_substring(text_pad, res_length, pad_length);
	result_string	= string_insert(text, res_pad, text_length);
FinFuncion

Funcion result_string <- string_pad(text, text_pad)
	Definir result_string Como Texto;
	Definir pad_length Como Entero;
	pad_length    = native_string_length(text_pad);
	result_string = string_pad_limitStart(text, text_pad, pad_length);
FinFuncion

Funcion result_string <- string_pad_end(text, text_pad)
	Definir result_string Como Texto;
	Definir pad_length Como Entero;
	pad_length		= native_string_length(text_pad);
	result_string   = string_pad_limitEnd(text, text_pad, pad_length);
FinFuncion

Funcion result_string <- string_fit(text, text_pad)
	Definir result_string, res_pad Como Texto;
	Definir pad_length Como Entero;
	pad_length		= native_string_length(text_pad);
	result_string   = string_pad_limitStart(text, text_pad, pad_length);
	result_string	= string_substring(result_string, 0, pad_length);
FinFuncion

Funcion result_string <- string_fit_end(text, text_pad)
	Definir result_string, res_pad Como Texto;
	Definir pad_length Como Entero;
	pad_length		= native_string_length(text_pad);
	result_string   = string_pad_limitEnd(text, text_pad, pad_length);
	result_string	= string_substring(result_string, 0, pad_length);
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
//----[ DELETE ]---------------------------------------------------------[#]
Funcion result_str <- string_remove(text, start, end)
	Definir result_str, start_Str, end_Str Como Texto;//Hello World (5, 8)
	log_error_condition_rangeString("string_remove()", text, start, end);
	start_Str  = string_substring(text, 0, start);//Hello <-]
	end_Str    = string_substring_from(text, end);//.->rld  
	result_str = string_append(start_Str, end_Str);//Hello+rld = Hellorld
FinFuncion

Funcion result_str <- string_remove_From(text, start)
	Definir result_str Como Texto;
	result_str = string_remove(text, start, native_string_length(text));
FinFuncion
//----[ replace ]-------------------------------------------------------[#]
Funcion result_replace <- string_replace(text, text_match, text_replace)
    Definir result_replace, repeated_replace, sub_current, sub_before, sub_from Como Texto;
    Definir match_length, text_len, end_index, current_position, i, i_endSub, count, total_count, mul_result Como Entero;
    Definir is_match Como Logico;
    match_length = native_string_length(text_match);
    result_replace = "";
    current_position = 0;
    text_len = native_string_length(text);
    Si match_length = 0 | text_len = 0 | match_length > text_len Entonces
        end_index = -1;
    SiNo
        end_index = math_minus(text_len, match_length);
    FinSi
    i = 0;
    Mientras i <= end_index Hacer
        i_endSub = math_sum(i, match_length);
        sub_current = string_substring(text, i, i_endSub);
        is_match = string_isEquals(text_match, sub_current);
        Si is_match Entonces
            sub_before = string_substring(text, current_position, i);
            result_replace = string_append(result_replace, sub_before);
            count = string_countMatches_strict(text, text_match, i_endSub, match_length);
            total_count = math_increment(count);
            repeated_replace = string_repeatText(text_replace, total_count);
            result_replace = string_append(result_replace, repeated_replace);
            mul_result = total_count * match_length;
            current_position = math_sum(i, mul_result);
            i = current_position;
        SiNo
            i = math_sum(i, 1);
        FinSi
    FinMientras
    sub_from = string_substring_from(text, current_position);
    result_replace = string_append(result_replace, sub_from);
FinFuncion

Funcion result <- string_replace_first(text, text_match, text_Replace)
	Definir result Como Texto;
    Definir index Como Entero;
    index = string_indexOf(text, text_match);
    result = __private_string_replace_inIndex(text, text_match, text_Replace, index);
FinFuncion

Funcion result <- string_replace_last(text, text_match, text_Replace)
	Definir result Como Texto;
    Definir index Como Entero;
    index = String_lastIndexOf(text, text_match);
    result = __private_string_replace_inIndex(text, text_match, text_Replace, index);
FinFuncion

Funcion result <- __private_string_replace_inIndex(text, text_match, text_Replace, index)
    Definir result, end_text Como Texto;
    Si index < 0 Entonces
        result = text;
    SiNo
        result = string_substring(text, 0, index);
        result = string_append(result, text_Replace);
		end_text = string_substring_from(text, math_sum(index, native_string_length(text_match)));
        result = string_append(result, end_text);
    FinSi
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

Funcion text_Reverse <- string_TextReverse(text)
	Definir text_Reverse Como Texto;
	Definir i, indexText Como Entero;
	text_Reverse = "";
	indexText = native_string_length(text);
	Para i = 0 Hasta indexText Con Paso 1 Hacer
		text_Reverse = string_append(text_Reverse, char_At(text, math_minus(indexText, i)));
	FinPara
FinFuncion
//----[ UPPER/LOWER CASE ]-----------------------------------------------[#]
Funcion result_string <- string_toUpperCase(text)
	Definir result_string Como Texto;
	result_string = native_string_ToUpperCase(text);
FinFuncion

Funcion result_string <- string_toLowerCase(text)
	Definir result_string Como Texto;
	result_string = native_string_ToLowerCase(text);
FinFuncion
//----[ COUNT_MATCH ]----------------------------------------------------[#]
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
    j              = math_max(start_index, 0);
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

Funcion count <- string_countMatches_sliding(text, text_matcher, start_index, advance_on_match)
    Definir count, matcher_len, text_len, end_index, j Como Entero;
    Definir sub_text Como Texto;
    Definir is_match Como Logico;
    matcher_len = native_string_length(text_matcher);
    text_len    = native_string_length(text);
    count       = 0;
    j           = math_max(start_index, 0);
    end_index   = math_minus(text_len, matcher_len);
    Mientras j <= end_index Hacer
        sub_text = string_substring(text, j, math_sum(j, matcher_len));
        is_match = string_isEquals(text_matcher, sub_text);
        Si is_match Entonces
            count = math_increment(count);
            j     = math_sum(j, advance_on_match);
        SiNo
            j     = math_sum(j, 1);
        FinSi
    FinMientras
FinFuncion

Funcion count <- string_countMatches_overlap_fromIndex(text, text_matcher, start_index)
    count = string_countMatches_sliding(text, text_matcher, start_index, 1);
FinFuncion

Funcion count <- string_countMatches_fromIndex(text, text_matcher, start_index)
    Definir matcher_len Como Entero;
    matcher_len = native_string_length(text_matcher);
    count       = string_countMatches_sliding(text, text_matcher, start_index, matcher_len);
FinFuncion

Funcion count <- string_countMatches_overlap(text, text_matcher)
    Definir count Como Entero;
    count = string_countMatches_overlap_fromIndex(text, text_matcher, 0);
FinFuncion

Funcion count <- string_countMatches(text, text_matcher)
	Definir count Como Entero;
	count = string_countMatches_fromIndex(text, text_matcher, 0);
FinFuncion
//----[ contains ]------------------------------------------------------[#]
Funcion boolean <- string_contains(text, text_match)
	Definir boolean Como Logico;
	boolean = string_indexOf(text, text_match) > -1;
FinFuncion

Funcion found <- string_struct_contains_ignoreCase(text_search, string_struct, separator)
	Definir found Como Logico;
	found = string_struct_contains(native_string_toLowerCase(text_search), native_string_toLowerCase(string_struct), separator);
FinFuncion

Funcion found <- string_struct_contains(text_search, string_struct, separator)
	Definir found Como Logico;
	Definir startIndex, endIndex, collectionLength, separatorLength Como Entero;
	Definir currentToken Como Texto;
	found = false();
	startIndex = 0;
	collectionLength = native_string_length(string_struct);
	separatorLength = native_string_length(separator);
	Mientras startIndex < collectionLength Hacer
		endIndex = string_indexOf_fromIndex(string_struct, separator, startIndex);
		Si endIndex < 0 Entonces
			endIndex = collectionLength;
		FinSi
		currentToken = string_substring(string_struct, startIndex, endIndex);
		Si string_isEquals(text_search, currentToken) Entonces
			found = true();
			startIndex = collectionLength;
		SiNo
			startIndex = math_sum(endIndex, separatorLength);
		FinSi
	FinMientras
FinFuncion
//----[ STATE ]----------------------------------------------------------[#]
Funcion boolean <- string_isEmpty(text)
	Definir boolean Como Logico;
	boolean = boolean_isEquals_general(text, "");
FinFuncion

Funcion boolean <- string_isBlank(text)
	Definir boolean Como Logico;
	Definir i Como Entero;
	Definir char_Current Como Texto;
	boolean = true();
	i = 0;
	Mientras i < native_string_length(text) Hacer
		char_Current = char_At(text, i);
		boolean = boolean_isEquals_general(Char_Current, " ");
		i = if_else(boolean, math_increment(i), math_sum(i, native_string_length(text)));
	FinMientras
FinFuncion
//----[ REVERSE ]--------------------------------------------------------[#]
Funcion boolean <- string_startsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring(text, 0, native_string_length(text_match)), text_match);
FinFuncion

Funcion boolean <- string_endsWith(text, text_match)
	Definir boolean Como Logico;
	boolean = string_isEquals(string_substring_from(text, math_minus(native_string_length(result_string), numIndex)), text_match);
FinFuncion
//----[ COMPARISON ]-----------------------------------------------------[#]
Funcion boolean <- string_isEquals(str1, str2)
	Definir boolean Como Logico;
	boolean = boolean_isEquals_general(str1, str2);
FinFuncion

Funcion boolean <- string_isEquals_ignoreCase(str1, str2)
	Definir boolean Como Logico;
	boolean = string_isEquals(native_string_toUpperCase(str1), native_string_toUpperCase(str2));
FinFuncion

Funcion isNull <- string_isNull(value_string) 
	Definir isNull Como Logico;
	isNull = string_isEquals(value_string, string_NULL());
FinFuncion

Funcion zero_count <- __private_number_countLeadingZeros(str_unsigned, str_length)
	Definir zero_count Como Entero;
	zero_count = math_min(string_countMatches_strict(str_unsigned, "0", 0, 1), math_decrement(str_length));
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

Funcion boolean <- string_isBoolean(text)
	Definir boolean Como Logico;
	boolean = string_isBoolean_false(text) | string_isBoolean_true(text);
FinFuncion

Funcion boolean <- string_isBoolean_false(text)
	Definir boolean Como Logico;
	Definir index Como Entero;
	boolean = false;
	text = native_string_toLowerCase(text);
	index = 0;
	Mientras !boolean & !string_isEquals(array_string_Booleans_False(index), string_NULL()) hacer 
		boolean = string_isEquals(text, array_string_Booleans_False(index));
		index = math_increment(index);
	FinMientras
FinFuncion

Funcion boolean <- string_isBoolean_true(text)
	Definir boolean Como Logico;
	Definir index Como Entero;
	boolean = false;
	text = native_string_toLowerCase(text);
	index = 0;
	Mientras !boolean & !string_isEquals(array_string_Booleans_True(index), string_NULL()) hacer 
		boolean = string_isEquals(text, array_string_Booleans_True(index));
		index = math_increment(index);
	FinMientras
FinFuncion

Funcion boolean <- char_isNumber(char)
	Definir boolean Como Logico;
	boolean = ascii_IsNumberSymbols(char);
FinFuncion

Funcion int_result <- string_compareTo(string_value0, string_value1)
	Definir int_result Como Entero;
	int_result = boolean_compareTo_general(string_value0, string_value1);
FinFuncion

Funcion isValid <- string_index_isInRange(result_string, start, end)
    Definir isValid Como Logico;
    Definir num_length Como Entero;
    num_length = string_Length(result_string);
    isValid = number_index_isInRange(num_length, start, end);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion value <- array_string_Booleans_False(index)
	Definir value Como Texto;
	segun index hacer 
		caso 0: value = "false";
		caso 1: value = "falso";
		caso 2: value = "no";
		caso 3: value = "f";
		caso 4: value = "n";
		caso 5: value = "0";
		De Otro Modo:
			value = string_NULL();
	FinSegun
FinFuncion

Funcion value <- array_string_Booleans_True(index)
	Definir value Como Texto;
	segun index hacer 
		caso 0: value = "true";
		caso 1: value = "verdadero";
		caso 2: value = "yes";
		caso 3: value = "Si";
		caso 4: value = "t";
		caso 5: value = "v";
		caso 6: value = "y";
		caso 7: value = "s";
		caso 8: value = "1";
		De Otro Modo:
			value = string_NULL();
	FinSegun
FinFuncion

Funcion result_string <- string_NULL
	Definir result_string Como Texto;
	result_string = "";
FinFuncion
///%%%%%[ ARRAY................... ]%%%%%%%[   #ARR    ]%%%%%%%%%%%%%%%%%%%%
//----[ OFSTRING ]----------------------------------------------------[#]
Funcion str_array <- array_ofString(array, Size, TYPE)
	Definir str_array Como Texto;
	str_array = array_ofString_withSeparator(array, Size, TYPE, symbol_separator_Simple());
FinFuncion

Funcion str_array <- array_ofString_withSeparator(array, Size, TYPE, separator)
	Definir str_array Como Texto;
	Definir i Como Entero;
	str_array = "";
	i=0;
	Size = math_decrement(Size);
	Mientras i < Size Hacer
		str_array = string_append(str_array, value_TypeToString(array[i], TYPE));
		str_array = string_append(str_array, separator);
		i=math_increment(i);
	FinMientras
	str_array = string_append(str_array, value_TypeToString(array[i], TYPE));
FinFuncion

//----[ RANGE ]----------------------------------------------------[#]
Funcion num_range <- array_int_getRangeCeil(array, Size, num)
	Definir num_range, i, j Como Entero;//4, 6, 8, 10     num: 5   result= 6
	para i = 0 Hasta math_decrement(Size) con paso 1 Hacer
		Si array[i] >= num Entonces
			num_range = array[i];
			i = Size;//break
		FinSi
	FinPara
FinFuncion
//----[ SEARCH ]----------------------------------------------------[#]
Funcion index <- array_search_text(array, Size, text)
	Definir index, i Como Entero;
	i = 0;
	index = -1;
	Mientras (i < Size) & index < 0 hacer 
		index = if(string_isEquals(array[i], text), i, TYPE_INT());
		i = math_increment(i);
	FinMientras
FinFuncion
//----[ SORT ]----------------------------------------------------------------------[#]
Funcion str_array <- array_QuickSort_Num_toString(array, Size)
	Definir str_array, stack Como Texto;
    Definir low, height, i, j, pivote, temp Como Entero;
	
	str_array = array_ofString(array, Size, TYPE_INT());
FinFuncion
//----[ COMPARE ]----------------------------------------------------[#]
//Funcion On^2: tal vez ordenando el primer y segundo arreglo aumente la velocidad
Funcion string_Delta <- array_ToDeltastring_ByComparation(array_Select, size_Select, array_Comparator, size_Comparator, IsInnerJoin)
	Definir string_Delta Como Texto;
	Definir i, j Como Entero;
	Definir property_exists Como Logico;
	string_Delta = "";
	para i = 0 Hasta math_decrement(size_Comparator) Con Paso 1 Hacer
		property_exists = false();
		j = 0;
		Mientras (j < size_Select) & !property_exists Hacer
			Si array_Comparator[i] == array_Select[j] Entonces
				property_exists = true();
			FinSi
			j = math_increment(j);
		FinMientras
		Si IsInnerJoin Entonces
			property_exists = !property_exists;
		FinSi
		Si !property_exists Entonces
			string_Delta = string_append_withSeparator(string_Delta, symbol_separator(), array_Comparator[i]);
		FinSi
	FinPara
FinFuncion
///%%%%%[ PRINTERS................ ]%%%%%%%[   #PRI    ]%%%%%%%%%%%%%%%%%%%%
Funcion println(text)
	text = string_append(text, "\n");
	print(text);
FinFuncion

Funcion print(text)
	print_byseparator(text, "\n");
FinFuncion
//----[ JUMPER ]----------------------------------------------------[#]
Funcion print_byseparator(text, separator)
	__private_print_split(text, separator);
FinFuncion

Funcion println_bySeparator(text, separator)
	text = string_append(text, separator);
	print_bySeparator(text, separator);
FinFuncion

Funcion __private_print_split(text, separator)
	Definir index_breakLine, text_length, length_separator Como Entero;
	index_breakLine = string_indexOf(text, separator);
	length_separator = string_Length(separator);
	Mientras index_breakLine > -1 Hacer
		native_println(string_substring(text, 0, index_breakLine));
		text = string_substring(text, math_sum(index_breakLine, length_separator), string_Length(text));
		index_breakLine = string_indexOf_fromIndex(text, separator, 0);
	FinMientras
	native_print(string_substring(text, 0, string_Length(text)));
FinFuncion
//----[ PROGRESS ]----------------------------------------------------[#]
Funcion println_progress(text)
	text = string_append(text, "\n");
	print_progress_with_speed(text, 60);
FinFuncion

Funcion print_progress(text)
	print_progress_with_speed(text, 60);
FinFuncion

Funcion print_progress_Simple(text)
	print_progress_with_speed_Simple(text, 60);
FinFuncion

Funcion print_progress_with_speed(text, speed)
	Definir index_breakLine Como Entero;
	index_breakLine = string_indexOf(text, "\n");
	Mientras index_breakLine > -1 Hacer
		print_progress_with_speed_Simple(string_substring(text, 0, index_breakLine), speed);
		breakLine();
		text = string_substring(text, math_sum(index_breakLine, 2), string_Length(text));
		index_breakLine = string_indexOf(text, "\n");
	FinMientras
	print_progress_with_speed_Simple(string_substring(text, 0, string_Length(text)), speed);
FinFuncion

Funcion print_progress_with_speed_Simple(text, speed)
	Definir i, end Como Entero;
	end = string_Length(text);
	Para i = 0 Hasta end hacer 
		native_print(char_At(text, i));
		sleep(speed);
	FinPara
FinFuncion
//----[ SHOOT ]----------------------------------------------------[#]
Funcion print_shoot(text)
	__private_internal_printer_formater_shoot(text, false);
FinFuncion

Funcion println_shoot(text)
	text = string_append(text, "\n");
	print_shoot(text);
FinFuncion

Funcion print_shoot_clear(text)
	__private_internal_printer_formater_shoot(text, true);
FinFuncion

Funcion println_shoot_clear(text)
	text = string_append(text, "\n");
	print_shoot_clear(text);
FinFuncion

Funcion __private_internal_printer_formater_shoot(text, isClear)
	Definir index_breakLine, text_length, num_breakLine, i Como Entero;
	Definir text_ammunition Como Texto;
	num_breakLine = string_countMatches(text, "\n");
	num_breakLine = math_max(num_breakLine, 1);
	Dimension text_ammunition[num_breakLine];
	
	index_breakLine = string_indexOf_fromIndex(text, "\n", 0);
	i=0;
	Mientras i<num_breakLine Hacer
		text_ammunition[i] = string_substring(text, 0, index_breakLine);
		text = string_substring(text, math_sum(index_breakLine, 2), string_Length(text));
		index_breakLine = string_indexOf_fromIndex(text, "\n", 0);
		i=math_increment(i);
	FinMientras
	
	Si isClear Entonces
		console_clear();
	FinSi
	
	println_array(text_ammunition, num_breakLine);//shoot
	native_print(string_substring(text, 0, string_Length(text)));
FinFuncion
//----[ ARRAY ]----------------------------------------------------[#]
Funcion println_array(array, index_array)
	Definir i Como Entero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		native_println(array[i]);
	FinPara
FinFuncion

Funcion print_array(array, index_array)
	Definir i Como Entero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		native_print(array[i]);
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

Funcion print_array_color(array, index_array, color)
	print_array_decorator(array, index_array, decorator);
FinFuncion

Funcion print_array_decorator(array, index_array, decorator)
	Definir i Como Entero;
	para i = 0 Hasta math_decrement(index_array) Hacer
		array[i] = string_append(decorator, array[i]);
	FinPara
	print_array(array, index_array);
FinFuncion
//----[ REPEAT ]----------------------------------------------------[#]
Funcion print_Repeat(text, numEnd)
	Definir start Como Entero;
	Para start=1 Hasta numEnd Con Paso 1 Hacer
		native_print(text);
	FinPara
FinFuncion

Funcion println_Repeat(text, numEnd)
	Definir start Como Entero;
	Para start=1 Hasta numEnd Con Paso 1 Hacer
		native_println(text);
	FinPara
FinFuncion
//----[ UTILITIES ]----------------------------------------------------[#]
Funcion breakLine
	native_println("");
FinFuncion
///%%%%%[ SLEEP................... ]%%%%%%%[   #SLE    ]%%%%%%%%%%%%%%%%%%%%
Funcion sleep(ms)
	Esperar ms Milisegundos;
FinFuncion

Funcion sleep_And_Clear(ms)
	sleep(ms);
	console_clear();
FinFuncion
//----[ SECOND ]----------------------------------------------------[#]
Funcion seconds <- sleep_miliSeconds_toSeconds(ms)
	Definir seconds Como Entero;
	seconds = ms * 1000;
FinFuncion

Funcion sleep_Second_And_Clear(ms)
	sleep_And_Clear(sleep_miliSeconds_toSeconds(s));
FinFuncion

Funcion sleep_Second(ms)
	sleep(sleep_miliSeconds_toSeconds(ms));
FinFuncion
//----[ messAGE ]----------------------------------------------------[#]
Funcion sleep_if_message(s, condition, message_date)
	Si condition Entonces
		log_INFO(message_date);
		sleep(s);
	FinSi
FinFuncion

Funcion sleep_message(s, message_date)
	log_INFO(message_date);
	sleep(s);
FinFuncion
//----[ UTILITIES ]----------------------------------------------------[#]
Funcion sleep_CircleLoad(s)
	Definir sequence Como Texto;
	Definir Size Como Entero;
	Size = 4;
	Dimension sequence[Size];
	sequence[0]= "|";
	sequence[1]= "/";
	sequence[2]= "-";
	sequence[3]= "\";
	sleep_Animation(4, 100, sequence, Size, 35, 10, true());
FinFuncion

Funcion sleep_Animation(s, speed, text_array_Sequence, Size, padding_x, padding_y, EnableClear)
	Definir Time, Time_End, Time_adjust Como Entero;
	Definir padding_x_text Como Texto;
	
	Time_adjust = math_min(math_max(550, speed), 1000);
	
	Time_End = (s*Time_adjust)/speed;
	Time = 0;
	padding_x_text = canvas_Row_WithText(" ", padding_x);
	println_Repeat( "", padding_y);
	Mientras Time < Time_End Hacer
		native_print(string_append(padding_x_text, text_array_Sequence[math_module(Time, Size)]));
		Time = math_increment(Time);
		sleep(speed);
		Si EnableClear Entonces
			console_clear();
			println_Repeat("", padding_y);
		SiNo
			padding_x_text= "";
		FinSi
	FinMientras
	console_clear();
FinFuncion
///%%%%%[ LOGS.................... ]%%%%%%%[   #LOG    ]%%%%%%%%%%%%%%%%%%%%
Funcion log_WARNING(message)
    log_general(message, LOG_TYPE_WARNING(), 3);
FinFuncion

Funcion log_INFO(message)
    log_general(message, LOG_TYPE_INFO(), 7);
FinFuncion

Funcion log_ERROR(message)
    log_general(message, LOG_TYPE_ERROR(), 1);
FinFuncion

Funcion log_DEBUG(message)
    log_general(message, LOG_TYPE_DEBUG(), 4);
FinFuncion

Funcion log_TRACE(message)
    log_general(message, LOG_TYPE_TRACE(), 6);
FinFuncion

Funcion log_FATAL(message)
    log_general(message, LOG_TYPE_FATAL(), 5);
FinFuncion

Funcion log_general(message, start_tag, index_color)
	Definir message_tag, color_log Como Texto;
	message_tag = native_string_append(native_string_append(start_tag, ": "), message);
	color_log = console_command_graphicText(index_color);
	native_println(native_string_append(color_log, message_tag));
FinFuncion

Funcion log_error_function(method, message)
	log_error_message(string_append_withSeparator(method, message, "//"));
FinFuncion

Funcion log_error_message(message)
	native_println(console_prefix_Escape() + "31m[ERROR] // " + message + ".");
FinFuncion

Funcion log_condition_message(condition, message, LOG_TYPE)
	Si condition Entonces
		Segun LOG_TYPE hacer
			caso LOG_TYPE_ERROR():
				log_ERROR(message);
			caso LOG_TYPE_INFO():
				log_INFO(message);
			caso LOG_TYPE_DEBUG():
				log_DEBUG(message);
			caso LOG_TYPE_TRACE():
				log_TRACE(message);
			caso LOG_TYPE_WARNING():
				log_WARNING(message);
			De Otro Modo:
				log_FATAL(message);
		FinSegun
	FinSi
FinFuncion

Funcion log_exection_error(message_Error)
	Definir error_int Como Entero;
	log_ERROR(message_Error);
	error_int = string_NULL();
FinFuncion

Funcion log_error_condition_rangeString(Function_name, result_string, start, end)
    Definir str_length Como Entero;
    str_length = native_string_length(result_string);
    log_error_condition_rangeValue(Function_name, start, 0, str_length);
    log_error_condition_rangeValue(Function_name, end, 0, str_length);
    si (start > end) Entonces
        log_error_function(Function_name, "Index Error: Start > End");
    FinSi
FinFuncion

Funcion log_error_condition_rangeValue(Function_name, value, min_val, max_val)
    si (min_val > max_val) Entonces
        log_error_function(Function_name, "Config Error: Min > Max");
    FinSi
    Si !number_IsInRange(value, min_val, max_val) Entonces
        Definir error_msg Como Texto;
        error_msg = native_string_append("Value out of range: ", integer_toString(value));
        error_msg = native_string_append(error_msg, native_string_append(" [Limit: ", native_number_toString(min_val)));
        error_msg = native_string_append(error_msg, native_string_append(" - ", native_number_toString(max_val)));
        error_msg = native_string_append(error_msg, "]");
        log_error_function(Function_name, error_msg);
    FinSi
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=============================
Funcion type_str <- LOG_TYPE_WARNING
    Definir type_str Como Texto;
    type_str = "WARNING";
FinFuncion

Funcion type_str <- LOG_TYPE_INFO
    Definir type_str Como Texto;
    type_str = "INFO";
FinFuncion

Funcion type_str <- LOG_TYPE_ERROR
    Definir type_str Como Texto;
    type_str = "ERROR";
FinFuncion

Funcion type_str <- LOG_TYPE_DEBUG
    Definir type_str Como Texto;
    type_str = "DEBUG";
FinFuncion

Funcion type_str <- LOG_TYPE_TRACE
    Definir type_str Como Texto;
    type_str = "TRACE";
FinFuncion

Funcion type_str <- LOG_TYPE_FATAL
    Definir type_str Como Texto;
    type_str = "FATAL";
FinFuncion
///%%%%%[ TEST.................... ]%%%%%%%[   #TES    ]%%%%%%%%%%%%%%%%%%%%
//----[ CHECKPOINT ]----------------------------------------------------[#]
Funcion test_Checkpoint(id)
	test_Checkpoint_info(id, "");
FinFuncion

Funcion test_Checkpoint_info(id, info_string)
	breakLine();
	native_println(color_set(string_append_withSeparator(" < ", " >- - - - - - - - - - - </>", integer_toString(id)), COLOR_CYAN()));
	Si !string_isEmpty(info_string) Entonces
		Definir popup_message Como Texto;
		popup_message = string_append_withSeparator(" < start >", "< /end >", info_string);
		native_println(color_set(popup_message, COLOR_CYAN()));
	FinSi
	user_input_wait();
FinFuncion
//----[ ASSERT ]----------------------------------------------------[#]
Funcion test_Assert_Equal(value, value_expected, TYPE)
	Definir value_String, value_expected_String Como Texto;
	test_Function_Assert_Equal(value, value_expected, TYPE, "<?>");
FinFuncion

Funcion test_Function_Assert_Equal(value, value_expected, TYPE, method_name)
	Definir catch_Boolean Como Logico;
	catch_Boolean = test_Function_Assert_Equal_returnBoolean(value, value_expected, TYPE, method_name);
FinFuncion

Funcion result_Boolean <- test_Function_Assert_Equal_returnBoolean(value, value_expected, TYPE, method_name)
	Definir value_String, value_expected_String Como Texto;
	Definir result_Boolean Como Logico;
	value_String = value_TypeToString(value, TYPE);
	value_expected_String = value_TypeToString(value_expected, TYPE);
	result_Boolean = string_isEquals(value_String, value_expected_String);
	Si result_Boolean Entonces
		native_println(color_set(string_append_withSeparator(method_name, value_String, "() :: check ::"), COLOR_CYAN()));
	SiNo
		log_error_message(string_append_withSeparator(method_name, string_append_withSeparator(value_String, value_expected_String, " != "), "() .        . The value is not as expected .        . "));
	FinSi
FinFuncion
//----[ PASSED ]----------------------------------------------------[#]
Funcion count_result <- test_Passed(value, value_expected, TYPE, count_string)
	Definir count_result Como Texto;
	count_result = test_Function_Passed(value, value_expected, TYPE, "</>", count_string);
FinFuncion

Funcion count_result <- test_Function_Passed(value, value_expected, TYPE, method_name, count_string)
	Definir count_result Como Texto;
	Definir catch_Boolean Como Logico;
	catch_Boolean = test_Function_Assert_Equal_returnBoolean(value, value_expected, TYPE, method_name);
	si string_isEmpty(count_string)Entonces
		count_string = string_append_withSeparator("0", "0", symbol_separator());
	FinSi
	si catch_Boolean Entonces
		count_result = value_modify_StringNumber_inArea(count_string, 1, 0, string_indexOf(count_string, symbol_separator()));
	SiNo
		count_result = value_modify_StringNumber_inArea(count_string, 1, math_increment(string_indexOf(count_string, symbol_separator())), string_Length(count_string));
	FinSi
FinFuncion
//----[ DEBUG ]----------------------------------------------------------------------[#]
Funcion test_Function_Passed_Debug(count_string)
	Definir succes_Count, error_Count, array_test Como Texto;
	Definir succes_Msg, error_msg Como Texto;
	Definir index_Center Como Entero;
	index_Center = string_indexOf(count_string, symbol_separator());
	succes_Count = string_substring(count_string, 0, index_center);
	error_Count = string_substring_from(count_string, math_increment(index_center));
	succes_Msg = string_append(":  + SUCCESS: ", string_fit_end(succes_Count, "            :"));
	error_Msg = string_append(":  - ERROR:   ", string_fit_end(error_Count, "            :"));
	Dimension array_test[6];
	array_test[0] = ".=========================.";
	array_test[1] = ":      < END_TEST >        :";
	array_test[2] = ":=========================:";
	array_test[3] = color_set(succes_Msg, COLOR_GREEN());
	array_test[4] = color_set(error_Msg, COLOR_RED());
	array_test[5] = ".=========================.";
	println_array_color(array_test, 6, COLOR_WHITE());
FinFuncion
//The interpreter waits for a return and then captures the total time
Funcion duration_Timer <- Execution_Timer(localTime_Start, funtion_return)
	Definir duration_Timer, localTime_End Como Texto;
	localTime_End = localTime_now();
	duration_Timer = duration_between(localTime_Start, localTime_End);
FinFuncion
///%%%%%[ NUM.............. ]%%%%%%%%%%%%%%[   #NUM    ]%%%%%%%%%%%%%%%%%%%%
Funcion num <- float_parseFloat(text_number)
	Definir num Como Real;
	Si string_isNumber_float(text_number) Entonces
		num = native_number_parseNum(text_number);
	SiNo
		num = number_NULL();
		log_error_function("float_parseFloat(text_number)", string_append("The text cannot be parsed into a [float] >> ", text_number));
	FinSi
FinFuncion

Funcion num <- integer_parseInt(text_number)
	Definir num Como Entero;
	Si string_isNumber_Int(text_number) Entonces
		num = native_number_parseNum(text_number);
	SiNo
		num = number_NULL();
		log_error_function("integer_parseInt(text_number)", string_append("The text cannot be parsed into a [int 32b] >> ", text_number));
	FinSi
FinFuncion

Funcion number_int <- integer_parseInt_fromIndex(text_number, start_index)
	Definir number_int Como Entero;
	number_int = integer_parseInt_toRange(text_number, start_index, string_length(text_number));
FinFuncion

Funcion number_int <- integer_parseInt_toRange(text_number, start_index, end_index)
	Definir number_int Como Entero;
	number_int = number_parseNumber(string_substring(text_number, start_index, end_index));
FinFuncion

Funcion num <- number_parseNumber(text_number)
	Definir num Como Entero;
	Si string_isNumber(text_number) Entonces
		num = native_number_parseNum(text_number);
	SiNo
		num = number_NULL();
		log_error_function("number_parseNumber(text_number)", string_append("The text cannot be parsed into a [number] >> ", text_number));
	FinSi
FinFuncion

Funcion num_range <- int_getRangeCeil_ToFromSeparatedString(num, list_Str)
	Definir num_range, i, length_value, length_listStr Como Entero;
	Definir num_carry, Char_Current Como Texto;
	num_carry = "";
	length_listStr = math_decrement(string_Length(list_Str));
	Mientras i < length_listStr Hacer
		Char_Current = char_At(list_Str, i);
		Si char_isNumber(Char_Current) Entonces
			num_carry = string_append(num_carry, Char_Current);
		SiNo
			length_value = number_parseNumber(num_carry);
			num_carry = "";
			Si length_value >= num Entonces
				num_range = length_value;
				i = math_sum(i, length_listStr);
			FinSi
		FinSi
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion int_result <- int_CompareTo(number0, number1)
	Definir int_result Como Entero;
	int_result = boolean_compareTo_general(number0, number1);
FinFuncion

Funcion boolean <- Num_isinteger(num)
	Definir boolean Como Logico;
	boolean = (num == math_truncate(num));
FinFuncion

Funcion boolean <- number_isEquals(num, num2)
	Definir boolean Como Logico;
	boolean = boolean_isEquals_general(num, num2);
FinFuncion
//---[ COVERSIONS ]------------------------------------------------------[#]
Funcion result_length <- number_length(num)
	Definir result_length Como Entero;
	result_length = native_string_length(native_number_toString(num));
FinFuncion

Funcion result_string <- integer_ToString(num)
	Definir result_string Como Texto;
	result_string = native_number_toString(num);
	Si !string_isNumber_int(result_string) Entonces
		log_exection_error(string_append("typing error integer >>>", result_string));
	FinSi
FinFuncion

Funcion result_string <- float_ToString(num)
	Definir result_string, var Como Texto;
	result_string = native_number_toString(num);
	Si !string_isNumber_float(result_string) Entonces
		log_exection_error(string_append("typing error float >>>", result_string));
	FinSi
FinFuncion
//----[ BYNARY_OPERATION ]-----------------------------------------------------------[#]
Funcion int_result <- int_bitSum(A_int, B_int)
	Definir int_result Como Entero;
	int_result = binarystring_ToInt(binarystring_SUM(int_ToBinaryString(A_int), int_ToBinaryString(B_int)));
FinFuncion

Funcion binaryString <- int_ToBinaryString(num)
	Definir binaryString, residue Como Texto;
	Mientras num>0 Hacer
		residue = integer_toString(math_module(num, 2));
		num = math_truncate(num/2);
		binaryString = string_insert(binaryString, residue, 0);
	FinMientras
	binaryString = string_pad(binaryString, "0000");
FinFuncion

Funcion int_result <- Int_BitMoveLeft(int_num, num_movements)
	Definir int_result Como Entero;
	int_result = binarystring_ToInt(binarystring_MoveLeft(int_ToBinaryString(int_num), num_movements));
FinFuncion

Funcion int_result <- Int_BitMoveRight(int_num, num_movements)
	Definir int_result Como Entero;
	int_result = binarystring_ToInt(binarystring_MoveRight(int_ToBinaryString(int_num), num_movements));
FinFuncion
//..........
Funcion isValid <- number_index_isInRange(max_length, start, end)
    Definir isValid Como Logico;
    isValid = number_IsInRange(start, 0, max_length);
    isValid = isValid & number_IsInRange(end, 0, max_length);
    isValid = isValid & (start <= end);
FinFuncion

Funcion IsInRange <- number_IsInRange(value, min_val, max_val)
    Definir IsInRange Como Logico;
    IsInRange = value >= min_val & value <= max_val;
FinFuncion
///%%%%%[ BINARY_STRING........... ]%%%%%%%[   #BIN    ]%%%%%%%%%%%%%%%%%%%%
Funcion int_num <- binarystring_ToInt(binaryString)
	Definir int_num, i, binary_Length, bit Como Entero;
	binary_Length = math_decrement(string_Length(binaryString));
	int_num = 0;
	para i = 0 Hasta binary_Length Con Paso 1 hacer
		bit = number_parseNumber(char_At(binaryString, i));//bit 1/0
		int_num = (int_num * 2) + bit;// 1 0 1 1 -->  (((n*2 + 1)*2 + 0)*2 + 1)*2 + 1) = 11
	FinPara
FinFuncion
//----[ LOGICAL_OPERATIONS ]---------------------------------------------------------[#]
Funcion binarystring_Result <- binarystring_AND(binaryString1, binaryString2)
	Definir binarystring_Result Como Texto;
	binarystring_Result = binarystring_LogicalOperations(binaryString1, binaryString2, 0);
FinFuncion

Funcion binarystring_Result <- binarystring_OR(binaryString1, binaryString2)
	Definir binarystring_Result Como Texto;
	binarystring_Result = binarystring_LogicalOperations(binaryString1, binaryString2, 1);
FinFuncion
Funcion binarystring_Result <- binarystring_XOR(binaryString1, binaryString2)
	Definir binarystring_Result Como Texto;
	binarystring_Result = binarystring_LogicalOperations(binaryString1, binaryString2, 2);
FinFuncion

Funcion binarystring_Result <- binarystring_NOT(binaryString1)
	Definir binarystring_Result Como Texto;
	binarystring_Result = binarystring_LogicalOperations(binaryString1, "", 3);
FinFuncion

Funcion bitChar <- array_bitChar_LogicalOperations(bitChar1, bitChar2, index)
	Definir bitChar Como Texto;
	Segun index Hacer
		caso 0:bitChar = bitChar_AND(bitChar1, bitChar2);
		caso 1:bitChar = bitChar_OR(bitChar1, bitChar2);
		caso 2:bitChar = bitChar_XOR(bitChar1, bitChar2);
		De Otro Modo: bitChar = bitChar_NOT(bitChar1);
	FinSegun
FinFuncion

Funcion binarystring_Result <- binarystring_LogicalOperations(binaryString1, binaryString2, index)
	Definir binarystring_Result, Norm_binary Como Texto;
	Definir binary_MaxSize, i Como Entero;
	binarystring_Result = "";
	Norm_binary = binarystring_GetPad_MaxSize(binaryString1, binaryString2);
	binaryString1 = string_pad(binaryString1, Norm_binary);
	binaryString2 = string_pad(binaryString2, Norm_binary);
	binary_MaxSize = math_decrement(string_Length(Norm_binary));
	para i = 0 Hasta binary_MaxSize Con Paso 1 Hacer
		binarystring_Result = string_append(binarystring_result, array_bitChar_LogicalOperations(char_At(binaryString1, i), char_At(binaryString2, i), index));
	FinPara
	binarystring_Result = string_remove(binarystring_result, 0, if_else(string_indexOf(binarystring_result, "1") <> -1, string_indexOf(binarystring_result, "1"), 0));
FinFuncion
//----[ GETTERS ]----------------------------------------------------[#]
Funcion binaryPad <- binarystring_GetPad_MaxSize(binaryString1, binaryString2)
	Definir binaryPad Como Texto;
	Definir max_length Como Entero;
	max_length = math_max(string_Length(binaryString1), string_Length(binaryString2));
	binaryPad= string_repeatText("0", max_length);
FinFuncion
//----[ BIT_LOGICAL_OPERATIONS ]-----------------------------------------------------[#]
Funcion bitChar_Result <- bitChar_AND(bit_char1, bit_char2)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, "1") & string_isEquals(bit_char2, "1"), "1", "0");
FinFuncion

Funcion bitChar_Result <- bitChar_OR(bit_char1, bit_char2)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, "0") & string_isEquals(bit_char2, "0"), "0", "1");
FinFuncion

Funcion bitChar_Result <- bitChar_XOR(bit_char1, bit_char2)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, bit_char2), "0", "1");
FinFuncion

Funcion bitChar_Result <- bitChar_NOT(bit_char1)
	Definir bitChar_Result Como Texto;
	bitChar_Result = if_else(string_isEquals(bit_char1, "1"), "0", "1");
FinFuncion
//----[ SHIFTING ]----------------------------------------------------[#]
Funcion binarystring_result <- binarystring_MoveLeft(binaryString, num_movements)
	Definir binarystring_result Como Texto;
	binarystring_result = string_append(binaryString, string_repeatText("0", num_movements));
FinFuncion

Funcion binarystring_result <- binarystring_MoveRight(binaryString, num_movements)
	Definir binarystring_result Como Texto;
	binarystring_result = string_substring(binaryString, 0, math_minus(string_Length(binaryString), num_movements));
FinFuncion
//----[ ARITHMETIC ]----------------------------------------------------------------[#]
Funcion binarystring_result <- binarystring_SUM(binaryString1, binaryString2)
    Definir binarystring_result, sum, carry Como Texto;
    Mientras string_Contains(binaryString2, "1") Hacer
        sum  = binarystring_XOR(binaryString1, binaryString2);
        binaryString2  = binarystring_MoveLeft(binarystring_AND(binaryString1, binaryString2), 1);
        binaryString1 = sum;
    FinMientras
    binarystring_result = sum;
FinFuncion

Funcion binarystring_result <- binarystring_TwosComplement(binaryString)
	Definir binarystring_result Como Texto;
	binarystring_result = binarystring_SUM(binarystring_NOT(binaryString), string_pad("1", string_repeatText("0", string_Length(binaryString))));
FinFuncion
///%%%%%[ MATH.................... ]%%%%%%%[   #MAT    ]%%%%%%%%%%%%%%%%%%%%
//----[ MAX ]------------------------------------------------------------------------[#]
Funcion result <- math_max(value, limit)
	Definir result Como Numero;// max = (1>0, 1, 0) result = 1
	result = native_math_max(value, limit);
FinFuncion
//----[ MIN ]------------------------------------------------------------------------[#]
Funcion result <- math_min(value, limit)
	Definir result Como Numero;// min = (1<0, 0, 1) result = 0
	result = native_math_min(value, limit);
FinFuncion
//----[ RANGE_LIMIT ]----------------------------------------------------[#]
Funcion result <- math_rangeLimit_Float(value, limit_min, limit_max)
	Definir result Como Real;
	result = math_max(limit_min, math_min(limit_max, value));
FinFuncion
// rangeLimit =  [min = (1<2, 2, 1)] result min = 2 -> max(0>min, 0, min) result = 2
Funcion result <- math_rangeLimit_Int(value, limit_min, limit_max)
	Definir result Como Entero;
	result = math_max(limit_min, math_min(limit_max, value));
FinFuncion
//----[ POW ]------------------------------------------------------------------------[#]
Funcion num_pow <- math_pow(x, exponent)
    Definir num_pow Como Real;
    num_pow = 1;
    Mientras exponent > 0 Hacer
        Si native_math_module(exponent, 2) <> 0 Entonces
            num_pow = num_pow * x;
        FinSi
        x = x * x;
        exponent = math_floor(exponent / 2);
    FinMientras
FinFuncion

Funcion num_pow <- math_pow_float(base, exponente)
    Definir num_pow, ln_base Como Real;
    ln_base = math_ln(base);
    num_pow = math_exp(exponente * ln_base);
FinFuncion
//----[ TAYLOR ]----------------------------------------------------[#]
Funcion id <- TAYLOR_SIN
    Definir id Como Texto;
    id = "TAYLOR_SIN";
FinFuncion

Funcion id <- TAYLOR_COS
    Definir id Como Texto;
    id = "TAYLOR_COS";
FinFuncion

Funcion id <- TAYLOR_EXP
    Definir id Como Texto;
    id = "TAYLOR_EXP";
FinFuncion

Funcion id <- TAYLOR_LN
    Definir id Como Texto;
    id = "TAYLOR_LN";
FinFuncion
// ((-1)^i * x^(2i+1)) / (2i+1)!
Funcion term <- __private_taylor_helper_sin(x, i)
    Definir term Como Real;
    Definir signo, exponente Como Entero;
    signo = math_pow(math_negated(1), i);
    exponente = math_sum((2 * i), 1);
    term = (signo * math_pow(x, exponente)) / math_factorial(exponente);
FinFuncion
// ((-1)^i * x^(2i)) / (2i)!
Funcion term <- __private_taylor_helper_cos(x, i)
    Definir term Como Real;
    Definir signo, exponente Como Entero;
    signo = math_pow(math_negated(1), i);
    exponente = 2 * i;
    term = (signo * math_pow(x, exponente)) / math_factorial(exponente);
FinFuncion
// Taylor para e^x: x^i / i!
Funcion term <- __private_taylor_helper_exp(x, i)
    Definir term Como Real;
    term = math_pow(x, i) / math_factorial(i);
FinFuncion
// ((-1)^(i) * x^(i+1)) / (i+1) 
Funcion term <- __private_taylor_helper_ln(x, i)
    Definir term Como Real;
    Definir signo, exponente Como Entero;
    signo = math_pow(math_negated(1), i);
    exponente = math_sum(i, 1);
    term = (signo * math_pow(x, exponente)) / exponente;
FinFuncion

Funcion numerical_term <- __private_taylor_operation(name_func, x, i)
    Definir numerical_term Como Real;
    Segun name_func Hacer
        TAYLOR_SIN():
            numerical_term = __private_taylor_helper_sin(x, i);
        TAYLOR_COS():
            numerical_term = __private_taylor_helper_cos(x, i);
        TAYLOR_EXP():
            numerical_term = __private_taylor_helper_exp(x, i);
        TAYLOR_LN():
            numerical_term = __private_taylor_helper_ln(x, i);
        De Otro Modo:
            log_error_function("__private_taylor_operation(name_func, x, i)", "unsupported operation");
            numerical_term = 0;
    FinSegun
FinFuncion
//
Funcion num_taylor <- math_serie_taylor(x, name_function)
	Definir num_taylor, numerical_term, max_iterations, limite_epsilon Como Real;
	Definir i, max_iteraciones Como Entero;
	num_taylor = 0;
	i = 0;
	max_iterations = 80;
	limite_epsilon = math_EPSILON();
	numerical_term = 1.0;
	Mientras (i < max_iterations) & (i == 0 | math_abs(numerical_term) > limite_epsilon) Hacer
		numerical_term = __private_taylor_operation(name_function, x, i);
		num_taylor = math_sum(num_taylor, numerical_term);
		i = math_increment(i);
	FinMientras
FinFuncion
//----[ TRIGONOMETRY ]--------------------------------------------------------------[#]
Funcion n_result <- math_sin(x)
    Definir n_result, x_norm Como Real;
    //x_norm = math_Normalize_InPiRange(x);n_result = math_serie_taylor(x_norm, TAYLOR_SIN());
    n_result = native_math_sin(x);
FinFuncion

Funcion n_result <- math_cos(x)
    Definir n_result, x_norm Como Real;
    //x_norm = math_Normalize_InPiRange(x);n_result = math_serie_taylor(x_norm, TAYLOR_COS());
    n_result = native_math_cos(x);
FinFuncion

Funcion n_result <- math_tan(x)
	Definir n_result, n, i, t Como Real;
	n_result = native_math_tan(x);//n_result =  math_sin(x)/math_cos(x);
FinFuncion

Funcion num_Sin <- math_sin_DEG(x)
	Definir num_Sin Como Real;
	num_Sin= math_sin(DEG_TO_RAD(x));
FinFuncion

Funcion num_cos <- math_cos_DEG(x)
	Definir num_cos Como Real;
	num_cos= math_cos(DEG_TO_RAD(x));
FinFuncion

Funcion num_deg <- DEG_TO_RAD(x_rad)
	Definir num_deg Como Real;
    num_deg = x_rad * (math_PI()/180);
FinFuncion

Funcion x_norm <- math_Normalize_InPiRange(x)
	Definir x_norm, pi_, pi_2 Como Real;
	pi_ = math_PI();
	pi_2 = 2 * pi_;
	x_norm = math_minus(math_module( math_sum(x, pi_), pi_2), pi_);
FinFuncion
//----[ EXPONENTIAL ]--------------------------------------------------------------[#]
Funcion x_bounds <- math_bilinear_map(x)
    Definir x_bounds Como Real;
    x_bounds = (x - 1) / (x + 1);
FinFuncion

Funcion num_ln <- math_ln(x)
    Definir num_ln, resultado, z, taylorLn_pos, taylorLn_neg Como Real;
    Si x <= 0 Entonces
        log_error_function("math_ln(x)", "Math Error: Logarithm of non-positive number");
        num_ln = number_NULL();
    SiNo
        //z = math_bilinear_map(x);
		//taylorLn_pos = math_serie_taylor(z, TAYLOR_LN());
		//taylorLn_neg = math_serie_taylor(math_negated(z), TAYLOR_LN());num_ln = math_minus(taylorLn_pos, taylorLn_neg);
        num_ln = native_math_ln(x);
    FinSi
FinFuncion

Funcion num_exp <- math_exp(x)
    Definir num_exp Como Real;
	//num_exp = math_serie_taylor(x, TAYLOR_EXP());
	num_exp = native_math_exp(x);
FinFuncion

Funcion logx <- math_log(x, base)
    Definir logx Como Real;
    logx = math_ln(x) / math_ln(base);
FinFuncion

Funcion num_sqrt <- math_sqrt(S)
    Definir num_sqrt, xk, i Como Real;
	xk = S;//Babylonian method: 1/2(xk+S/xk)
	para i=1 Hasta 6 con paso 1 Hacer
		num_sqrt = 0.5 * (math_sum(xk, (math_div(S,xk))));
		xk = num_sqrt;
	FinPara
FinFuncion

//----[ BASIC_ARITHMETIC ]-----------------------------------------------------------[#]
Funcion num_abs <- math_abs(num)
	Definir num_abs Como Entero;
	num_abs = if_else(num < 0, math_negated(num), num);
FinFuncion

Funcion num_Negate <- math_negated(num)
	Definir num_Negate Como Numero;
	num_Negate = native_math_negated(num);
FinFuncion

Funcion num_div <- math_div_int(dividend, divisor)
	Definir num_div Como Entero;
	num_div = native_math_truncate(math_div(dividend, divisor));
FinFuncion

Funcion num_div <- math_div(dividend, divisor)
	Definir num_div Como Real;
	Si divisor == 0 Entonces
		divisor = number_NULL();
		log_error_function("math_div(dividend, divisor)","divisor = 0");
	FinSi
	num_div = dividend / divisor;
FinFuncion

Funcion num_fact <- math_factorial(x)
    Definir num_fact, i Como Real;
	num_fact=1;
	para i=1 Hasta x Con Paso 1 Hacer
		num_fact = num_fact * i;
	FinPara
FinFuncion
//----[ SIGN_ANALYSIS ]--------------------------------------------------------------[#]
Funcion num_Signum <- math_signum(num)
	Definir num_Signum Como Entero;
	num_Signum = if_else(num>0, 1, if_else(num<0, -1, 0));
FinFuncion

Funcion isPositive <- math_numberIsPosive(num)
	Definir isPositive Como Logico;
	isPositive = num >= 0;
FinFuncion

Funcion isNegative <- math_numberIsNegative(num)
	Definir isNegative Como Logico;
	isNegative = num < 0;
FinFuncion
//----[ ROUNDING ]----------------------------------------------------[#]
Funcion number_Round <- math_round(number)
	Definir number_Round, index_point Como Entero;
	Definir number_String, number_Point Como Texto;
	number_String = float_toString(number);
	index_point   = math_increment(string_indexOf(number_String, "."));
	number_Point  = string_substring_from(number_String, index_point);
	number_Round  = math_truncate(number);
	si number_parseNumber(Char_At(number_Point, 0)) >= 5 Entonces
		si number >= 0 Entonces
			number_Round = math_increment(number_Round);
		SiNo
			number_Round = math_decrement(number_Round);
		FinSi
	FinSi
FinFuncion

Funcion num_floor <- math_floor(num)
	Definir num_floor Como Entero;
	Definir num_string Como Texto;
	num_floor = math_truncate(num);
	Si num_floor < 0 & string_isNumber_float(integer_toString(num)) Entonces
		num_floor = math_decrement(num_floor);
	FinSi
FinFuncion

Funcion num_ceil <- math_ceil(num)
	Definir num_ceil, index_point Como Entero;
	Definir num_string, num_point Como Texto;
	num_ceil = math_truncate(num);
	num_string = float_toString(num);
	index_point = string_indexOf(num_string, ".");
	Si index_point <> -1 Entonces
		index_point = math_increment(index_point);
		num_point = string_substring_from(num_string, index_point);
		Si num > 0 & number_parseNumber(num_point) > 0 Entonces
			num_ceil = math_increment(num_ceil);
		FinSi
	FinSi
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

Funcion float_lim <- math_limitDecimals(num, limitFloat)
	Definir float_lim, index_point, index_max, TextLength Como Entero;
	Definir str_num Como Texto;
	str_num = integer_toString(num);//1.123
	TextLength = string_Length(str_num);
	index_point = math_increment(string_indexOf_fromIndex(str_num, ".", 0));
	si index_point > 1 Entonces
		index_point = math_min(math_sum(index_point, limitFloat), TextLength );
		str_num = string_remove(str_num, index_point, TextLength);
	FinSi
	float_lim = number_parseNumber(str_num);
FinFuncion
//----[ MODULE ]----------------------------------------------------[#]
Funcion module <- math_module(dividend, divisor)
	Definir module Como Entero;// module = a-floor(a/b)*b
	divisor = math_max(divisor, 1);
	module = dividend - math_truncate(dividend/divisor) * divisor;
FinFuncion

Funcion value_normalized <- math_NormalizeCycle(current_value, max_limit)
    Definir value_normalized Como Real;
    value_normalized = math_module(current_value, max_limit);
    Si value_normalized < 0 Entonces
        value_normalized = math_sum(value_normalized, max_limit);
    FinSi
FinFuncion
//----[ CONSTANTS ]----------------------------------------------------[#]
Funcion num_PI <- math_PI
	Definir num_PI Como Real;
	num_PI = 3.141592653589793;
FinFuncion

Funcion num_PI <- math_2PI
	Definir num_PI Como Real;
	num_PI = 2 * math_PI();
FinFuncion

Funcion num_EULER <- math_EULER
	Definir num_EULER Como Real;
	num_EULER = 2.718281828459045;
FinFuncion

Funcion num_PHI <- math_PHI
    Definir num_PHI Como Real;
    num_PHI = 1.618033988749895;
FinFuncion

Funcion epsilon_val <- math_EPSILON
    Definir epsilon_val Como Real;
    epsilon_val = 0.000000000000001;
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
///%%%%%[ BOOLEAN................. ]%%%%%%%[   #BOO    ]%%%%%%%%%%%%%%%%%%%%
Funcion boolean <- false
	Definir boolean Como Logico;
	boolean = Falso;
FinFuncion

Funcion boolean <- true
	Definir boolean Como Logico;
	boolean = Verdadero;
FinFuncion

Funcion int_result <- boolean_compareTo_general(value_g0, value_g1)
	Definir int_result Como Entero;
	Si value_g0 < value_g1 Entonces
        int_result = -1;
    SiNo 
        Si value_g0 > value_g1 Entonces
            int_result = 1;
        SiNo
            int_result = 0;
        FinSi
    FinSi
FinFuncion

Funcion boolean <- boolean_isEquals_general(value1, value2)
	Definir boolean Como Logico;
	boolean = (value1 == value2);
FinFuncion

Funcion boolean <- boolean_parseBoolean(result_string)
	Definir boolean Como Logico;
	boolean = string_isBoolean_true(result_string);
FinFuncion

Funcion text <- boolean_ToString(boolean)
	Definir text Como Texto;
	text = if_else(boolean, "true", "false");
FinFuncion
///%%%%%[ COLOR................... ]%%%%%%%[   #COL    ]%%%%%%%%%%%%%%%%%%%%
Funcion color <- COLOR_TRANSPARENT
	Definir color Como Texto;
	color =  COLOR_byIndex(0);
FinFuncion
// CODES <<<<<<
Funcion color <- COLOR_RED
	Definir color Como Texto;
	color =  COLOR_byIndex(1);
FinFuncion

Funcion color <- COLOR_GREEN
	Definir color Como Texto;
	color =  COLOR_byIndex(2);
FinFuncion

Funcion color <- COLOR_YELLOW
	Definir color Como Texto;
	color =  COLOR_byIndex(3);
FinFuncion

Funcion color <- COLOR_BLUE
	Definir color Como Texto;
	color =  COLOR_byIndex(4);
FinFuncion

Funcion color <- COLOR_MAGENTA
	Definir color Como Texto;
	color =  COLOR_byIndex(5);
FinFuncion

Funcion color <- COLOR_CYAN
	Definir color Como Texto;
	color =  COLOR_byIndex(6);
FinFuncion

Funcion color <- COLOR_WHITE
	Definir color Como Texto;
	color =  COLOR_byIndex(7);
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
	color = console_command_graphicText(index);
FinFuncion

Funcion color <- COLOR_STYLE_BOLD
	Definir color Como Texto;
	color = console_command_graphicText(1);
FinFuncion

Funcion color <- COLOR_STYLE_PLAIN
	Definir color Como Texto;
	color = console_command_graphicText(0);
FinFuncion

Funcion remove_Colors 
	
FinFuncion

Funcion text_Color <- color_set(text, color)
	Definir text_Color Como Texto;
	text_Color = string_append(color, text);
FinFuncion

Funcion text_Color <- color_set_breakLines(text, color)
	Definir text_Color Como Texto;
	si !color_text_hasColor(color) Entonces
		log_error_function("color_set", string_append("invalid color `", string_append(color, "`")));
		text_Color = string_append_in_breakLines(text, COLOR_TRANSPARENT());
	SiNo
		text_Color = string_append_in_breakLines(text, color);
	FinSi
FinFuncion

Funcion text_Color <- color_set_multiColor(text)
	Definir text_Color, color_char Como Texto;
	Definir text_length, i Como Entero;
	text_length = string_Length(text);
	para i=0 Hasta text_length Hacer
		color_char = color_set(char_At(text, i), COLOR_byIndex(math_increment(math_module(i, 7))));
		text_Color = string_append(text_Color, color_char);
	FinPara
FinFuncion

Funcion text_Color <- color_Darked(text, color)
	Definir text_Color Como Texto;
	text = string_append(DARK, text);
	text_Color = string_append(color, text);
FinFuncion

Funcion text_dark <- color_Normal(text)
	Definir text_dark Como Texto;
	text_dark = string_append(DARK, text);
FinFuncion

Funcion boolean <- color_text_hasColor(text)
	Definir boolean Como Logico;
	boolean = __private_color_text_hasStyle_or_Color(text);
FinFuncion

Funcion boolean <- color_text_hasStyle(text)
	Definir boolean Como Logico;
	boolean = __private_color_text_hasStyle_or_Color(text);
FinFuncion

Funcion boolean <- color_text_hasColor_or_Style(text)
	Definir boolean Como Logico;
	boolean =__private_color_text_hasStyle_or_Color(text);
FinFuncion

Funcion boolean <- __private_color_text_hasStyle_or_Color(text)
	Definir boolean Como Logico;
	boolean = string_contains(text, console_prefix_Escape());
FinFuncion
///%%%%%[ VALUE................... ]%%%%%%%[   #VAL    ]%%%%%%%%%%%%%%%%%%%%
//----[ PARSERS ]----------------------------------------------------[#]
Funcion element_Result <- value_stringToType(element_String, TYPE)
	Segun TYPE Hacer
		caso TYPE_INT():
			Definir element_Result Como Entero;
			element_Result = integer_parseInt(element_String);
		caso TYPE_FLOAT():
			Definir element_Result Como Real;
			element_Result = float_parseFloat(element_String);
		caso TYPE_BOOLEAN():
			Definir element_Result Como Logico;
			element_Result = Boolean_parseBoolean(element_String);
		De Otro Modo:
			Definir element_Result Como Texto;
			element_Result = string_append(element_String, "");//wrapper
	FinSegun
FinFuncion

Funcion result <- value_TypeToString(data, TYPE)
	Definir result Como Texto;
	Segun TYPE Hacer
		caso TYPE_INT():
			result = integer_ToString(data);
		caso TYPE_FLOAT():
			result = float_ToString(data);
		caso TYPE_BOOLEAN():
			result = boolean_ToString(data);
		De Otro Modo:
			result = string_append(data, "");//wrapper
	FinSegun
FinFuncion
//----[ GETTERS ]----------------------------------------------------[#]
Funcion result <- value_getNullType(TYPE)
	Segun TYPE Hacer
		caso TYPE_INT():
			Definir result Como Entero;
			result = number_NULL();
		caso TYPE_BOOLEAN():
			Definir result Como Logico;
			result = false();
		caso TYPE_FLOAT():
			Definir result Como Real;
			result = number_NULL();
		caso TYPE_STRING():
			Definir result Como Texto;
			result = string_NULL();
		De Otro Modo:
			Definir result Como Texto;
			//result = object_Empty(TYPE);
	FinSegun
FinFuncion

Funcion result <- value_getNullType_toString(TYPE)
	Definir result Como Texto;
	result = value_TypeToString(value_getNullType(TYPE), TYPE);
FinFuncion

Funcion result <- value_getValidstring_ofType(value, TYPE) 
	Definir result Como Texto;
	result = value;
	Si value_isNull(value, TYPE_STRING()) Entonces
		result = value_getNullType_toString(TYPE);
	FinSi
FinFuncion

Funcion boolean <- value_isNull(value, TYPE)
	Definir boolean Como Logico;
	Segun TYPE Hacer
		caso TYPE_INT():
			boolean = number_isEquals(value, number_NULL());
		caso TYPE_FLOAT():
			boolean = number_isEquals(value, number_NULL());
		caso TYPE_BOOLEAN():
			boolean = !value;
		caso TYPE_STRING():
			boolean = string_isEquals(value, string_NULL());
		De Otro Modo:
			//boolean = string_isEquals(value, object_Empty(TYPE));
	FinSegun
FinFuncion
//----[ CATCH_VALUE ]----------------------------------------------------[#]
Funcion result <- value_StringCatch_ofType(value, TYPE, method, message) 
	Definir result Como Texto;
	result = value;
	Si value_isNull(value, TYPE_STRING()) Entonces
		result = value_getNullType_toString(TYPE);
		log_error_function(method, message);
	FinSi
FinFuncion

Funcion result <- value_catch_toString(expected_value, method, message, TYPE)
	Definir result Como Texto;
	result = value_TypeToString(value_catch(expected_value, method, message, TYPE), TYPE);
FinFuncion

Funcion result <- value_catch(expected_value, method, message, TYPE)
	Segun TYPE Hacer
		caso TYPE_INT():
			Definir result Como Entero;
		caso TYPE_FLOAT():
			Definir result Como Real;
		caso TYPE_BOOLEAN():
			Definir result Como Logico;
		De Otro Modo:
			Definir result Como Texto;
	FinSegun
	
	Si value_isNull(expected_value, TYPE) Entonces
		log_error_function(method, message);
		result = value_getNullType(TYPE);
	SiNo
		result = expected_value;
	FinSi
FinFuncion
//----[ MODIFY_STRINGNUMBER ]--------------------------------------------------------[#]
Funcion string_Increment <- value_increment_StringNumber_inArea(Text, start_index, end_index)
	Definir string_Increment Como Texto;
	string_Increment = value_modify_StringNumber_inArea(Text, 1, start_index, end_index);
FinFuncion

Funcion string_Increment <- value_decrement_StringNumber_inArea(Text, start_index, end_index)
	Definir string_Increment Como Texto;
	string_Increment = value_modify_StringNumber_inArea(Text, -1, start_index, end_index);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber_inBetweenSymbols(Text, num_sum, symbol_start, symbol_end)
	Definir string_Increment Como Texto;
	Definir start_index, end_index Como Entero;
	start_index = math_increment(string_indexOf(Text, symbol_start));
	end_index = string_indexOf_fromIndex(Text, symbol_end, math_increment(start_index));
	string_Increment = value_modify_StringNumber_inArea(Text, num_sum, start_index, end_index);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber_inBetweenSymbols_Last(Text, num_sum, symbol_start, symbol_end)
	Definir string_Increment Como Texto;
	Definir start_index, end_index Como Entero;
	end_index = string_LastIndexOf(Text, symbol_end);
	start_index = string_LastIndexOf_fromIndex(Text, symbol_start, end_index);
	start_index = math_increment(start_index);
	string_Increment = value_modify_StringNumber_inArea(Text, num_sum, start_index, end_index);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber_inArea(Text, num_sum, start_index, end_index)
	Definir string_Increment, text_new, num_last, num_update Como Texto;
	text_new = string_remove(Text, start_index, end_index);
	num_last = string_substring(text, start_index, end_index);
	num_update = value_modify_StringNumber(num_last, num_sum);
	string_Increment = string_insert(text_new, num_update, start_index);
FinFuncion

Funcion string_Increment <- value_modify_StringNumber(string_number, num_sum)
	Definir string_Increment Como Texto;
	string_Increment = integer_toString(math_sum(number_parseNumber(string_number), num_sum));
FinFuncion

Funcion isValid <- value_type_isValid(TYPE)
	Definir isValid Como Logico;
	isValid = string_isEquals(TYPE, TYPE_STRING()) | string_isEquals(TYPE, TYPE_INT()) | string_isEquals(TYPE, TYPE_BOOLEAN()) | string_isEquals(TYPE, TYPE_FLOAT());
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion TYPE <- TYPE_STRING
	Definir TYPE Como Texto;
	TYPE = "string";
FinFuncion

Funcion TYPE <- TYPE_INT
	Definir TYPE Como Texto;
	TYPE = "int";
FinFuncion

Funcion TYPE <- TYPE_FLOAT
	Definir TYPE Como Texto;
	TYPE = "float";
FinFuncion

Funcion TYPE <- TYPE_BOOLEAN
	Definir TYPE Como Texto;
	TYPE = "boolean";
FinFuncion

Funcion TYPE <- TYPE_OBJECT
	Definir TYPE Como Texto;
	TYPE = "object";
FinFuncion

Funcion TYPE <- TYPE_CUSTOM
    Definir TYPE Como Texto;
    TYPE = "?";
FinFuncion

Funcion Num <- number_NULL
	Definir Num Como Entero;
	Num = -1;
FinFuncion

Funcion result_string <- symbol_separator
	Definir result_string Como Texto;
	result_string = "";//001F
FinFuncion
///%%%%%[ TAG..................... ]%%%%%%%[   #TAG    ]%%%%%%%%%%%%%%%%%%%%
Funcion result_tag <- tag_new(id_string, TAG_CATEGORY)
	Definir result_tag, result_delimiter Como Texto;
	result_delimiter = tag_getDelimiter_fromCategory(TAG_CATEGORY);
	result_tag       = string_append_withSeparator(result_delimiter, result_delimiter ,id_string);
FinFuncion
//-----[ ADD..................... ]--------------------------------------[#]
Funcion result_container <- tag_add_ToLeft_byID(tag_container, id_string, TAG_CATEGORY)
	Definir result_container, tag_string Como Texto;
	tag_string       = tag_new(id_string, TAG_CATEGORY);
	result_container = tag_add_ToLeft(tag_container, tag_string);
FinFuncion

Funcion result_container <- tag_add_ToLeft(tag_container, tag_string)
	Definir result_container Como Texto;
	Definir index_insert Como Entero;
	index_insert     = ascii_getIndex_startCategory(tag_container, ascii_CONTROL());
	index_insert     = math_max(index_insert, 0);
	result_container = string_insert(tag_container, tag_string, index_insert);
FinFuncion

Funcion result_container <- tag_add_toRight_byID(tag_container, id_string, TAG_CATEGORY)
	Definir result_container, tag_string Como Texto;
	tag_string       = tag_new(id_string, TAG_CATEGORY);
	result_container = tag_add_toRight(tag_container, tag_string);
FinFuncion

Funcion result_container <- tag_add_toRight(tag_container, tag_string)
	Definir result_container Como Texto;
	Definir index_insert Como Entero;
	index_insert     = math_increment(ascii_getLastIndex_startCategory(tag_container, ascii_CONTROL()));
	index_insert     = math_max(index_insert, 0);
	result_container = string_insert(tag_container, tag_string, index_insert);
FinFuncion
//-----[ REMOVE.................. ]--------------------------------------[#]
Funcion result_container <- tag_remove_ToLeft(tag_container, tag_string)
	Definir result_container Como Texto;
	result_container = tag_remove_toDirection(tag_container, tag_string, false());
FinFuncion

Funcion result_container <- tag_remove_toRight(tag_container, tag_string)
	Definir result_container Como Texto;
	result_container = tag_remove_toDirection(tag_container, tag_string, true());
FinFuncion

Funcion result_container <- tag_remove_toDirection(tag_container, tag_string, isRight)
	Definir result_container Como Texto;
	Definir start_tagData, index_startData, value_length, end_tagData Como Entero;
	index_startData = tag_getDataStartIndex_toDirection(tag_container, tag_string, isRight);
	Si value_isNULL(index_startData, TYPE_INT()) Entonces
		log_error_function("tag_remove_toDirection()", string_append("tag no found", tag_string));
		result_container = tag_container;
	SiNo
		value_length = native_string_length(tag_string);
		Si isRight Entonces
			start_tagData = math_sum(index_startData, value_length);
		SiNo
			start_tagData = math_minus(index_startData, value_length);
		FinSi
		end_tagData      = tag_getDataEndIndex_toDirection(tag_container, index_startData, isRight);
		result_container = string_remove(tag_container, start_tagData, end_tagData);
	FinSi
FinFuncion
//-----[ GETTERS................. ]--------------------------------------[#]
Funcion result_delimiter <- tag_getDelimiter_fromCategory(TAG_CATEGORY)
	Definir result_delimiter Como Texto;
	Segun TAG_CATEGORY Hacer
		tag_CATEGORY_INSTRUCTION(): 
			result_delimiter = tag_delimiter_instruction();
		tag_CATEGORY_TYPE(): 
			result_delimiter = tag_delimiter_type();
		tag_CATEGORY_METADATA(): 
			result_delimiter = tag_delimiter_meta();
		De Otro Modo:
			result_delimiter = tag_delimiter_core();
			log_error_function("tag_getDelimiter_fromCategory()", "CATEGORY NO FOUND");
	FinSegun
FinFuncion

Funcion result_data <- tag_get_toRight(tag_container, tag_string)
	Definir result_data Como Texto;
	result_data = tag_middleware(tag_container, tag_string, ACTION_GET(), true(), string_NULL());
FinFuncion

Funcion result_data <- tag_get_ToLeft(tag_container, tag_string)
	Definir result_data Como Texto;
	result_data = tag_middleware(tag_container, tag_string, ACTION_GET(), false(), string_NULL());
FinFuncion
//-----[ SETTERS................. ]--------------------------------------[#]
Funcion result_data <- tag_set_toRight(tag_container, tag_string, new_string)
	Definir result_data Como Texto;
	result_data = tag_middleware(tag_container, tag_string, ACTION_SET(), true(), new_string);
FinFuncion

Funcion result_data <- tag_set_ToLeft(tag_container, tag_string, new_string)
	Definir result_data Como Texto;
	result_data = tag_middleware(tag_container, tag_string, ACTION_SET(), false(), new_string);
FinFuncion
//-----[ INSERT.................. ]--------------------------------------[#]
Funcion result_data <- tag_append_toRight(tag_container, tag_string, insert_string)
	Definir result_data Como Texto;
	result_data = tag_middleware(tag_container, tag_string, ACTION_APPEND(), true(), insert_string);
FinFuncion

Funcion result_data <- tag_append_ToLeft(tag_container, tag_string, insert_string)
	Definir result_data Como Texto;
	result_data = tag_middleware(tag_container, tag_string, ACTION_APPEND(), false(), insert_string);
FinFuncion
//-----[ CLEAR................... ]--------------------------------------[#]
Funcion result_data <- tag_clear_toRight(tag_container, tag_string)
	Definir result_data Como Texto;
	result_data = tag_middleware(tag_container, tag_string, ACTION_CLEAR(), true(), string_NULL());
FinFuncion

Funcion result_data <- tag_clear_ToLeft(tag_container, tag_string)
	Definir result_data Como Texto;
	result_data = tag_middleware(tag_container, tag_string, ACTION_CLEAR(), false(), string_NULL());
FinFuncion
//-----[ TAG:SEARCH.............. ]--------------------------------------[#]
Funcion start_tagData <- tag_getDataStartIndex_toDirection(tag_container, tag_string, isRight)
	Definir start_tagData Como Entero;
	Si isRight Entonces
		start_tagData = tag_getDataStartIndex_toRight(tag_container, tag_string);
	SiNo
		start_tagData = tag_getDataStartIndex_ToLeft(tag_container, tag_string);
	FinSi
FinFuncion

Funcion start_tag <- tag_getIndexStart_toDirection(tag_container, tag_string, isRight)
	Definir start_tag Como Entero;
	Si isRight Entonces
		start_tag = tag_getIndexStart_toRight(tag_container, tag_string);
	SiNo
		start_tag = tag_getIndexStart_ToLeft(tag_container, tag_string);
	FinSi
FinFuncion

Funcion result_index <- tag_getIndexStart_ToLeft(tag_container, tag_string)
	Definir result_index Como Entero;
	result_index = tag_getDataStartIndex_ToLeft(tag_container, tag_string);
	result_index = math_minus(result_index, native_string_length(tag_string));
FinFuncion 

Funcion result_index <- tag_getDataStartIndex_ToLeft(tag_container, tag_string)
	Definir result_index Como Entero;
	result_index =  tag_getDataStartIndex_left_fromIndex(tag_container, tag_string, 0);
FinFuncion

Funcion result_index <- tag_getDataStartIndex_left_fromIndex(tag_container, tag_string, start_index)
	Definir result_index, i, end_sub, tag_length, end_index, VALUE_INT_NULL Como Entero;
	Definir tag_match, char_check, DELIMITER_CORE Como Texto;
	Definir isSafe Como Logico;
	VALUE_INT_NULL = number_NULL();
	DELIMITER_CORE = tag_delimiter_core();
	result_index   = VALUE_INT_NULL;
	i              = start_index;
	tag_length     = native_string_length(tag_string);
	end_index      = native_string_length(tag_container);
	isSafe         = number_IsInRange(i, 0, math_decrement(end_index));
	end_index      = math_minus(end_index, tag_length);
	Mientras isSafe & number_isEquals(result_index, VALUE_INT_NULL) Hacer
		end_sub   = math_sum(i, tag_length);
		char_check = char_at(tag_container, end_sub);
		isSafe = char_check <> DELIMITER_CORE & (end_sub <= end_index);
		Si isSafe Entonces
			tag_match = string_substring(tag_container, i, end_sub);
			Si string_isEquals(tag_string, tag_match) Entonces
				result_index = end_sub;
			FinSi
		FinSi
		i = math_increment(i);
	FinMientras
	Si number_isEquals(result_index, VALUE_INT_NULL) Entonces
		log_error_function("tag_getDataStartIndex_left_fromIndex", string_append("tag no found: ", tag_string));
		log_error_condition_rangeValue("tag_getDataStartIndex_left_fromIndex", end_index, 0, end_index);
	FinSi
FinFuncion

Funcion result_index <- tag_getIndexStart_toRight(tag_container, tag_string)
	Definir result_index Como Entero;
	result_index = tag_getDataStartIndex_toRight(tag_container, tag_string);
	result_index = math_sum(result_index, native_string_length(tag_string));
FinFuncion 

Funcion result_index <- tag_getDataStartIndex_toRight(tag_container, tag_string)
	Definir result_index, legth_container Como Entero;
	legth_container = native_string_length(tag_container);
	result_index = tag_getDataStartIndex_toRight_fromIndex(tag_container, tag_string, legth_container);
FinFuncion

Funcion result_index <- tag_getDataStartIndex_toRight_fromIndex(tag_container, tag_string, start_index)
	Definir result_index, i, start_sub, tag_length, end_index, VALUE_INT_NULL Como Entero;
	Definir tag_match, char_check, DELIMITER_CORE Como Texto;
	Definir isSafe Como Logico;
	VALUE_INT_NULL = number_NULL();
	DELIMITER_CORE = tag_delimiter_core();
	result_index   = VALUE_INT_NULL;
	i              = start_index;
	tag_length     = native_string_length(tag_string);
	end_index      = native_string_length(tag_container);
	isSafe         = number_IsInRange(i, 0, end_index);
	Mientras isSafe & number_isEquals(result_index, VALUE_INT_NULL) Hacer
		start_sub = math_minus(i, tag_length);
		char_check = char_at(tag_container, start_sub);
		isSafe = char_check <> DELIMITER_CORE & (start_sub >= 0);
		Si isSafe Entonces
			tag_match = string_substring(tag_container, start_sub, i);
			Si string_isEquals(tag_string, tag_match) Entonces
				result_index = start_sub;
			FinSi
		FinSi
		i = math_decrement(i);
	FinMientras
	Si number_isEquals(result_index, VALUE_INT_NULL) Entonces
		log_error_function("tag_getDataStartIndex_toRight_fromIndex", string_append("tag no found: ", tag_string));
		log_error_condition_rangeValue("tag_getDataStartIndex_toRight_fromIndex", end_index, 0, end_index);
	FinSi
FinFuncion
// '-------------[ TAG: SEARCH_END...................... ]---------------(+)
Funcion end_tagData <- tag_getDataEndIndex_toDirection(tag_container, index_start, isRight)
	Definir end_tagData Como Entero;
	Si isRight Entonces
		end_tagData = tag_getDataEndIndex_toRight(tag_container, index_start);
	SiNo
		end_tagData = tag_getDataEndIndex_ToLeft(tag_container, index_start);
	FinSi
FinFuncion

Funcion result_index <- tag_getDataEndIndex_ToLeft(tag_container, start_index)
	Definir result_index, i, VALUE_INT_NULL, container_length Como Entero;
	Definir char_check, VALUE_STR_NULL, CATEGORY_CTRL Como Texto;
	Definir isSafe Como Logico;
	VALUE_INT_NULL   = number_NULL();
	VALUE_STR_NULL   = string_NULL();
	CATEGORY_CTRL    = ascii_CONTROL();
	result_index     = VALUE_INT_NULL;
	container_length = string_length(tag_container);
	i                = start_index;
	isSafe           = number_IsInRange(start_index, 0, math_decrement(container_length));
	Mientras isSafe & number_isEquals(result_index, VALUE_INT_NULL) Hacer
		i      = ascii_getIndex_StartCategory_fromIndex(tag_container, CATEGORY_CTRL, i);
		isSafe = !number_isEquals(i, VALUE_INT_NULL);
		Si isSafe Entonces
			char_check = char_at(tag_container, i);
			Si char_check <> VALUE_STR_NULL Entonces
				result_index = i;
			FinSi
		SiNo
			result_index = container_length;
		FinSi
		i = math_increment(i);
	FinMientras
	Si number_isEquals(result_index, VALUE_INT_NULL) Entonces
		log_error_function("tag_getDataEndIndex_ToLeft_fromIndex", string_append("index no valid: ", integer_toString(start_index)));
	FinSi
FinFuncion

Funcion result_index <- tag_getDataEndIndex_toRight(tag_container, start_index)
	Definir result_index, i, VALUE_INT_NULL, container_length Como Entero;
	Definir char_check, VALUE_STR_NULL, CATEGORY_CTRL Como Texto;
	Definir isSafe Como Logico;
	VALUE_INT_NULL   = number_NULL();
	VALUE_STR_NULL   = string_NULL();
	CATEGORY_CTRL    = ascii_CONTROL();
	result_index     = VALUE_INT_NULL;
	container_length = string_length(tag_container);
	i                = math_decrement(start_index);
	isSafe           = number_IsInRange(start_index, 0, math_decrement(container_length));
	Mientras isSafe & number_isEquals(result_index, VALUE_INT_NULL) Hacer
		i      = ascii_getLastIndex_StartCategory_fromIndex(tag_container, CATEGORY_CTRL, i);
		isSafe = !number_isEquals(i, VALUE_INT_NULL);
		Si isSafe Entonces
			char_check = char_at(tag_container, i);
			Si char_check <> VALUE_STR_NULL Entonces
				result_index = math_increment(i);
			FinSi
		SiNo
			result_index = 0;
		FinSi
		i = math_decrement(i);
	FinMientras
	Si number_isEquals(result_index, VALUE_INT_NULL) Entonces
		log_error_function("tag_getDataEndIndex_toRight_fromIndex", string_append("index no valid: ", integer_toString(start_index)));
	FinSi
FinFuncion
//-----[ DISPATCHER.............. ]--------------------------------------[#]
Funcion result_data <- tag_middleware(tag_container, tag_string, CONST_ACTION, isRight, optional_string)
	Definir result_data Como Texto;
	Definir start_tagData, end_tagData, tempIndex_tagData Como Entero;
	start_tagData = tag_getDataStartIndex_toDirection(tag_container, tag_string, isRight);
	Si !value_isNULL(start_tagData, TYPE_INT()) Entonces 
		Si CONST_ACTION == ACTION_APPEND() entonces 
			end_tagData = number_NULL();
		SiNo
			tempIndex_tagData = tag_getDataEndIndex_toDirection(tag_container, start_tagData, isRight);
			Si isRight Entonces
				end_tagData   = start_tagData;
				start_tagData = tempIndex_tagData;
			SiNo
				end_tagData   = tempIndex_tagData;
			FinSi
		FinSi
		result_data = tag_dispatcher(tag_container, CONST_ACTION, start_tagData, end_tagData, optional_string);
	SiNo
		log_error_function("tag_middleware", string_append("tag no found: ", tag_string));
	FinSi
FinFuncion

Funcion result_data <- tag_dispatcher(tag_container, CONST_ACTION, start_tagData, end_tagData, optional_string)
	Definir result_data Como Texto;
	Segun CONST_ACTION Hacer
		ACTION_SET():
			result_data = string_remove(tag_container, start_tagData, end_tagData);
			result_data = string_insert(result_data, optional_string, start_tagData);
		ACTION_GET():
			result_data = string_substring(tag_container, start_tagData, end_tagData);
		ACTION_APPEND():
			result_data = string_insert(tag_container, optional_string, start_tagData);
		ACTION_CLEAR():
			result_data = string_remove(tag_container, start_tagData, end_tagData);
		De Otro Modo:
			log_error_function("tag_dispatcher()", string_append("CONST_ACTION no exist: ", CONST_ACTION));
			result_data = string_NULL();
	FinSegun
FinFuncion
//-----[ TAG SYMBOLS & DELIMITERS ]--------------------------------------[#]
Funcion result_delimiter <- tag_delimiter_core
	Definir result_delimiter Como Texto;
	result_delimiter = "";
FinFuncion

Funcion result_delimiter <- tag_delimiter_type
	Definir result_delimiter Como Texto;
	result_delimiter = "";
FinFuncion

Funcion result_delimiter <- tag_delimiter_meta
	Definir result_delimiter Como Texto;
	result_delimiter = "";
FinFuncion

Funcion result_delimiter <- tag_delimiter_instruction
	Definir result_delimiter Como Texto;
	result_delimiter = "";
FinFuncion

Funcion category_tag <- tag_CATEGORY_CORE
	Definir category_tag Como Texto;
	category_tag = "TAG_CORE";
FinFuncion

Funcion category_tag <- tag_CATEGORY_METADATA
	Definir category_tag Como Texto;
	category_tag = "TAG_METADATA";
FinFuncion

Funcion category_tag <- tag_CATEGORY_TYPE
	Definir category_tag Como Texto;
	category_tag = "TAG_TYPEDATA";
FinFuncion

Funcion category_tag <- tag_CATEGORY_INSTRUCTION
	Definir category_tag Como Texto;
	category_tag = "TAG_INSTRUCTION";
FinFuncion

Funcion action_name <- ACTION_SET
	Definir action_name Como Texto;
	action_name = "ACTION_SET";
FinFuncion

Funcion action_name <- ACTION_GET
	Definir action_name Como Texto;
	action_name = "ACTION_GET";
FinFuncion

Funcion action_name <- ACTION_ADD
	Definir action_name Como Texto;
	action_name = "ACTION_ADD";
FinFuncion

Funcion action_name <- ACTION_REMOVE
	Definir action_name Como Texto;
	action_name = "ACTION_REMOVE";
FinFuncion

Funcion action_name <- ACTION_APPEND
	Definir action_name Como Texto;
	action_name = "ACTION_APPEND";
FinFuncion

Funcion action_name <- ACTION_CLEAR
	Definir action_name Como Texto;
	action_name = "ACTION_CLEAR";
FinFuncion
///%%%%%[ COLLECTION.............. ]%%%%%%%[   #CLL    ]%%%%%%%%%%%%%%%%%%%%
Funcion result_collection <- collection_new_base(STRUCT_TYPE, TYPE)
	Definir result_collection  Como Texto;
	result_collection  = collection_new(STRUCT_TYPE, TYPE, "b");//base
FinFuncion
//name<t>T/data/<m>i
Funcion result_collection <- collection_new(STRUCT_TYPE, TYPE, id_string)
    Definir result_collection , parts_collection Como Texto;
    Definir size_array Como Entero;
    size_array = 7;
    Dimension parts_collection[size_array];
    parts_collection[0] = STRUCT_TYPE;//name
	parts_collection[1] = tag_new(id_string, tag_CATEGORY_TYPE());//type_tag
	parts_collection[2] = TYPE;//type
    parts_collection[3] = tag_delimiter_core();//start
    parts_collection[4] = tag_delimiter_core();//end
	parts_collection[5] = tag_new(id_string, tag_CATEGORY_INSTRUCTION());//tag_manipulation
    parts_collection[6] = "0";//count
    result_collection  = array_ofString_withSeparator(parts_collection, size_array, TYPE_STRING(), "");
FinFuncion
//-----[ GETTERS................. ]--------------------------------------[#]
Funcion name_collection <- collection_getName(collection)
	Definir name_collection Como Texto;
	name_collection = ascii_substring_untilCategory(collection, ascii_CONTROL());
FinFuncion

Funcion size_collection <- collection_getSize(collection)
	Definir size_collection Como Entero;
	size_collection = integer_parseInt(collection_getSize_toString(collection));
FinFuncion

Funcion size_string <- collection_getSize_toString(collection)
	Definir size_string Como Texto;
	size_string = ascii_substring_untilCategory_last(collection, ascii_CONTROL());
FinFuncion

Funcion type_result <- collection_getType_byID(collection, id_type)
	Definir type_result Como Texto;
	type_result = tag_get_ToLeft(collection, tag_new(id_type, tag_CATEGORY_TYPE()));
FinFuncion

Funcion type_result <- collection_getType(collection)
	Definir type_result, symb_typeData Como Texto;
	Definir index_typeArea, index_endTypeArea Como Entero;
	symb_typeData     = tag_delimiter_type();
	index_typeArea    = math_increment(string_indexOf(collection, symb_typeData));
	index_endTypeArea = math_increment(string_indexOf_fromIndex(collection, symb_typeData, index_typeArea));
	type_result       = ascii_substring_untilCategory_fromIndex(collection, ascii_CONTROL(), index_endTypeArea);
FinFuncion

Funcion index_dataEnd <- collection_getIndex_EndData(collection)
	Definir index_dataEnd Como Entero;
	index_dataEnd = collection_getIndex_EndData_fromIndex(collection, string_length(collection));
FinFuncion

Funcion index_dataEnd <- collection_getIndex_EndData_fromIndex(collection, index_start)
	Definir index_dataEnd Como Entero;
	index_dataEnd = string_lastIndexOf_fromIndex(collection, tag_delimiter_core(), index_start);
FinFuncion

Funcion index_dataStart <- collection_getIndex_StartData(collection)
	Definir index_dataStart Como Entero;
	index_dataStart = math_increment(string_indexOf(collection, tag_delimiter_core()));
FinFuncion

Funcion collection_data <- collection_getContent(collection)
	Definir collection_data Como Texto;
	Definir index_dataStart, index_dataEnd Como Entero;
	index_dataStart = collection_getIndex_StartData(collection);
	index_dataEnd   = collection_getIndex_EndData(collection);
	collection_data = string_substring(collection, index_dataStart, index_dataEnd);
FinFuncion

Funcion collection_minimumLength <- collection_getMinDataLength
	Definir collection_minimumLength Como Entero;
	collection_minimumLength = 1;
FinFuncion

Funcion result_index <- collection_getIndex_byLength(logical_index, uniform_length, start_index)
	Definir result_index Como Entero;
	result_index = math_sum((logical_index * uniform_length), start_index);
FinFuncion
//-----[ SETTERS................. ]--------------------------------------[#]
Funcion result_collection <- collection_setSize(collection, new_size)
	Definir result_collection , size_string Como Texto;
	size_string       = native_number_toString(new_size);
	result_collection = collection_setSize_byString(collection, size_string);
FinFuncion

Funcion result_collection <- collection_setSize_byString(collection, size_string)
	Definir result_collection , collection_record Como Texto;
	Definir index_endSize Como Entero;
	index_endSize     = math_increment(ascii_getLastIndex_startCategory(collection, ascii_CONTROL()));
	collection_record = string_substring(collection, 0, index_endSize);
	result_collection = string_append(collection_record, size_string);
FinFuncion

Funcion result_collection <- collection_setName(collection, new_name)
	Definir result_collection, clearName_collection Como Texto;
	Definir index_endName Como Entero;
	index_endName        = ascii_getIndex_startCategory(collection, ascii_CONTROL());
	clearName_collection = string_remove(collection, 0, index_endName);
	result_collection    = string_append(new_name, clearName_collection);
FinFuncion
//-----[ UTILITIES............... ]--------------------------------------[#]
Funcion index_isValid <- collection_logicalIndex_isValid(collection_size, logical_index)
	Definir index_isValid Como Logico;
	index_isValid = (logical_index >= 0 & logical_index < collection_size);
FinFuncion

Funcion index_isValid <- collection_logicalIndex_isValid_byACTION(collection_size, logical_index, CONTS_ACTION)
	Definir index_isValid, isSpecialCase Como Logico;
	isSpecialCase  = (CONTS_ACTION == ACTION_ADD()) & (collection_size == logical_index);
	index_isValid  = isSpecialCase | collection_logicalIndex_isValid(collection_size, logical_index);
FinFuncion

Funcion result_collection <- collection_incrementSize(collection)
	Definir result_collection Como Texto;
	result_collection = collection_sumSize(collection, 1);
FinFuncion

Funcion result_collection <- collection_decrementSize(collection)
	Definir result_collection Como Texto;
	result_collection = collection_minusSize(collection, 1);
FinFuncion

Funcion result_collection <- collection_minusSize(collection, number_input)
	Definir result_collection Como Texto;
	result_collection = collection_sumSize(collection, math_negated(number_input));
FinFuncion

Funcion result_collection <- collection_sumSize(collection, number_input)
	Definir result_collection Como Texto;
	Definir result_mathOperation Como Entero;
	result_mathOperation = math_sum(collection_getSize(collection), number_input);
	si result_mathOperation >= 0 Entonces
		result_collection = collection_setSize(collection, result_mathOperation);
	SiNo
		result_collection = collection;
	FinSi
FinFuncion

Funcion element_fit <- collection_fitData_withSymbol(element_string, length_fit, symbol_padding)
	Definir element_fit Como Texto;
	element_fit = string_fit(element_string, String_repeatText(symbol_padding, length_fit));
FinFuncion

Funcion element_fit <- collection_fitEndData_withSymbol(element_string, length_fit, symbol_padding)
	Definir element_fit Como Texto;
	element_fit = string_fit_end(element_string, String_repeatText(symbol_padding, length_fit));
FinFuncion

Funcion result_data <- collection_clearString_bySymbol(uniform_string, uniform_length, target_symbol)
	Definir result_data, current_char Como Texto;
	Definir index_clear Como Entero;
	Definir isTargetSymbol Como Logico;
	index_clear    = 0;
	isTargetSymbol = true();
	Mientras (index_clear < uniform_length) & isTargetSymbol Hacer
		current_char   = char_At(uniform_string, index_clear);
		isTargetSymbol = String_isEquals(current_char, target_symbol);
		Si isTargetSymbol Entonces
			index_clear = math_increment(index_clear);
		FinSi
	FinMientras
	result_data = string_substring(uniform_string, index_clear, uniform_length);
FinFuncion

Funcion ensure_length <- collection_ensure_minLength(element_length, function_name, warning_message)
	Definir ensure_length, min_length Como Entero;
	Definir message_value Como Texto;
	min_length    = collection_getMinDataLength();
	ensure_length = element_length;
	Si element_length < min_length Entonces
		message_value = string_append(warning_message, integer_toString(element_length));
		log_error_function(function_name, message_value);
		ensure_length = min_length;
	FinSi	
FinFuncion

Funcion isMatch <- collection_isEqualsName(collection, expected_collection)
	Definir isMatch Como Logico;
	isMatch = collection_isExpectedName(collection, collection_getName(expected_collection));
FinFuncion

Funcion isMatch <- collection_isExpectedName(collection, expected_name)
    Definir isMatch Como Logico;
    isMatch = string_isEquals(collection_getName(collection), expected_name);
FinFuncion

Funcion clear_collection <- collection_clear(collection)
	Definir clear_collection Como Texto;
	//clear_Colection = collection_new(collection_getType(collection), collection_getName(collection));
FinFuncion

Funcion isOutRange <- collection_validator_isOutOfRangeByAction(name_function, collection_size, logical_index, CONST_ACTION)
    Definir isOutRange Como Logico;
    Definir warning_message Como Texto;
    isOutRange = !collection_logicalIndex_isValid_byACTION(collection_size, logical_index, CONST_ACTION);
    Si isOutRange Entonces
        warning_message = "Error: Logical index out of range or invalid for the requested action: >> ";
        warning_message = string_append_withSeparator(warning_message, " <<", integer_toString(logical_index));
        log_error_function(name_function, warning_message);
    FinSi
FinFuncion

Funcion isTagNotFound <- collection_validator_isTagNotFound(name_function, tag_index)
    Definir isTagNotFound Como Logico;
    Definir warning_message Como Texto;
    isTagNotFound = value_isNULL(tag_index, TYPE_INT());
    Si isTagNotFound Entonces
        warning_message = "Error: tag not found.";
        log_error_function(name_function, warning_message);
    FinSi
FinFuncion

Funcion isOverflow <- collection_validator_isDataOverflow(name_function, input_data, data_limit, CONST_ACTION)
    Definir isOverflow Como Logico;
    Definir data_length Como Entero;
    Definir warning_message Como Texto;
    data_length = native_string_length(input_data);
    isOverflow  = data_length > data_limit;
    Si isOverflow Entonces
        warning_message = string_append(CONST_ACTION, ": The data doesnt fit");
        log_error_function(name_function, warning_message);
    FinSi
FinFuncion

Funcion result_fallback <- collection_return_byAction(original_collection, CONST_ACTION)
    Definir result_fallback Como Texto;
    Si CONST_ACTION == ACTION_GET() Entonces
        result_fallback = string_NULL();
    SiNo
        result_fallback = original_collection;
    FinSi
FinFuncion
//=====[ ADD: RIGHT......... ]====[ direction <<< add :: (old, new) ]====[#]
Funcion result_collection <- collection_add_toRight_byString_force(collection, data_string)
	Definir result_collection Como Texto;
	Definir index_dataEnd Como Entero;
	index_dataEnd     = collection_getIndex_EndData(collection);
	result_collection = string_insert(collection, data_string, index_dataEnd);
FinFuncion
//-----[ADD: LEFT........... ]----[ direction >>> add :: (new, old) ]----(+)
Funcion result_collection <- collection_add_ToLeft_byString_force(collection, data_string)
	Definir result_collection Como Texto;
	Definir index_dataStart Como Entero;
	index_dataStart   = collection_getIndex_StartData(collection);
	result_collection = string_insert(collection, data_string, index_dataStart);
FinFuncion
///%%%%%[ POINTER_STRING.......... ]%%%%%%%[   #PST    ]%%%%%%%%%%%%%%%%%%%%
Funcion tag_pointer <- stringPointer_new(id_string, index_data, length_data, logical_index)
    Definir tag_pointer, pointer_id, result_string, data_point, part_dataStr Como Texto;
    Definir index_dataStr, length_dataStr, logical_dataStr Como Texto;
    pointer_id        = pointerString_formatId(id_string);
    tag_pointer       = tag_new(pointer_id, tag_CATEGORY_METADATA());
    index_dataStr     = integer_toString(index_data);
    length_dataStr    = integer_toString(length_data);
    logical_dataStr   = integer_toString(logical_index);
    data_point        = string_append_withSeparator(index_dataStr, length_dataStr, symbol_separator_simple());
    part_dataStr      = string_append_withSeparator(data_point, logical_dataStr, pointerString_symbolSeparator());
    tag_pointer       = string_append(part_dataStr, tag_pointer);
FinFuncion

Funcion result_collection <- stringPointer_new_toLogicalIndex(collection, id_string, logical_index)
	Definir result_collection, tag_dataPointer Como Texto;
	tag_dataPointer   = stringPointer_new(id_string, 0, 0, logical_index);
FinFuncion
// '-------------[ POINTER: add......................... ]---------------(+)
Funcion result_container <- stringPointer_add(container_string, string_pointer)
	Definir result_container Como Texto;
	result_container = tag_add_toRight(container_string, string_pointer);
FinFuncion

Funcion result_container <- stringPointer_add_new(container_string, id_string, index_data, length_data, logical_index)
	Definir result_container, string_pointer Como Texto;
	string_pointer   = stringPointer_new(id_string, index_data, length_data, logical_index);
	result_container = stringPointer_add(container_string, string_pointer);
FinFuncion
// '-------------[ POINTER: remove...................... ]---------------(+)
Funcion result_container <- stringPointer_remove(container_string, id_string)
	Definir result_container, pointer_id Como Texto;
	pointer_id       = pointerString_formatId(id_string);
	result_container = tag_remove_toRight(container_string, pointer_id);
FinFuncion
// '-------------[ POINTER: get......................... ]---------------(+)
Funcion result_data <- tringPointer_get_toType(container_string, id_string, TYPE)
	Definir data_raw, data_catch Como Texto;
	Segun TYPE Hacer
		caso TYPE_INT():     Definir result_data Como Entero;
		caso TYPE_FLOAT():   Definir result_data Como Real;
		caso TYPE_BOOLEAN(): Definir result_data Como Logico;
		De Otro Modo:        Definir result_data Como Texto;
	FinSegun
	data_raw    = stringPointer_get(container_string, id_string);
	data_catch  = value_StringCatch_ofType(data_raw, TYPE, "collection_stringPointer_get_byType()", "data no is valid");
	result_data = value_stringToType(data_catch, TYPE);
FinFuncion

Funcion result_dataPointer <- stringPointer_get(container_string, id_string)
	Definir result_dataPointer, info_index, info_length Como Texto;
	Definir index_tagPointer, index_startPointer, index_separator Como Entero;
	Definir index_endPointer, index_data, length_data Como Entero;
	pointer_id         = pointerString_formatId(id_string);
	index_tagPointer   = string_lastIndexof(container_string, id_string);
	index_endPointer   = string_lastIndexof_fromIndex(container_string, pointerString_symbolSeparator(), index_tagPointer);
	index_separator    = string_lastIndexof_fromIndex(container_string, symbol_separator_simple(), index_endPointer);
	index_startPointer = math_increment(ascii_getLastIndex_startCategory_fromIndex(container_string, ascii_CONTROL, index_separator));
	info_index         = string_substring(container_string, index_startPointer, index_separator);
	info_length        = string_substring(container_string, math_increment(index_separator), index_endPointer);
	index_data         = integer_parseInt(info_index);
	length_data        = integer_parseInt(info_length);
	si string_index_isInRange(container_string, index_data, length_data) Entonces 
		result_dataPointer = string_substring(container_string, index_data, length_data);
	SiNo
		log_error_function("stringPointer_get()", "stringPointer out of range");
		result_dataPointer = container_string;
	FinSi
FinFuncion
// '-------------[ POINTER: set......................... ]---------------(+)

// '-------------[ POINTER: modify...................... ]---------------(+)

//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=============================
Funcion result_string <- pointerString_formatId(id_string)
	Definir result_string Como Texto;
	result_string = string_append(pointerString_symbolId(), id_string);
FinFuncion

Funcion result_string <- pointerString_symbolId
	Definir result_string Como Texto;
	result_string = "&";
FinFuncion

Funcion result_string <- pointerString_symbolSeparator
	Definir result_string Como Texto;
	result_string = ";";
FinFuncion
///%%%%%[ COLLECTION_UNIFORM...... ]%%%%%%%[   #CUN    ]%%%%%%%%%%%%%%%%%%%%
Funcion result_collection <- collectionUniform_new(STRUCT_TYPE, TYPE, uniform_length)
	Definir result_collection, base_collection Como Texto;
	base_collection   = collection_new(STRUCT_TYPE, TYPE, id_collectionUniform());
	result_collection = collectionUniform_setUniformLength(base_collection, uniform_length);
FinFuncion

Funcion result_collection <- collectionUniform_init(STRUCT_TYPE, TYPE, element)
    Definir  result_collection, element_string, init_collection Como Texto;
    Definir auto_length Como Entero;
	element_string    = value_TypeToString(element, TYPE);
    auto_length       = string_length(element_string);
    init_collection   = collectionUniform_new(STRUCT_TYPE, TYPE, auto_length);
	result_collection = collectionUniform_add_ToLeft_byString(init_collection, element_string);
FinFuncion
//-----[ UTILITIES............... ]--------------------------------------[#]
Funcion fit_element <- collectionUniform_fitElement(element_string, length_fit)
	Definir fit_element Como Texto;
	fit_element = collection_fitData_withSymbol(element_string, length_fit, collectionUniform_symbolNull());
FinFuncion

Funcion result_data <- collectionUniform_clearString_bySymbol(uniform_string, uniform_length)
	Definir result_data Como Texto;
	result_data = collection_clearString_bySymbol(uniform_string, uniform_length, collectionUniform_symbolNull());
FinFuncion

Funcion canEntered <- collectionUniform_canLengthEntered(data_string, uniform_length)
	Definir canEntered Como Logico;
	Definir data_length Como Entero;
	data_length = native_string_length(data_string);
	canEntered  = (data_length <= uniform_length);
FinFuncion

Funcion hasChanged <- collectionUniform_hasLengthChanged(new_collection, old_collection)
	Definir hasChanged Como Logico;
	hasChanged = string_length(old_collection) <> string_length(new_collection);
FinFuncion
//=====[ ADD: right........................... ]=========================[#]
Funcion result_collection <- collectionUniform_add_toRight(collectionUniform, element)
	Definir result_collection, TYPE Como Texto;
	TYPE               = collectionUniform_getType(collectionUniform);
	result_collection  = collectionUniform_add_toRight_byType(collectionUniform, element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_add_toRight_byType(collectionUniform, element_type, TYPE)
	Definir result_collection, element_string  Como Texto;
	element_string     = value_TypeToString(element_type, TYPE);
	result_collection  = collectionUniform_add_toRight_byString(collectionUniform, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_add_toRight_byString(collectionUniform, element_string)
	Definir result_collection  Como Texto;
	result_collection  = collectionUniform_add_toRight_byString_withSymbol(collectionUniform, element_string, collectionUniform_symbolNull());
FinFuncion

Funcion result_collection <- collectionUniform_add_toRight_byString_withSymbol(collectionUniform, element_string, symbol_padding)
	Definir result_collection, collection_modified Como Texto;
	collection_modified  = collectionUniform_add_toRight_byString_force(collectionUniform, element_string, symbol_padding);
	result_collection    = collection_incrementSize(collection_modified);
FinFuncion

Funcion result_collection <- collectionUniform_add_toRight_byString_force(collectionUniform, element_string, symbol_padding)
	Definir result_collection, element_fit Como Texto;
	Definir uniformLength_fit Como Entero;
	uniformLength_fit = collectionUniform_getUniformLength(collectionUniform);
	element_fit       = collection_fitData_withSymbol(element_string, uniformLength_fit, symbol_padding);
	result_collection = collection_add_toRight_byString_force(collectionUniform, element_fit);
FinFuncion 
// '-------------[ ADD:.right_data_byIndex.............. ]---------------(+)
Funcion result_collection <- collectionUniform_add_toRightIndex_byString(collectionUniform, element_string, logical_index)
	Definir result_collection, collection_modified Como Texto;
	collection_modified = collectionUniform_add_toRightIndex_string_force(collectionUniform, element_string, logical_index);
	result_collection   = collection_incrementSize(collection_modified);
FinFuncion

Funcion result_collection <- collectionUniform_add_toRightIndex_string_force(collectionUniform, element_string, logical_index)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_middleware(collectionUniform, logical_index, element_string, ACTION_ADD(), true());
FinFuncion
// '-------------[ ADD:.left_data....................... ]---------------(+)
Funcion result_collection <- collectionUniform_add_ToLeft(collectionUniform, element)
	Definir result_collection, TYPE Como Texto;
	TYPE               = collectionUniform_getType(collectionUniform);
	result_collection  = collectionUniform_add_ToLeft_byType(collectionUniform, element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_add_ToLeft_byType(collectionUniform, element_type, TYPE)
	Definir result_collection, element_string Como Texto;
	element_string    = value_TypeToString(element_type, TYPE);
	result_collection  = collectionUniform_add_ToLeft_byString(collectionUniform, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_add_ToLeft_byString(collectionUniform, element_string)
	Definir result_collection  Como Texto;
	result_collection  = collectionUniform_add_ToLeft_byString_withSymbol(collectionUniform, element_string, collectionUniform_symbolNull());
FinFuncion

Funcion result_collection <- collectionUniform_add_ToLeft_byString_withSymbol(collectionUniform, element_string, symbol_padding)
	Definir result_collection, collection_modified Como Texto;
	collection_modified = collectionUniform_add_ToLeft_byString_force(collectionUniform, element_string, symbol_padding);
	result_collection   = collection_incrementSize(collection_modified);
FinFuncion

Funcion result_collection <- collectionUniform_add_ToLeft_byString_force(collectionUniform, element_string, symbol_padding)
	Definir result_collection, element_fit Como Texto;
	Definir uniformLength_fit Como Entero;
	uniformLength_fit = collectionUniform_getUniformLength(collectionUniform);
	element_fit       = collection_fitData_withSymbol(element_string, uniformLength_fit, symbol_padding);
	result_collection = collection_add_ToLeft_byString_force(collectionUniform, element_fit);
FinFuncion
// '-------------[ ADD:.left_data_byIndex............... ]---------------(+)
Funcion result_collection <- collectionUniform_add_ToLeftIndex_byString(collectionUniform, element_string, logical_index)
	Definir result_collection, collection_modified Como Texto;
	collection_modified = collectionUniform_add_ToLeftIndex_string_force(collectionUniform, element_string, logical_index);
	result_collection   = collection_incrementSize(collection_modified);
FinFuncion

Funcion result_collection <- collectionUniform_add_ToLeftIndex_string_force(collectionUniform, element_string, logical_index)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_middleware(collectionUniform, logical_index, element_string, ACTION_ADD(), false());
FinFuncion
//-----[ GETTERS................. ]--------------------------------------[#]
Funcion result_type <- collectionUniform_getType(collectionUniform)
	Definir result_type Como Texto;
	result_type = collection_getType_byID(collectionUniform, id_collectionUniform());
FinFuncion

Funcion result_UniformLength <- collectionUniform_getUniformLength(collectionUniform)
	Definir result_UniformLength Como Entero;
	result_UniformLength = integer_parseInt(tag_get_toRight(collectionUniform, tag_collectionUniform()));
FinFuncion

Funcion result_index <- collectionUniform_getIndex_flagData_toDirection(collectionUniform, isRight)
	Definir result_index Como Entero;
	si isRight Entonces
		result_index = collection_getIndex_EndData(collectionUniform);
	SiNo
		result_index = collection_getIndex_StartData(collectionUniform);
	FinSi
FinFuncion

Funcion normalized_index <- collectionUniform_getIndexData_toDirection(logical_index, uniform_length, start_index, isRight)
	Definir normalized_index Como Entero;
	Si isRight Entonces
		uniform_length = math_negated(uniform_length);
	FinSi
	normalized_index = collection_getIndex_byLength(logical_index, uniform_length, start_index);
FinFuncion

Funcion result_index <- collectionUniform_getIndexKey_byString(collectionUniform, key_string, isRight)
	Definir result_index, collection_size, uniform_length, index_flagData Como Entero;
	collection_size = collection_getSize(collectionUniform);
	uniform_length  = collectionUniform_getUniformLength(collectionUniform);
	index_flagData  = collectionUniform_getIndex_flagData_toDirection(collectionUniform, isRight);
	result_index    = collectionUniform_getIndexKey_force(collectionUniform, key_string, uniform_length, collection_size, index_flagData, isRight);
FinFuncion

Funcion index_target <- collectionUniform_getIndexKey_force(collectionUniform, key_string, uniform_length, collection_size, index_flagData, isRight)
	Definir index_target, start_sub, end_sub, index_EndData Como Entero;
	Definir container_str, key_fit Como Texto;
	Si string_length(key_string) > uniform_length Entonces
		index_target  = number_NULL();
	SiNo
		key_fit       = collectionUniform_fitElement(key_string, uniform_length);
		index_EndData = collectionUniform_getIndexData_toDirection(collection_size, uniform_length, index_flagData, isRight);
		Si isRight Entonces
			start_sub = index_EndData;
			end_sub   = index_flagData;
		SiNo
			start_sub = index_flagData;
			end_sub   = index_EndData;
		FinSi
		container_str = string_substring(collectionUniform, start_sub, end_sub);
		index_target  = collectionUniform_binarySearch_toDirection(container_str, key_fit, uniform_length, collection_size, isRight);
	FinSi
FinFuncion

Funcion index_slot <- collectionUniform_getIndexKeySlot_force(collectionUniform, key_string, uniform_length, collection_size, index_flagData, isRight)
	Definir index_slot, start_resize, end_resize, index_endData Como Entero;
	Definir extracted_container, key_fit Como Texto;
	Si string_length(key_string) > uniform_length Entonces
		index_slot = collection_size;
	SiNo
		key_fit       = collectionUniform_fitElement(key_string, uniform_length);
		index_endData = collectionUniform_getIndexData_toDirection(collection_size, uniform_length, index_flagData, isRight);
		Si isRight Entonces
			start_resize      = index_endData;
			end_resize        = index_flagData;
		SiNo
			start_resize      = index_flagData;
			end_resize        = index_endData;
		FinSi	
		extracted_container = string_substring(collectionUniform, start_resize, end_resize);
		index_slot          = collectionUniform_binarySearchSlot_toDirection_force(extracted_container, key_fit, uniform_length, collection_size, isRight);
	FinSi
FinFuncion
//-----[GET: LEFT........... ]----[ direction >>> add :: (old, new) ]----(+)
Funcion result_data <- collectionUniform_get_ToLeft_byType(collectionUniform, logical_index, TYPE)
	Definir data_raw, data_catch Como Texto;
	Segun TYPE Hacer
		caso TYPE_INT():     Definir result_data Como Entero;
		caso TYPE_FLOAT():   Definir result_data Como Real;
		caso TYPE_BOOLEAN(): Definir result_data Como Logico;
		De Otro Modo:        Definir result_data Como Texto;
	FinSegun
	data_raw    = collectionUniform_get_ToLeft_byString(collectionUniform, logical_index);
	data_catch  = value_StringCatch_ofType(data_raw, TYPE, "collectionUniform_get_ToLeft()", "data no is valid");
	result_data = value_stringToType(data_catch, TYPE);
FinFuncion

Funcion result_data <- collectionUniform_get_ToLeft_byString(collectionUniform, logical_index)
	Definir result_data Como Texto;
	result_data = collectionUniform_middleware(collectionUniform, logical_index, string_NULL(), ACTION_GET(), false());
FinFuncion
//-----[GET: RIGHT.......... ]----[ direction >>> add :: (old, new) ]----(+)
Funcion result_data <- collectionUniform_get_toRight_byType(collectionUniform, logical_index, TYPE)
	Definir data_raw, data_catch Como Texto;
	Segun TYPE Hacer
		caso TYPE_INT():     Definir result_data Como Entero;
		caso TYPE_FLOAT():   Definir result_data Como Real;
		caso TYPE_BOOLEAN(): Definir result_data Como Logico;
		De Otro Modo:        Definir result_data Como Texto;
	FinSegun
	data_raw    = collectionUniform_get_toRight_byString(collectionUniform, logical_index);
	data_catch  = value_StringCatch_ofType(data_raw, TYPE, "collectionUniform_get_toRight()", "data no is valid");
	result_data = value_stringToType(data_catch, TYPE);
FinFuncion

Funcion result_data <- collectionUniform_get_toRight_byString(collectionUniform, logical_index)
	Definir result_data Como Texto;
	result_data = collectionUniform_middleware(collectionUniform, logical_index, string_NULL(), ACTION_GET(), true());
FinFuncion
//-----[ SETTERS................. ]--------------------------------------[#]
Funcion result_collection <- collectionUniform_setUniformLength(collectionUniform, uniform_length)
	Definir result_collection, function_name Como Texto;
	function_name     = "collectionUniform_setUniformLength()";
	uniform_length    = collection_ensure_minLength(uniform_length, function_name, "uniform_length < collection_minLength");
	result_collection = tag_set_toRight(collectionUniform, tag_collectionUniform(), integer_toString(uniform_length));
FinFuncion

Funcion result_collection <- collectionUniform_setFit_ToRight_byString(collectionUniform, logical_index, new_StringValue)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_setFit_ToDirection_byString(collectionUniform, logical_index, new_StringValue, true());
FinFuncion

Funcion result_collection <- collectionUniform_setFit_ToLeft_byString(collectionUniform, logical_index, new_StringValue)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_setFit_ToDirection_byString(collectionUniform, logical_index, new_StringValue, false());
FinFuncion

Funcion result_collection <- collectionUniform_setFit_ToDirection_byString(collectionUniform, logical_index, new_StringValue, isRight)
	Definir result_collection, normalized_element Como Texto;
	normalized_element= collectionUniform_fitElement(new_StringValue, uniform_length);
	result_collection = collectionUniform_middleware(collectionUniform, logical_index, new_StringValue, ACTION_SET(), isRight);
FinFuncion

Funcion result_collection <- collectionUniform_set_ToLeft_byString(collectionUniform, logical_index, new_StringValue)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_middleware(collectionUniform, logical_index, new_StringValue, ACTION_SET(), false());
FinFuncion

Funcion result_collection <- collectionUniform_set_toRight_byString(collectionUniform, logical_index, new_StringValue)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_middleware(collectionUniform, logical_index, new_StringValue, ACTION_SET(), true());
FinFuncion
//-----[ REMOVE.................. ]--------------------------------------[#]
Funcion result_collection <- collectionUniform_remove_ToLeft(collectionUniform, logical_index)
	Definir result_collection, collection_modified Como Texto;
	collection_modified = collectionUniform_middleware(collectionUniform, logical_index, string_NULL(), ACTION_REMOVE(), false());
	result_collection   = collection_decrementSize(collection_modified);
FinFuncion

Funcion result_collection <- collectionUniform_remove_toRight(collectionUniform, logical_index)
	Definir result_collection, collection_modified Como Texto;
	collection_modified = collectionUniform_middleware(collectionUniform, logical_index, string_NULL(), ACTION_REMOVE(), true());
	result_collection   = collection_decrementSize(collection_modified);
FinFuncion
//-----[ DISPATCHER.............. ]--------------------------------------[#]
Funcion result_operation <- collectionUniform_middleware(collectionUniform, logical_index, optional_string, CONST_ACTION, isRight)
    Definir result_operation, name_function Como Texto;
    Definir collection_size, uniformLength_Metadata, index_action, start_indexFlag Como Entero;
    Definir isOutRange, isOverflow, isValid Como Logico;
    name_function          = "collectionUniform_middleware()";
    collection_size        = collection_getSize(collectionUniform);
    uniformLength_Metadata = collectionUniform_getUniformLength(collectionUniform);
    isOutRange             = collection_validator_isOutOfRangeByAction(name_function, collection_size, logical_index, CONST_ACTION);
    Si isOutRange Entonces
        isValid = false();
    SiNo
        isOverflow = collection_validator_isDataOverflow(name_function, optional_string, uniformLength_Metadata, CONST_ACTION);
        isValid    = !isOverflow;
    FinSi
    Si isValid Entonces
        start_indexFlag  = collectionUniform_getIndex_flagData_toDirection(collectionUniform, isRight);
        index_action     = collectionUniform_getIndex_action(collectionUniform, logical_index, uniformLength_Metadata, start_indexFlag, CONST_ACTION, isRight);
        result_operation = collectionUniform_dispatcher(collectionUniform, index_action, uniformLength_Metadata, optional_string, CONST_ACTION);
    SiNo
		result_operation = collection_return_byAction(collectionUniform, CONST_ACTION);
    FinSi
FinFuncion

Funcion result_operation <- collectionUniform_dispatcher(collectionUniform, index_action, uniform_length, optional_string, CONST_ACTION)
	Definir result_operation Como Texto;
	Segun CONST_ACTION Hacer
		Caso ACTION_GET():
			result_operation = collectionUniform_action_get(collectionUniform, index_action, uniform_length);
		Caso ACTION_REMOVE():
			result_operation = collectionUniform_action_remove(collectionUniform, index_action, uniform_length);
		Caso ACTION_ADD():
			result_operation = collectionUniform_action_add(collectionUniform, index_action, uniform_length, optional_string);
		Caso ACTION_SET():
			result_operation = collectionUniform_action_set(collectionUniform, index_action, uniform_length, optional_string);
		De Otro Modo:
			log_error_function("collectionUniform_dispatcher()", "CONST_ACTION no valid");
			result_operation = collectionUniform;
	FinSegun
FinFuncion

Funcion index_action <- collectionUniform_getIndex_action(collectionUniform, logical_index, uniform_length, start_indexFlag, CONST_ACTION, isRight)
	Definir index_action Como Entero;
	Definir isTypeADD Como Logico;
	index_action = collectionUniform_getIndexData_toDirection(logical_index, uniform_length, start_indexFlag, isRight);
	isTypeADD    = (CONST_ACTION == ACTION_ADD());
	Si !isTypeADD & isRight Entonces
		index_action = math_minus(index_action, uniform_length);
	FinSi
FinFuncion

Funcion result_operation <- collectionUniform_action_add(collectionUniform, index_startData, uniform_length, added_string)
	Definir result_operation, normalized_added Como Texto;
	normalized_added  = collectionUniform_fitElement(added_string, uniform_length);
	result_operation  = string_insert(collectionUniform, normalized_added, index_startData);
FinFuncion

Funcion result_operation <- collectionUniform_action_get(collectionUniform, index_startData, uniform_length)
	Definir result_operation, result_raw Como Texto;
	Definir index_endData Como Entero;
	index_endData     = math_sum(index_startData, uniform_length);
	result_raw        = string_substring(collectionUniform, index_startData, index_endData);
	result_operation  = collectionUniform_clearString_bySymbol(result_raw, uniform_length);
FinFuncion

Funcion result_operation <- collectionUniform_action_remove(collectionUniform, index_startData, uniform_length)
	Definir result_operation Como Texto;
	Definir index_endData Como Entero;
	index_endData    = math_sum(index_startData, uniform_length);
	result_operation = string_remove(collectionUniform, index_startData, index_endData);
FinFuncion

Funcion result_operation <- collectionUniform_action_set(collectionUniform, index_startData, uniform_length, added_string)
	Definir result_operation, start_collection, end_collection, normalized_added Como Texto;
	Definir index_endData Como Entero;
	normalized_added  = collectionUniform_fitElement(added_string, uniform_length);
	index_endData     = math_sum(index_startData, uniform_length);
	start_collection  = string_substring(collectionUniform, 0, index_startData);
	end_collection    = string_substring_from(collectionUniform, index_endData);
	result_operation  = string_append_withSeparator(start_collection, end_collection, normalized_added);
FinFuncion
//=====[ ADVANCED OPERATIONS: ADD UNIQUE ]================================[#]
Funcion result_collection <- collectionUniform_addUnique_toDirection_byString(collectionUniform, added_string, isRight)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_middleware_unique(collectionUniform, added_string, UNIFORM_UNIQUE(), isRight);
	result_collection = collection_incrementSize(result_collection);
FinFuncion
// '-------------[ ADD_UNIQUE:.right_data....................... ]---------------(+)
Funcion result_collection <- collectionUniform_addUnique_ToRight(collectionUniform, element)
	Definir result_collection, TYPE Como Texto;
	TYPE              = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_addUnique_ToRight_byType(collectionUniform, element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_addUnique_toRight_byType(collectionUniform, element_type, TYPE)
	Definir result_collection, element_string Como Texto;
	element_string    = value_TypeToString(element_type, TYPE);
	result_collection = collectionUniform_addUnique_toRight_byString(collectionUniform, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_addUnique_toRight_byString(collectionUniform, added_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_addUnique_toDirection_byString(collectionUniform, added_string, true());
FinFuncion
// '-------------[ ADD_UNIQUE:.left_data........................ ]---------------(+)
Funcion result_collection <- collectionUniform_addUnique_ToLeft(collectionUniform, element)
	Definir result_collection, TYPE Como Texto;
	TYPE              = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_addUnique_ToLeft_byType(collectionUniform, element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_addUnique_ToLeft_byType(collectionUniform, element_type, TYPE)
	Definir result_collection, element_string Como Texto;
	element_string    = value_TypeToString(element_type, TYPE);
	result_collection = collectionUniform_addUnique_ToLeft_byString(collectionUniform, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_addUnique_ToLeft_byString(collectionUniform, added_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_addUnique_toDirection_byString(collectionUniform, added_string, false());
FinFuncion
//=====[ ADVANCED OPERATIONS: REMOVE UNIQUE ]=============================[#]
Funcion result_collection <- collectionUniform_removeUnique_toDirection_byString(collectionUniform, key_string, isRight)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_middleware_unique(collectionUniform, key_string, UNIFORM_REMOVE(), isRight);
	result_collection = collection_decrementSize(result_collection);
FinFuncion
// '-------------[ REMOVE_UNIQUE:.right_data.................... ]---------------(+)
Funcion result_collection <- collectionUniform_removeUnique_toRight(collectionUniform, key_element)
	Definir result_collection, TYPE Como Texto;
	TYPE              = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_removeUnique_toRight_byType(collectionUniform, key_element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_removeUnique_toRight_byType(collectionUniform, key_element, TYPE)
	Definir result_collection, key_string Como Texto;
	key_string        = value_TypeToString(key_element, TYPE);
	result_collection = collectionUniform_removeUnique_toRight_byString(collectionUniform, key_string);
FinFuncion

Funcion result_collection <- collectionUniform_removeUnique_toRight_byString(collectionUniform, key_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_removeUnique_toDirection_byString(collectionUniform, key_string, true());
FinFuncion
// '-------------[ REMOVE_UNIQUE:.left_data..................... ]---------------(+)
Funcion result_collection <- collectionUniform_removeUnique_ToLeft(collectionUniform, key_element)
	Definir result_collection, TYPE Como Texto;
	TYPE              = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_removeUnique_ToLeft_byType(collectionUniform, key_element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_removeUnique_ToLeft_byType(collectionUniform, key_element, TYPE)
	Definir result_collection, key_string Como Texto;
	key_string        = value_TypeToString(key_element, TYPE);
	result_collection = collectionUniform_removeUnique_ToLeft_byString(collectionUniform, key_string);
FinFuncion

Funcion result_collection <- collectionUniform_removeUnique_ToLeft_byString(collectionUniform, key_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_removeUnique_toDirection_byString(collectionUniform, key_string, false());
FinFuncion
//=====[ ADVANCED OPERATIONS: ADD DYNAMIC ]================================[#]
Funcion result_collection <- collectionUniform_addDynamic_toDirectionIndex_byString(collectionUniform, logical_index, element_string, isRight)
	Definir result_collection, safe_collection Como Texto;
	safe_collection   = collectionUniform_ensureCapacity(collectionUniform, element_string, isRight);
	result_collection = collectionUniform_middleware(safe_collection, logical_index, element_string, ACTION_ADD(), isRight);
	result_collection = collection_incrementSize(result_collection);
FinFuncion
// '-------------[ ADD_DYNAMIC:.right_data_byIndex.............. ]---------------(+)
Funcion result_collection <- collectionUniform_addDynamic_toRightIndex(collectionUniform, logical_index, element)
	Definir result_collection, TYPE Como Texto;
	TYPE              = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_addDynamic_toRightIndex_byType(collectionUniform, logical_index, element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_addDynamic_toRightIndex_byType(collectionUniform, logical_index, element_type, TYPE)
	Definir result_collection, element_string Como Texto;
	element_string    = value_TypeToString(element_type, TYPE);
	result_collection = collectionUniform_addDynamic_toRightIndex_byString(collectionUniform, logical_index, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_addDynamic_toRightIndex_byString(collectionUniform, logical_index, element_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_addDynamic_toDirectionIndex_byString(collectionUniform, logical_index, element_string, true());
FinFuncion
// '-------------[ ADD_DYNAMIC:.left_data_byIndex............... ]---------------(+)
Funcion result_collection <- collectionUniform_addDynamic_ToLeftIndex(collectionUniform, logical_index, element)
	Definir result_collection, TYPE Como Texto;
	TYPE              = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_addDynamic_ToLeftIndex_byType(collectionUniform, logical_index, element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_addDynamic_ToLeftIndex_byType(collectionUniform, logical_index, element_type, TYPE)
	Definir result_collection, element_string Como Texto;
	element_string    = value_TypeToString(element_type, TYPE);
	result_collection = collectionUniform_addDynamic_ToLeftIndex_byString(collectionUniform, logical_index, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_addDynamic_ToLeftIndex_byString(collectionUniform, logical_index, element_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_addDynamic_toDirectionIndex_byString(collectionUniform, logical_index, element_string, false());
FinFuncion
// '-------------[ ADD_DYNAMIC:.right_directional............... ]---------------(+)
Funcion result_collection <- collectionUniform_addDynamic_toRight(collectionUniform, element)
	Definir result_collection, storedType Como Texto;
	storedType        = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_addDynamic_toRight_byType(collectionUniform, element, storedType);
FinFuncion

Funcion result_collection <- collectionUniform_addDynamic_toRight_byType(collectionUniform, element_type, storedType)
	Definir result_collection, element_string Como Texto;
	element_string    = value_TypeToString(element_type, storedType);
	result_collection = collectionUniform_addDynamic_toRight_byString(collectionUniform, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_addDynamic_toRight_byString(collectionUniform, element_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_addDynamic_toRightIndex_byString(collectionUniform, 0, element_string);
FinFuncion
// '-------------[ ADD_DYNAMIC:.left_directional................ ]---------------(+)
Funcion result_collection <- collectionUniform_addDynamic_toLeft(collectionUniform, element)
	Definir result_collection, storedType Como Texto;
	storedType        = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_addDynamic_toLeft_byType(collectionUniform, element, storedType);
FinFuncion

Funcion result_collection <- collectionUniform_addDynamic_toLeft_byType(collectionUniform, element_type, storedType)
	Definir result_collection, element_string Como Texto;
	element_string    = value_TypeToString(element_type, storedType);
	result_collection = collectionUniform_addDynamic_toLeft_byString(collectionUniform, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_addDynamic_toLeft_byString(collectionUniform, element_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_addDynamic_toLeftIndex_byString(collectionUniform, 0, element_string);
FinFuncion
//=====[ ADVANCED OPERATIONS: SET DYNAMIC ]================================[#]
Funcion result_collection <- collectionUniform_setDynamic_toDirection_byString(collectionUniform, logical_index, element_string, isRight)
	Definir result_collection, safe_collection Como Texto;
	safe_collection   = collectionUniform_ensureCapacity(collectionUniform, element_string, isRight);
	result_collection = collectionUniform_middleware(safe_collection, logical_index, element_string, ACTION_SET(), isRight);
FinFuncion
// '-------------[ SET_DYNAMIC:.right_data_byIndex.............. ]---------------(+)
Funcion result_collection <- collectionUniform_setDynamic_toRight(collectionUniform, logical_index, element)
	Definir result_collection, TYPE Como Texto;
	TYPE              = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_setDynamic_toRight_byType(collectionUniform, logical_index, element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_setDynamic_toRight_byType(collectionUniform, logical_index, element_type, TYPE)
	Definir result_collection, element_string Como Texto;
	element_string    = value_TypeToString(element_type, TYPE);
	result_collection = collectionUniform_setDynamic_toRight_byString(collectionUniform, logical_index, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_setDynamic_toRight_byString(collectionUniform, logical_index, element_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_setDynamic_toDirection_byString(collectionUniform, logical_index, element_string, true());
FinFuncion
// '-------------[ SET_DYNAMIC:.left_data_byIndex............... ]---------------(+)
Funcion result_collection <- collectionUniform_setDynamic_ToLeft(collectionUniform, logical_index, element)
	Definir result_collection, TYPE Como Texto;
	TYPE              = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_setDynamic_ToLeft_byType(collectionUniform, logical_index, element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_setDynamic_ToLeft_byType(collectionUniform, logical_index, element_type, TYPE)
	Definir result_collection, element_string Como Texto;
	element_string    = value_TypeToString(element_type, TYPE);
	result_collection = collectionUniform_setDynamic_ToLeft_byString(collectionUniform, logical_index, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_setDynamic_ToLeft_byString(collectionUniform, logical_index, element_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_setDynamic_toDirection_byString(collectionUniform, logical_index, element_string, false());
FinFuncion
//=====[ ADVANCED OPERATIONS: ADD UNIQUE DYNAMIC ]=======================#]
Funcion result_collection <- collectionUniform_addUniqueDynamic_toDirectionIndex_byString(collectionUniform, added_string, isRight)
	Definir result_collection, safe_collection Como Texto;
	safe_collection   = collectionUniform_ensureCapacity(collectionUniform, added_string, isRight);
	result_collection = collectionUniform_addUnique_toDirection_byString(safe_collection, added_string, isRight);
FinFuncion
// '-------------[ ADD_UNIQUE_DYNAMIC:.right_data............... ]---------------(+)
Funcion result_collection <- collectionUniform_addUniqueDynamic_toRight(collectionUniform, element)
	Definir result_collection, TYPE Como Texto;
	TYPE              = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_addUniqueDynamic_toRight_byType(collectionUniform, element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_addUniqueDynamic_toRight_byType(collectionUniform, element_type, TYPE)
	Definir result_collection, element_string Como Texto;
	element_string    = value_TypeToString(element_type, TYPE);
	result_collection = collectionUniform_addUniqueDynamic_toRight_byString(collectionUniform, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_addUniqueDynamic_toRight_byString(collectionUniform, added_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_addUniqueDynamic_toDirectionIndex_byString(collectionUniform, added_string, true());
FinFuncion
// '-------------[ ADD_UNIQUE_DYNAMIC:.left_data................ ]---------------(+)
Funcion result_collection <- collectionUniform_addUniqueDynamic_ToLeft(collectionUniform, element)
	Definir result_collection, TYPE Como Texto;
	TYPE              = collectionUniform_getType(collectionUniform);
	result_collection = collectionUniform_addUniqueDynamic_ToLeft_byType(collectionUniform, element, TYPE);
FinFuncion

Funcion result_collection <- collectionUniform_addUniqueDynamic_ToLeft_byType(collectionUniform, element_type, TYPE)
	Definir result_collection, element_string Como Texto;
	element_string    = value_TypeToString(element_type, TYPE);
	result_collection = collectionUniform_addUniqueDynamic_ToLeft_byString(collectionUniform, element_string);
FinFuncion

Funcion result_collection <- collectionUniform_addUniqueDynamic_ToLeft_byString(collectionUniform, added_string)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_addUniqueDynamic_toDirectionIndex_byString(collectionUniform, added_string, false());
FinFuncion
//-----[ DISPATCHER.............. ]--------------------------------------[#]
Funcion result_collection <- collectionUniform_middleware_unique(collectionUniform, target_string, CONST_ACTION, isRight)
	Definir result_collection Como Texto;
	Definir uniform_length, collection_size, index_flagData Como Entero;
	collection_size = collection_getSize(collectionUniform);
	uniform_length = collectionUniform_getUniformLength(collectionUniform);
	index_flagData = collectionUniform_getIndex_flagData_toDirection(collectionUniform, isRight);
	Segun CONST_ACTION Hacer
		Caso UNIFORM_UNIQUE():
			result_collection = collectionUniform_action_addUnique(collectionUniform, target_string, uniform_length, collection_size, index_flagData, isRight);
		Caso UNIFORM_REMOVE():
			result_collection = collectionUniform_action_removeUnique(collectionUniform, target_string, uniform_length, collection_size, index_flagData, isRight);
		De Otro Modo:
			log_error_function("collectionUniform_uniqueMiddleware()", "CONST_ACTION no valid");
			result_collection = collectionUniform;
	FinSegun
FinFuncion

Funcion result_collection <- collectionUniform_action_addUnique(collectionUniform, added_string, uniform_length, collection_size, index_flagData, isRight)
	Definir result_collection Como Texto;
	Definir index_target, index_action Como Entero;
	index_target = collectionUniform_getIndexKeySlot_force(collectionUniform, added_string, uniform_length, collection_size, index_flagData, isRight);
	Si index_target <> number_NULL() Entonces
		index_action = collectionUniform_getIndexData_toDirection(index_target, uniform_length, index_flagData, isRight);
		result_collection = collectionUniform_dispatcher(collectionUniform, index_action, uniform_length, added_string, ACTION_ADD());
	SiNo
		Si !collectionUniform_canLengthEntered(added_string, uniform_length) Entonces
			log_error_function("collectionUniform_actionAddUnique()", "ADD_UNIQUE: The data doesnt fit");
		FinSi
		result_collection = collectionUniform;
	FinSi
FinFuncion

Funcion result_collection <- collectionUniform_action_removeUnique(collectionUniform, key_string, uniform_length, collection_size, index_flagData, isRight)
	Definir result_collection Como Texto;
	Definir index_target, index_action Como Entero;
	index_target = collectionUniform_getIndexKey_force(collectionUniform, key_string, uniform_length, collection_size, index_flagData, isRight);
	Si index_target <> number_NULL() Entonces
		index_action = collectionUniform_getIndexData_toDirection(index_target, uniform_length, index_flagData, isRight);
		Si isRight Entonces
			index_action = math_minus(index_action, uniform_length);
		FinSi
		result_collection = collectionUniform_dispatcher(collectionUniform, index_action, uniform_length, key_string, ACTION_REMOVE());
	SiNo
		result_collection = collectionUniform;
	FinSi
FinFuncion
//=====[ CONTAINS OPERATIONS ]============================================[#]
// '-------------[ CONTAINS:._ToLeft............................ ]---------------(+)
Funcion containsKey <- collectionUniform_containsKey_ToLeft(collectionUniform, key_element)
	Definir containsKey Como Logico;
	Definir TYPE Como Texto;
	TYPE        = collectionUniform_getType(collectionUniform);
	containsKey = collectionUniform_containsKey_ToLeft_byType(collectionUniform, key_element, TYPE);
FinFuncion

Funcion containsKey <- collectionUniform_containsKey_ToLeft_byType(collectionUniform, key_type, TYPE)
	Definir containsKey Como Logico;
	Definir key_string Como Texto;
	key_string  = value_TypeToString(key_type, TYPE);
	containsKey = collectionUniform_containsKey_ToLeft_byString(collectionUniform, key_string);
FinFuncion

Funcion containsKey <- collectionUniform_containsKey_ToLeft_byString(collectionUniform, key_string)
	Definir containsKey Como Logico;
	containsKey = collectionUniform_containsKey_byString(collectionUniform, key_string, false());
FinFuncion
// '-------------[ CONTAINS:.toRight........................... ]---------------(+)
Funcion containsKey <- collectionUniform_containsKey_toRight(collectionUniform, key_element)
	Definir containsKey Como Logico;
	Definir TYPE Como Texto;
	TYPE        = collectionUniform_getType(collectionUniform);
	containsKey = collectionUniform_containsKey_toRight_byType(collectionUniform, key_element, TYPE);
FinFuncion

Funcion containsKey <- collectionUniform_containsKey_toRight_byType(collectionUniform, key_type, TYPE)
	Definir containsKey Como Logico;
	Definir key_string Como Texto;
	key_string  = value_TypeToString(key_type, TYPE);
	containsKey = collectionUniform_containsKey_toRight_byString(collectionUniform, key_string);
FinFuncion

Funcion containsKey <- collectionUniform_containsKey_toRight_byString(collectionUniform, key_string)
	Definir containsKey Como Logico;
	containsKey = collectionUniform_containsKey_byString(collectionUniform, key_string, true());
FinFuncion
// '-------------[ CONTAINS:.dispatcher_direction.............. ]---------------(+)
Funcion containsKey <- collectionUniform_containsKey_byString(collectionUniform, key_string, isRight)
	Definir containsKey Como Logico;
	containsKey = collectionUniform_getIndexKey_byString(collectionUniform, key_string, isRight) >= 0;
FinFuncion
//-----[ SEARCH.................. ]--------------------------------------[#]
Funcion result <- collectionUniform_binarySearch_advance(key_string, key_sub, isRight)
	Definir result Como Logico;
	Si isRight Entonces
		result = key_string > key_sub;
	SiNo
		result = key_string < key_sub;
	FinSi
FinFuncion

Funcion result_index <- collectionUniform_binaySearch_normalizeIndex(index, size_norm, isRight)
	Definir result_index Como Entero;
	Si isRight Entonces
		result_index = math_minus(size_norm, index);
	SiNo
		result_index = index;
	FinSi
FinFuncion

Funcion result_index <- collectionUniform_binarySearch_toDirection(container_str, key_string, data_length, collection_size, isRight)
	Definir result_index Como Entero;
	Definir isEmpty, isInRange, isNegative, isSafeContinue Como Logico;
	isEmpty   = string_isEmpty(container_str);
	isInRange = false();
	isEmpty   = false();
	Si isEmpty Entonces 
		log_error_function("collectionUniform_binarySearch_toDirection()", "Error: The container_str cannot be empty.");
	SiNo
		isNegative = collection_size < 0;
		Si isNegative Entonces
			log_error_function("collectionUniform_binarySearch_toDirection()", "Error: The crop length cannot be negative.");
		SiNo
			isInRange = (data_length * collection_size) <= string_length(container_str);
			Si !isInRange Entonces
				log_error_function("collectionUniform_binarySearch_toDirection()", "Error: Invalid indices or out of range in the container.");
			FinSi			
		FinSi
	FinSi
	isSafeContinue = !isEmpty & isInRange & !isNegative;
	Si isSafeContinue Entonces
		result_index = collectionUniform_binarySearch_toDirection_force(container_str, key_string, data_length, collection_size, isRight);
	SiNo
		result_index = number_NULL();
	FinSi
FinFuncion

Funcion result_index <- collectionUniform_binarySearch_toDirection_force(container_str, key_string, data_length, collection_size, isRight)
	Definir result_index, start_sub, end_sub, half_pos, low_pos, high_pos, size_norm Como Entero;
	Definir key_sub Como Texto;
	Definir advance Como Logico;
	low_pos = 0;
	high_pos = math_decrement(collection_size);
	size_norm = high_pos;
	result_index = number_NULL();
	Mientras low_pos <= high_pos Hacer 
		half_pos = native_math_truncate(math_sum(low_pos, high_pos) / 2);
		start_sub = half_pos * data_length;
		end_sub = math_sum(start_sub, data_length);
		key_sub = string_substring(container_str, start_sub, end_sub);
		Si key_sub == key_string Entonces
			result_index = collectionUniform_binaySearch_normalizeIndex(half_pos, size_norm, isRight);
			low_pos = math_sum(high_pos, 1);
		SiNo
			advance = collectionUniform_binarySearch_advance(key_string, key_sub, isRight);
			Si advance Entonces
				low_pos = math_sum(half_pos, 1);
			SiNo
				high_pos = math_minus(half_pos, 1);
			FinSi
		FinSi
	FinMientras
FinFuncion

Funcion result_index <- collectionUniform_binarySearchSlot_toDirection(container_str, key_string, data_length, collection_size, isRight)
	Definir result_index Como Entero;
	Definir isEmpty, isInRange, isNegative, isSafeContinue Como Logico;
	isEmpty   = string_isEmpty(container_str);
	isInRange = false();
	isEmpty   = false();
	Si isEmpty Entonces 
		log_error_function("collectionUniform_binarySearchSlot_toDirection()", "Error: The container_str cannot be empty.");
	SiNo
		isNegative = collection_size < 0;
		Si isNegative Entonces
			log_error_function("collectionUniform_binarySearchSlot_toDirection()", "Error: The crop length cannot be negative.");
		SiNo
			isInRange = (data_length * collection_size) <= string_length(container_str);
			Si !isInRange Entonces
				log_error_function("collectionUniform_binarySearchSlot_toDirection()", "Error: Invalid indices or out of range in the container.");
			FinSi			
		FinSi
	FinSi
	isSafeContinue = !isEmpty & isInRange & !isNegative;
	Si isSafeContinue Entonces
		result_index = collectionUniform_binarySearchSlot_toDirection_force(container_str, key_string, data_length, collection_size, isRight);
	SiNo
		result_index = number_NULL();
	FinSi
FinFuncion

Funcion result_index <- collectionUniform_binarySearchSlot_toDirection_force(container_str, key_string, data_length, collection_size, isRight)
	Definir result_index, start_sub, end_sub, half_pos, low_pos, high_pos, size_norm Como Entero;
	Definir key_sub Como Texto;
	Definir advance, isAvailableSlot Como Logico;
	low_pos         = 0;
	high_pos        = math_decrement(collection_size);
	size_norm       = high_pos;
	result_index    = number_NULL();
	isAvailableSlot = true();
	Mientras low_pos <= high_pos & isAvailableSlot Hacer 
		half_pos  = native_math_truncate(math_sum(low_pos, high_pos) / 2);
		start_sub = half_pos * data_length;
		end_sub   = math_sum(start_sub, data_length);
		key_sub   = string_substring(container_str, start_sub, end_sub);
		Si key_sub == key_string Entonces
			result_index = number_NULL();
			isAvailableSlot = false();
		SiNo
			advance = collectionUniform_binarySearch_advance(key_string, key_sub, isRight);
			Si advance Entonces
				low_pos = math_sum(half_pos, 1);
			SiNo
				high_pos = math_minus(half_pos, 1);
			FinSi
		FinSi
	FinMientras
	Si isAvailableSlot Entonces
		Si isRight Entonces
			Si low_pos > size_norm Entonces
				result_index = 0;
			SiNo
				Si low_pos == 0 Entonces
					result_index = collection_size;
				SiNo
					result_index = math_minus(size_norm, math_decrement(low_pos));
				FinSi
			FinSi
		SiNo
			result_index = low_pos;
		FinSi
	FinSi
FinFuncion
//-----[ ENSURE_CAPACITY......... ]--------------------------------------[#]
Funcion result_collection <- collectionUniform_ensureCapacity(collectionUniform, element_string, isRight)
	Definir result_collection Como Texto;
	result_collection <- collectionUniform_ensureCapacity_withConfig(collectionUniform, element_string, collectionUniform_symbolNull(), isRight, false());
FinFuncion

Funcion result_collection <- collectionUniform_ensureCapacity_withConfig(collectionUniform, element_string, symbol_padding, isRight, isSuffix)
	Definir result_collection Como Texto;
	Definir element_length, collection_size, index_flagData, key_length, uniform_length Como Entero;
	uniform_length = collectionUniform_getUniformLength(collectionUniform);
	element_length = string_length(element_string);
	Si element_length > uniform_length Entonces
		collection_size   = collection_getSize(collectionUniform);
		index_flagData    = collectionUniform_getIndex_flagData_toDirection(collectionUniform, isRight);
		result_collection = collectionUniform_ensureCapacity_force(collectionUniform, element_length, uniform_length, collection_size, index_flagData, symbol_padding, isRight, isSuffix);
		result_collection = collectionUniform_setUniformLength(result_collection, element_length);
	SiNo
		result_collection = collectionUniform;
	FinSi
FinFuncion

Funcion result_collection <- collectionUniform_ensureCapacity_force(collectionUniform, length_added, uniform_length, collection_size, index_flagData, symbol_padding, isRight, isSuffix)
	Definir result_collection, symbol_norm, result_container Como Texto;
	Definir index_endData, start_resize, end_resize Como Entero;
	Definir dif_indexFlag, start_indexFlag Como Entero;
	start_indexFlag = index_flagData;
	index_endData   = collectionUniform_getIndexData_toDirection(collection_size, uniform_length, index_flagData, isRight);
	Si isRight Entonces
		start_indexFlag = math_sum(dif_indexFlag, start_indexFlag);
		start_resize    = index_endData;
		end_resize      = index_flagData;
	SiNo
		start_resize    = index_flagData;
		end_resize      = index_endData;
	FinSi
	symbol_norm      = string_repeatText(symbol_padding, math_minus(length_added, uniform_length));
	result_collection = collectionUniform_applyPadding(collectionUniform, start_resize, end_resize, uniform_length, symbol_norm, isSuffix);
FinFuncion
//-----[ SWAP.................... ]--------------------------------------[#]
Funcion result_collection <- collectionUniform_swap_ToLeft(collectionUniform, logical_index, logical_indexSwap)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_swap(collectionUniform, logical_index, logical_indexSwap, false());
FinFuncion

Funcion result_collection <- collectionUniform_swap_toRight(collectionUniform, logical_index, logical_indexSwap)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_swap(collectionUniform, logical_index, logical_indexSwap, true());
FinFuncion

Funcion result_collection <- collectionUniform_swap(collectionUniform, logical_index, logical_indexSwap, isRight)
	Definir result_collection, result_modified, value_swap, target_value Como Texto;
	Definir uniform_length, collection_size, index_startData, index_startSwap, start_index Como Entero;
	Definir index_isValid, indexSwap_isValid Como Logico;
	collection_size   = collection_getSize(collectionUniform);
	index_isValid     = collection_logicalIndex_isValid(collection_size, logical_index);
	indexSwap_isValid = collection_logicalIndex_isValid(collection_size, logical_indexSwap);
	Si index_isValid & indexSwap_isValid Entonces
		uniform_length    = collectionUniform_getUniformLength(collectionUniform);
		start_index       = collectionUniform_getIndex_flagData_toDirection(collectionUniform, isRight);
		si isRight Entonces 
			start_index = math_minus(start_index, uniform_length);
		FinSi
		index_startData   = collectionUniform_getIndexData_toDirection(logical_index, uniform_length, start_index, isRight);
		index_startSwap   = collectionUniform_getIndexData_toDirection(logical_indexSwap, uniform_length, start_index, isRight);
		target_value      = collectionUniform_action_get(collectionUniform, index_startData, uniform_length);
		value_swap        = collectionUniform_action_get(collectionUniform, index_startSwap, uniform_length);
		result_modified   = collectionUniform_action_set(collectionUniform, index_startData, uniform_length, value_swap);
		result_collection = collectionUniform_action_set(result_modified, index_startSwap, uniform_length, target_value);
	SiNo
		log_error_function("collectionUniform_swap()", "error index no valid");
		result_collection = string_NULL();
	FinSi
FinFuncion
//-----[ RESIZE.................. ]---------------------------------------[#]
Funcion result_collection <- collectionUniform_setSize_ToLeft(collectionUniform, new_uniform_length)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_setSize_toDirection(collectionUniform, new_uniform_length, false());
FinFuncion

Funcion result_collection <- collectionUniform_setSize_toRigth(collectionUniform, new_uniform_length)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_setSize_toDirection(collectionUniform, new_uniform_length, true());
FinFuncion

Funcion result_collection <- collectionUniform_setSize_toDirection(collectionUniform, new_uniform_length, isRight)
	Definir result_collection, resize_collection, symbol_padding Como Texto;
	Definir collection_size, uniform_length, index_flagData, index_endData, start_resize, end_resize Como Entero;
	Si new_uniform_length > 0 Entonces
		collection_size   = collection_getSize(collectionUniform);
		uniform_length    = collectionUniform_getUniformLength(collectionUniform);
		index_flagData    = collectionUniform_getIndex_flagData_toDirection(collectionUniform, isRight);
		index_endData     = collectionUniform_getIndexData_toDirection(collection_size, uniform_length, index_flagData, isRight);
		symbol_padding    = collectionUniform_symbolNull();
		Si isRight Entonces
			start_resize  = index_endData;
			end_resize    = index_flagData;
		SiNo
			start_resize  = index_flagData;
			end_resize    = index_endData;
		FinSi
		resize_collection = collectionUniform_resize_force(collectionUniform, start_resize, end_resize, uniform_length, new_uniform_length, symbol_padding, false());
		result_collection = collectionUniform_setUniformLength(resize_collection, new_uniform_length);
	SiNo
		log_error_function("collectionUniform_setSize_toDirection()", string_append("size no valid: ", integer_toString(new_uniform_length)));
		result_collection = collectionUniform;
	FinSi
FinFuncion

Funcion result_container <- collectionUniform_resize_force(container_str, start, end, data_length, newData_length, symbol_padding, isRight)
	Definir result_container, symbol_norm Como Texto;
	Definir adjustment_amount Como Entero;
	adjustment_amount = math_minus(newData_length, data_length);
	si adjustment_amount > 0 Entonces 
		symbol_norm      = string_repeatText(symbol_padding, adjustment_amount);
		result_container = collectionUniform_applyPadding(container_str, start, end, data_length, symbol_norm, isRight);
	SiNo
		adjustment_amount = math_abs(adjustment_amount);
		result_container  = collectionUniform_applyCropping(container_str, start, end, data_length, adjustment_amount, isRight);
	FinSi
FinFuncion

Funcion result_container <- collectionUniform_applyPadding(container_str, start, end, data_length, symbol_padding, isRight)
	Definir result_container, data_sub, data_pad Como Texto;
	Definir start_sub, end_sub Como Entero;
	Definir isEmpty, isInRange, isDataLengthValid, isSafeContinue Como Logico;
	
	isEmpty           = string_isEmpty(symbol_padding);
	isInRange         = false();
	isDataLengthValid = false();
	
	Si isEmpty Entonces 
		log_error_function("collectionUniform_applyPadding()", "Error: The padding symbol cannot be empty.");
	SiNo
		isInRange = string_index_isInRange(container_str, start, end);
		Si !isInRange Entonces
			log_error_function("collectionUniform_applyPadding()", "Error: Invalid indices or out of range in the container.");
		SiNo
			isDataLengthValid = data_length > 0;
			Si !isDataLengthValid Entonces
				log_error_function("collectionUniform_applyPadding()", "Error: Data length must be greater than zero to advance.");
			FinSi
		FinSi
	FinSi
	isSafeContinue = !isEmpty & isInRange & isDataLengthValid;
	Si isSafeContinue Entonces
		start_sub = start;
		end_sub = math_sum(start_sub, data_length);
		result_container = string_substring(container_str, 0, start_sub);
		Mientras end_sub <= end Hacer 
			data_sub = string_substring(container_str, start_sub, end_sub);
			Si isRight Entonces
				data_pad = string_append(data_sub, symbol_padding);
			SiNo
				data_pad = string_append(symbol_padding, data_sub);
			FinSi
			result_container = string_append(result_container, data_pad);
			start_sub = end_sub;
			end_sub = math_sum(start_sub, data_length);
		FinMientras
		result_container = string_append(result_container, string_substring_from(container_str, start_sub));
	SiNo
		result_container = container_str;
	FinSi
FinFuncion

Funcion result_container <- collectionUniform_applyCropping(container_str, start, end, data_length, crop_length, isRight)
	Definir result_container, data_sub, data_cropped Como Texto;
	Definir current_start, current_end, total_range, num_blocks, new_length Como Entero;
	Definir isNegative, isInRange, isSafeContinue Como Logico;
	isNegative = (crop_length < 0);
	isInRange = false();
	Si isNegative Entonces 
		log_error_function("collectionUniform_applyCropping()", "Error: The crop length cannot be negative.");
	SiNo
		isInRange = string_index_isInRange(container_str, start, end);
		Si !isInRange Entonces 
			log_error_function("collectionUniform_applyCropping()", "Error: Invalid indices or out of range in the container.");
		FinSi
	FinSi
	isSafeContinue = !isNegative & isInRange;
	Si isSafeContinue Entonces
		new_length       = math_minus(data_length, crop_length);
		total_range      = math_minus(end, start);
		num_blocks       = math_div_int(total_range, data_length);
		current_end      = math_sum(start, num_blocks * data_length);
		result_container = string_substring_from(container_str, current_end);
		Mientras current_end > start Hacer
			current_start = math_minus(current_end, data_length);
			data_sub = string_substring(container_str, current_start, current_end);
			Si isRight Entonces
				data_cropped = string_substring(data_sub, 0, new_length);
			SiNo
				data_cropped = string_substring(data_sub, crop_length, data_length);
			FinSi
			result_container = string_append(data_cropped, result_container);
			current_end = current_start;
		FinMientras
		result_container = string_append(string_substring(container_str, 0, start), result_container);
	SiNo
		result_container = container_str;
	FinSi
FinFuncion
//-----[ PRINT................... ]--------------------------------------[#]
Funcion collectionUniform_println_toLeft(collectionUniform)
	collectionUniform_printer_withDecorator_toDirection(collectionUniform, "", false());
FinFuncion

Funcion collectionUniform_println_toRight(collectionUniform)
	collectionUniform_printer_withDecorator_toDirection(collectionUniform, "", true());
FinFuncion

Funcion collectionUniform_printer_withDecorator_toDirection(collectionUniform, decorator_string, isRight)
	Definir collection_size, uniform_length, start_index Como Entero;
	Definir i, index_startData Como Entero;
	collection_size   = collection_getSize(collectionUniform);
	Si collection_size > 0 Entonces
		Definir Item_array, item_decorator Como Texto;
		Dimension item_array[collection_size];
		start_index     = collectionUniform_getIndex_flagData_toDirection(collectionUniform, isRight);
		uniform_length  = collectionUniform_getUniformLength(collectionUniform);
		i = 0;
		Si isRight Entonces
			start_index = math_minus(start_index, uniform_length);
		FinSi
		Mientras i < collection_size Hacer 
			index_startData = collectionUniform_getIndexData_toDirection(i, uniform_length, start_index, isRight);
			item_decorator  = collectionUniform_action_get(collectionUniform, index_startData, uniform_length);
			item_array[i]   = string_append(decorator_string, item_decorator);
			i               = math_increment(i);
		FinMientras
		println_array(item_array, collection_size);
	FinSi
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]============================
Funcion result_symbol <- id_collectionUniform
	Definir result_symbol Como Texto;
	result_symbol = "$";
FinFuncion

Funcion tag_symbol <- tag_collectionUniform
	Definir tag_symbol Como Texto;
	tag_symbol = tag_new(id_collectionUniform(), tag_CATEGORY_INSTRUCTION());
FinFuncion

Funcion symbol <- collectionUniform_symbolNull
	Definir symbol Como Texto;
	symbol = "";
FinFuncion

Funcion action_name <- UNIFORM_UNIQUE
	Definir action_name Como Texto;
	action_name = "UNIFORM_ACTION_SETTER";
FinFuncion

Funcion action_name <- UNIFORM_REMOVE
	Definir action_name Como Texto;
	action_name = "UNIFORM_REMOVE";
FinFuncion
///%%%%%[ COLLECTION_ROUTED....... ]%%%%%%%[   #CRO    ]%%%%%%%%%%%%%%%%%%%%
Funcion result_collection <- collectionRouted_new(STRUCT_TYPE, TYPE)
    Definir result_collection, base_collection Como Texto;
	Definir initLength_collection Como Texto;
	base_collection       = collection_new(STRUCT_TYPE, TYPE, id_collectionRouted());
	initLength_collection = string_append(separator_collectionRouted(), integer_toString(collection_getMinDataLength()));
	result_collection     = tag_append_toRight(base_collection, tag_collectionRouted(), initLength_collection);
FinFuncion

Funcion result_collection <- collectionRouted_init_metaDataLength(STRUCT_TYPE, TYPE, metadata_length)
	Definir result_collection, base_collection Como Texto;
	base_collection   = collectionRouted_new(STRUCT_TYPE, TYPE);
	result_collection = collectionRouted_setMetaDataLength(base_collection, metadata_length);
FinFuncion

Funcion result_collection <- collectionRouted_init(STRUCT_TYPE, TYPE, element)
	Definir result_collection, element_string, base_collection Como Texto;
	Definir auto_length Como Entero;
	element_string     = value_TypeToString(element, TYPE);
    auto_length        = string_length(integer_toString(string_length(element_string)));
	base_collection    = collectionRouted_init_metaDataLength(STRUCT_TYPE, TYPE, auto_length);
	result_collection  = collectionRouted_addFirst_byString(base_collection, element_string);
FinFuncion
//-----[ UTILITIES............... ]--------------------------------------[#]
Funcion fit_metaData <- collectionRouted_fitMetaData(metaData_string, length_fit)
	Definir fit_metaData Como Texto;
	fit_metaData = collection_fitData_withSymbol(metaData_string, length_fit, "0");
FinFuncion

Funcion result_container <- collectionRouted_build_MetadataLength(container_metaString, element_string, length_metaData, logical_indexInsert)
	Definir result_container Como Texto;
	Definir length_element, length_elementMeta, newLength_metaData, index_insert Como Entero;
	Definir length_elementStr, header_lengthMeta Como Texto;
	newLength_metaData = length_metaData;
	Si element_string <> string_NULL() Entonces 
		length_element       = string_length(element_string);
		length_elementStr    = integer_toString(length_element);
		length_elementMeta   = string_length(length_elementStr);
		Si length_elementMeta > length_metaData Entonces
			container_metaString = collectionUniform_applyPadding(container_metaString, 0, string_length(container_metaString), length_metaData, "0", false());
			newLength_metaData   = length_elementMeta;
		SiNo
			length_elementStr    = collection_fitData_withSymbol(length_elementStr, length_metaData, "0");
		FinSi
		index_insert     = collection_getIndex_byLength(logical_indexInsert, newLength_metaData, 0);
		result_container = string_insert(container_metaString, length_elementStr, index_insert);
	SiNo
		result_container = container_metaString;
	FinSi
	header_lengthMeta  = string_append(separator_collectionRouted(), integer_toString(newLength_metaData));
	result_container   = string_append(result_container, header_lengthMeta);
FinFuncion

Funcion num_range <- collectionRouted_summationLength_StringUniform(stringUniform, step_length)
	Definir num_range, i, i_next, length_listStr, num_value Como Entero;
	Definir chunk_str Como Texto;
	length_listStr = string_Length(stringUniform);
	i = 0;
	i_next = math_sum(i, step_length);
	Mientras i_next <= length_listStr Hacer
		chunk_str = string_substring(stringUniform, i, i_next);
		num_value = integer_parseInt(chunk_str);
		num_range = math_sum(num_range, num_value);
		i = i_next;
		i_next = math_sum(i, step_length);
	FinMientras
FinFuncion
//-----[ GETTERS................. ]--------------------------------------[#]
Funcion result_type <- collectionRouted_getType(collectionUniform)
	Definir result_type Como Texto;
	result_type = collection_getType_byID(collectionUniform, id_collectionRouted());
FinFuncion

Funcion result_collection <- collectionRouted_get_byString(collectionRouted, logical_index)
	Definir result_collection Como Texto;
	result_collection = collectionRouted_middleware(collectionRouted, logical_index, string_NULL(), ACTION_GET());
FinFuncion

Funcion result_data <- collectionRouted_get_byType(collectionRouted, logical_index, TYPE)
	Definir data_raw, data_catch Como Texto;
	Segun TYPE Hacer
		caso TYPE_INT():     Definir result_data Como Entero;
		caso TYPE_FLOAT():   Definir result_data Como Real;
		caso TYPE_BOOLEAN(): Definir result_data Como Logico;
		De Otro Modo:        Definir result_data Como Texto;
	FinSegun
	data_raw    = collectionRouted_get_byString(collectionRouted, logical_index);
	data_catch  = value_StringCatch_ofType(data_raw, TYPE, "collectionRouted_get()", "data no is valid");
	result_data = value_stringToType(data_catch, TYPE);
FinFuncion

Funcion result_data <- collectionRouted_getFirst_byType(collectionRouted, TYPE)
	Segun TYPE Hacer
		caso TYPE_INT():     Definir result_data Como Entero;
		caso TYPE_FLOAT():   Definir result_data Como Real;
		caso TYPE_BOOLEAN(): Definir result_data Como Logico;
		De Otro Modo:        Definir result_data Como Texto;
	FinSegun
	result_data = collectionRouted_get_byType(collectionRouted, 0, TYPE);
FinFuncion

Funcion result_data <- collectionRouted_getLast_byType(collectionRouted, TYPE)
	Definir collection_size Como Entero;
	Segun TYPE Hacer
		caso TYPE_INT():     Definir result_data Como Entero;
		caso TYPE_FLOAT():   Definir result_data Como Real;
		caso TYPE_BOOLEAN(): Definir result_data Como Logico;
		De Otro Modo:        Definir result_data Como Texto;
	FinSegun
	collection_size = math_decrement(collection_getSize(collectionRouted));
	result_data     = collectionRouted_get_byType(collectionRouted, collection_size, TYPE);
FinFuncion
//....
Funcion index_result <- collectionRouted_getElementIndex(container_metaString, logical_index, uniform_length, isGreaterHalf)
	Definir index_result, index_substring, length_cont Como Entero;
	Definir stringUniform Como Texto;
	Si (logical_index == 0) Entonces
		index_result = 0;
	SiNo
		index_substring = collection_getIndex_byLength(logical_index, uniform_length, 0);
		Si isGreaterHalf Entonces
			length_cont   = native_string_length(container_metaString);
			stringUniform = string_substring(container_metaString, index_substring, length_cont);
		SiNo
			stringUniform  = string_substring(container_metaString, 0, index_substring);
		FinSi
		index_result = collectionRouted_summationLength_StringUniform(stringUniform, uniform_length);
	FinSi
FinFuncion

Funcion index_result <- collectionRouted_getElementLength(container_metaString, logical_index, uniform_length, start_elementIndex)
    Definir index_result, index_nextMetaData, index_nextEndMetaData, length_nextElement Como Entero;
    Definir length_nextElement_str Como Texto;
    index_nextMetaData     = collection_getIndex_byLength(logical_index, uniform_length, 0);
    index_nextEndMetaData  = math_sum(index_nextMetaData, uniform_length);
    length_nextElement_str = string_substring(container_metaString, index_nextMetaData, index_nextEndMetaData);
    length_nextElement     = integer_parseInt(length_nextElement_str);
    index_result           = math_sum(start_elementIndex, length_nextElement);
FinFuncion
//-----[ SETTERS................. ]--------------------------------------[#]
Funcion result_collection <- collectionRouted_set_byString(collectionRouted, logical_index, element_string)
	Definir result_collection Como Texto;
	result_collection = collectionRouted_middleware(collectionRouted, logical_index, element_string, ACTION_SET());
FinFuncion

Funcion result_collection <- collectionRouted_set_byType(collectionRouted, logical_index, element_type, TYPE)
	Definir result_collection, element_string  Como Texto;
	element_string     = value_TypeToString(element_type, TYPE);
	result_collection  = collectionRouted_set_byString(collectionRouted, logical_index, element_string);
FinFuncion

Funcion result_collection <- collectionRouted_set(collectionRouted, logical_index, element)
	Definir result_collection, TYPE Como Texto;
	TYPE               = collectionRouted_getType(collectionRouted);
	result_collection  = collectionRouted_set_byType(collectionRouted, logical_index, element, TYPE);
FinFuncion

Funcion result_collection <- collectionRouted_setMetaDataLength(collectionRouted, metadata_length)
	Definir result_collection, metaLength_string Como Texto;
	Definir function_name, start_collection, end_collection Como Texto;
	Definir index_tag, index_separator Como Entero;
	function_name     = "collectionRouted_setMetaDataLength(collectionRouted, metadata_length)";
	metadata_length   = collection_ensure_minLength(metadata_length, function_name, "metadata_length < ");
	metaLength_string = integer_toString(metadata_length);
	index_tag         = tag_getDataStartIndex_toRight(collectionRouted, tag_collectionRouted());
	index_separator   = string_LastIndexOf_fromIndex(collectionRouted, separator_collectionRouted(), index_tag);
	start_collection  = string_substring(collectionRouted, 0, math_increment(index_separator));
	end_collection    = string_substring_from(collectionRouted, index_tag);
	result_collection = string_append_withSeparator(start_collection, end_collection, metaLength_string);
FinFuncion
//-----[ ADD: fromIndex..................... ]---------------------------[#]
Funcion result_collection <- collectionRouted_add_string_fromIndex(collectionRouted, logical_index, element_string)
	Definir result_collection Como Texto;
	result_collection = collectionRouted_middleware(collectionRouted, logical_index, element_string, ACTION_ADD());
	result_collection = collection_incrementSize(result_collection);
FinFuncion
//-----[ ADD: First......................... ]---------------------------[#]
Funcion result_collection <- collectionRouted_addFirst_byString(collectionRouted, element_string)
	Definir result_collection Como Texto;
	result_collection = collectionRouted_add_string_fromIndex(collectionRouted, 0, element_string);
FinFuncion

Funcion result_collection <- collectionRouted_addFirst_byType(collectionUniform, element_type, TYPE)
	Definir result_collection, element_string  Como Texto;
	element_string     = value_TypeToString(element_type, TYPE);
	result_collection  = collectionRouted_addFirst_byString(collectionUniform, element_string);
FinFuncion

Funcion result_collection <- collectionRouted_addFirst(collectionUniform, element)
	Definir result_collection, TYPE Como Texto;
	TYPE               = collectionRouted_getType(collectionUniform);
	result_collection  = collectionRouted_addFirst_byType(collectionUniform, element, TYPE);
FinFuncion
//-----[ ADD: last.......................... ]---------------------------[#]
Funcion result_collection <- collectionRouted_addLast_byString(collectionRouted, element_string)
	Definir result_collection Como Texto;
	result_collection = collectionRouted_add_string_fromIndex(collectionRouted, collection_getSize(collectionRouted), element_string);
FinFuncion

Funcion result_collection <- collectionRouted_addLast_byType(collectionUniform, element_type, TYPE)
	Definir result_collection, element_string  Como Texto;
	element_string     = value_TypeToString(element_type, TYPE);
	result_collection  = collectionRouted_addLast_byString(collectionUniform, element_string);
FinFuncion

Funcion result_collection <- collectionRouted_addLast(collectionUniform, element)
	Definir result_collection, TYPE Como Texto;
	TYPE               = collectionRouted_getType(collectionUniform);
	result_collection  = collectionRouted_addLast_byType(collectionUniform, element, TYPE);
FinFuncion
//-----[ REMOVE: ........................... ]---------------------------[#]
Funcion result_collection <- collectionRouted_remove(collectionRouted, logical_index)
	Definir result_collection Como Texto;
	result_collection = collectionRouted_middleware(collectionRouted, logical_index, string_NULL(), ACTION_REMOVE());
	result_collection = collection_decrementSize(result_collection);
FinFuncion
//-----[ REMOVE: First...................... ]---------------------------[#]
Funcion result_collection <- collectionRouted_removeFirst(collectionRouted)
	Definir result_collection Como Texto;
	result_collection = collectionRouted_remove(collectionRouted, 0);
FinFuncion
//-----[ REMOVE: last....................... ]---------------------------[#]
Funcion result_collection <- collectionRouted_removeLast(collectionRouted)
	Definir result_collection Como Texto;
	Definir collection_size Como Entero;
	collection_size = math_decrement(collection_getSize(collectionRouted));
	result_collection = collectionRouted_remove(collectionRouted, collection_size);
FinFuncion
//-----[ DISPATCHER.............. ]--------------------------------------[#]
Funcion result_collection <- collectionRouted_middleware(collectionRouted, logical_index, optional_string, CONST_ACTION)
	Definir result_collection Como Texto;
	result_collection = collectionRouted_middleware_force(collectionRouted, logical_index, optional_string, CONST_ACTION, 0, 0);
FinFuncion

Funcion result_collection <- collectionRouted_middleware_force(collectionRouted, logical_index, optional_string, CONST_ACTION, adjust_flagLeft, adjust_flagRight)
    Definir result_collection, info_uniformLength, container_metaString, name_function Como Texto;
    Definir collection_size, uniformLength_Metadata Como Entero;
    Definir index_tagMetaData_end, index_tagSeparator, index_tagMetadata_start Como Entero;
    Definir index_startLogical, index_startElement, adjust_flag Como Entero;
    Definir isGreaterHalf, isOutRange, isTagNotFound, isValid Como Logico;
	result_collection     = collection_return_byAction(collectionRouted, CONST_ACTION);
    index_tagMetaData_end = tag_getDataStartIndex_toRight(collectionRouted, tag_collectionRouted());
    collection_size       = collection_getSize(collectionRouted);
	name_function         = "collectionRouted_middleware_force()";
    isOutRange            = collection_validator_isOutOfRangeByAction(name_function, collection_size, logical_index, CONST_ACTION);
    isTagNotFound         = collection_validator_isTagNotFound(name_function, index_tagMetaData_end);
    isValid               = !(isOutRange | isTagNotFound);
    Si isValid Entonces
        index_tagSeparator      = string_LastIndexOf_fromIndex(collectionRouted, separator_collectionRouted(), index_tagMetaData_end);
        info_uniformLength      = string_substring(collectionRouted, math_increment(index_tagSeparator), index_tagMetaData_end);
        uniformLength_Metadata  = integer_parseInt(info_uniformLength);
        index_tagMetadata_start = collection_getIndex_byLength(collection_size, math_negated(uniformLength_Metadata), index_tagSeparator);
        container_metaString    = string_substring(collectionRouted, index_tagMetadata_start, index_tagSeparator);
        isGreaterHalf           = logical_index > math_div_int(collection_size, 2);
        index_startElement      = collectionRouted_getElementIndex(container_metaString, logical_index, uniformLength_Metadata, isGreaterHalf);
        Si isGreaterHalf Entonces
            adjust_flag = adjust_flagRight;
        SiNo
            adjust_flag = adjust_flagLeft;
        FinSi
        index_startLogical = collectionRouted_resolve_logicalIndex(collectionRouted, index_tagMetadata_start, index_startElement, isGreaterHalf, adjust_flag);
        result_collection  = collectionRouted_dispatcher(collectionRouted, container_metaString, logical_index, uniformLength_Metadata, index_startLogical, index_tagMetadata_start, index_tagMetaData_end, optional_string, CONST_ACTION);
    FinSi
FinFuncion

Funcion index_startLogical <- collectionRouted_resolve_logicalIndex(collectionRouted, index_tagMetadata_start, index_startElement, isGreaterHalf, adjust_flag)
    Definir index_base, index_startLogical Como Entero;
    Si isGreaterHalf Entonces
        index_base         = collection_getIndex_EndData_fromIndex(collectionRouted, index_tagMetadata_start);
        index_base         = math_sum(index_base, adjust_flag);
        index_startLogical = math_minus(index_base, index_startElement);
    SiNo
        index_base         = collection_getIndex_StartData(collectionRouted);
        index_base         = math_sum(index_base, adjust_flag);
        index_startLogical = math_sum(index_base, index_startElement);
    FinSi
FinFuncion

Funcion result_operation <- collectionRouted_dispatcher(collectionRouted, container_metaString, logical_index, length_metaData, index_startLogical, index_startData, index_endData, optional_string, CONST_ACTION)
    Definir result_operation Como Texto;
    Segun CONST_ACTION Hacer
        Caso ACTION_GET():
            result_operation = collectionRouted_action_get(collectionRouted, container_metaString, logical_index, length_metaData, index_startLogical);
        Caso ACTION_REMOVE():
            result_operation = collectionRouted_action_remove(collectionRouted, container_metaString, logical_index, length_metaData, index_startLogical, index_startData);
        Caso ACTION_SET():
            result_operation = collectionRouted_action_set(collectionRouted, container_metaString, logical_index, length_metaData, index_startLogical, index_startData, index_endData, optional_string);
		Caso ACTION_ADD():
            result_operation = collectionRouted_action_add(collectionRouted, container_metaString, logical_index, length_metaData, index_startLogical, index_startData, index_endData, optional_string);
        De Otro Modo:
            log_error_function("collectionRouted_dispatcher()", "CONST_ACTION not valid");
            result_operation = collectionRouted;
    FinSegun
FinFuncion

Funcion result_collection <- collectionRouted_action_remove(collectionRouted, container_metaString, logical_index, length_metaData, index_startLogical, index_startData)
    Definir result_collection, collection_metaRev Como Texto;
    Definir index_endLogical, index_rmv, index_endRmv Como Entero;
    index_endLogical   = collectionRouted_getElementLength(container_metaString, logical_index, length_metaData, index_startLogical);
    index_rmv          = math_sum(collection_getIndex_byLength(logical_index, length_metaData, 0), index_startData);
    index_endRmv       = math_sum(index_rmv, length_metaData);
    collection_metaRev = string_remove(collectionRouted, index_rmv, index_endRmv);
    result_collection  = string_remove(collection_metaRev, index_startLogical, index_endLogical);
FinFuncion

Funcion result_collection <- collectionRouted_action_add(collectionRouted, container_metaString, logical_index, length_metaData, index_startLogical, index_startData, index_endData, optional_string)
    Definir result_collection, container_metaResult, collection_metaClear, collection_update Como Texto;
    container_metaResult = collectionRouted_build_MetadataLength(container_metaString, optional_string, length_metaData, logical_index);
    collection_metaClear = string_remove(collectionRouted, index_startData, index_endData);
    collection_update    = string_insert(collection_metaClear, container_metaResult, index_startData);
    result_collection    = string_insert(collection_update, optional_string, index_startLogical);
FinFuncion

Funcion result_collection <- collectionRouted_action_set(collectionRouted, container_metaString, logical_index, length_metaData, index_startLogical, index_startData, index_endData, optional_string)
    Definir result_collection, collection_metaRev, container_metaResult, collection_metaClear, collection_update Como Texto;
    Definir index_endLogical, index_rmv, index_endRmv Como Entero;
    index_endLogical     = collectionRouted_getElementLength(container_metaString, logical_index, length_metaData, index_startLogical);
    index_rmv            = collection_getIndex_byLength(logical_index, length_metaData, 0);
    index_endRmv         = math_sum(index_rmv, length_metaData);
    container_metaString = string_remove(container_metaString, index_rmv, index_endRmv);
    container_metaResult = collectionRouted_build_MetadataLength(container_metaString, optional_string, length_metaData, logical_index);
    collection_metaClear = string_remove(collectionRouted, index_startData, index_endData);
    collection_update    = string_insert(collection_metaClear, container_metaResult, index_startData);
    result_collection    = string_remove(collection_update, index_startLogical, index_endLogical);
    result_collection    = string_insert(result_collection, optional_string, index_startLogical);
FinFuncion

Funcion result_element <- collectionRouted_action_get(collectionRouted, container_metaString, logical_index, length_metaData, index_startLogical)
    Definir result_element Como Texto;
    Definir index_endLogical Como Entero;
    index_endLogical = collectionRouted_getElementLength(container_metaString, logical_index, length_metaData, index_startLogical);
    result_element   = string_substring(collectionRouted, index_startLogical, index_endLogical);
FinFuncion

Funcion collectionRouted_println(collectionRouted)
	collectionRouted_println_middleware(collectionRouted, true());
FinFuncion

Funcion collectionRouted_print(collectionRouted)
	collectionRouted_println_middleware(collectionRouted, false());
FinFuncion

Funcion collectionRouted_println_middleware(collectionRouted, isBreakLine)
    Definir container_metaString, container_dataString, length_metaData_str, sub_item, array_printer Como Texto;
    Definir collection_size, length_metaData, i, start_sub, end_sub, item_length, collection_sizeNorm Como Entero;
    Definir index_endData, index_separator, index_startData, index_endFlat, index_startFlat Como Entero;
    collection_size = collection_getSize(collectionRouted);
    Si collection_size > 0 Entonces
        index_endData        = tag_getDataStartIndex_toRight(collectionRouted, tag_collectionRouted());
        index_separator      = string_LastIndexOf_fromIndex(collectionRouted, separator_collectionRouted(), index_endData);
        length_metaData_str  = string_substring(collectionRouted, math_increment(index_separator), index_endData);
        length_metaData      = integer_parseInt(length_metaData_str);
        index_startData      = collectionUniform_getIndexData_toDirection(collection_size, length_metaData, index_separator, true());
        index_endFlat        = collection_getIndex_EndData_fromIndex(collectionRouted, index_startData);
        index_startFlat      = collection_getIndex_StartData(collectionRouted);
        container_metaString = string_substring(collectionRouted, index_startData, index_separator);
        container_dataString = string_substring(collectionRouted, index_startFlat, index_endFlat);
        Dimension array_printer[collection_size];
        start_sub = 0;
		collection_sizeNorm = math_decrement(collection_size);
        Para i = 0 Hasta collection_sizeNorm Hacer
            item_length = integer_parseInt(string_substring(container_metaString, i, math_increment(i)));
            end_sub     = math_sum(start_sub, item_length);
            sub_item    = string_substring(container_dataString, start_sub, end_sub);
            array_printer[i] = sub_item;
            start_sub = end_sub;
        FinPara
		Si isBreakLine Entonces
			println_array(array_printer, collection_size);
		SiNo
			print_array(array_printer, collection_size);
		FinSi
    FinSi
FinFuncion
//-----[ SEARCH: ........................... ]---------------------------[#]
Funcion is_contained <- collectionRouted_contains(collectionRouted, element)
    Definir is_contained Como Logico;
    Definir TYPE Como Texto;
    TYPE         = collectionRouted_getType(collectionRouted);
    is_contained = collectionRouted_contains_byType(collectionRouted, element, TYPE);
FinFuncion

Funcion is_contained <- collectionRouted_contains_byType(collectionRouted, element_type, TYPE)
    Definir is_contained Como Logico;
    Definir element_string Como Texto;
    element_string = value_TypeToString(element_type, TYPE);
    is_contained   = collectionRouted_contains_byString(collectionRouted, element_string);
FinFuncion

Funcion is_contained <- collectionRouted_contains_byString(collectionRouted, element_string)
    Definir is_contained Como Logico;
    is_contained = collectionRouted_searchIndex_byString(collectionRouted, element_string) <> number_NULL();
FinFuncion
//-----[ SEARCH: ........................... ]---------------------------[#]
Funcion result_index <- collectionRouted_searchIndex(collectionRouted, element)
    Definir result_index Como Entero;
    Definir TYPE Como Texto;
    TYPE         = collectionRouted_getType(collectionRouted);
    result_index = collectionRouted_searchIndex_byType(collectionRouted, element, TYPE);
FinFuncion

Funcion result_index <- collectionRouted_searchIndex_byType(collectionRouted, element_type, TYPE)
    Definir result_index Como Entero;
    Definir element_string Como Texto;
    element_string = value_TypeToString(element_type, TYPE);
    result_index   = collectionRouted_searchIndex_byString(collectionRouted, element_string);
FinFuncion

Funcion result_index <- collectionRouted_searchIndex_byString(collectionRouted, element_string)
	Definir result_index Como Entero;
	result_index = collectionRouted_searchIndex_byString_force(collectionRouted, element_string, 0);
FinFuncion

Funcion result_index <- collectionRouted_searchIndex_byString_force(collectionRouted, valueString_search, adjust_flagRight)
    Definir result_index, collection_size Como Entero;
    Definir index_tagMetaData_end, index_tagSeparator, index_tagMetadata_start Como Entero;
    Definir uniformLength_Metadata, index_startData Como Entero;
    Definir info_uniformLength, container_metaString Como Texto;
    index_tagMetaData_end = tag_getDataStartIndex_toRight(collectionRouted, tag_collectionRouted());
    collection_size       = collection_getSize(collectionRouted);
    result_index          = number_NULL();
    Si collection_size > 0 Entonces
        index_tagSeparator      = string_LastIndexOf_fromIndex(collectionRouted, separator_collectionRouted(), index_tagMetaData_end);
        info_uniformLength      = string_substring(collectionRouted, math_increment(index_tagSeparator), index_tagMetaData_end);
        uniformLength_Metadata  = integer_parseInt(info_uniformLength);
        index_tagMetadata_start = collection_getIndex_byLength(collection_size, math_negated(uniformLength_Metadata), index_tagSeparator);
        container_metaString    = string_substring(collectionRouted, index_tagMetadata_start, index_tagSeparator);
        index_startData         = math_sum(collection_getIndex_EndData_fromIndex(collectionRouted, index_tagMetadata_start), adjust_flagRight);
        result_index            = __private_collectionRouted_executeSearch_byString(collectionRouted, container_metaString, valueString_search, collection_size, uniformLength_Metadata, index_startData);
    FinSi
FinFuncion

Funcion result_index <- __private_collectionRouted_executeSearch_byString(collectionRouted, container_metaString, valueString_search, collection_size, uniformLength_Metadata, index_startData)
    Definir result_index, value_int_NULL, i, element_length, current_length Como Entero;
    Definir start_sub, end_sub, carry_summation Como Entero;
    Definir info_currentLength Como Texto;
    value_int_NULL  = number_NULL();
    result_index    = value_int_NULL;
    end_sub         = collection_size * uniformLength_Metadata;
    carry_summation = 0;
    i               = 0;
    element_length  = string_length(valueString_search);
    Mientras (i < collection_size) & (result_index == value_int_NULL) Hacer
        start_sub          = math_minus(end_sub, uniformLength_Metadata);
        info_currentLength = string_substring(container_metaString, start_sub, end_sub);
        current_length     = native_number_parseNum(info_currentLength);
        Si current_length == element_length Entonces 
            Si __private_collectionRouted_evaluateMatch(collectionRouted, valueString_search, index_startData, carry_summation, current_length) Entonces
                result_index = math_minus(math_decrement(collection_size), i);
            FinSi
        FinSi
        end_sub         = start_sub;
        carry_summation = math_sum(carry_summation, current_length);
        i               = math_increment(i);
    FinMientras
FinFuncion

Funcion isMatch <- __private_collectionRouted_evaluateMatch(collectionRouted, valueString_search, index_startData, carry_summation, current_length)
    Definir isMatch Como Logico;
    Definir start_subData, end_subData Como Entero;
    Definir current_value Como Texto;
    end_subData   = math_minus(index_startData, carry_summation);
    start_subData = math_minus(end_subData, current_length);
    current_value = string_substring(collectionRouted, start_subData, end_subData);
    isMatch       = string_isEquals(current_value, valueString_search);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]============================
Funcion result_symbol <- separator_collectionRouted
	Definir result_symbol Como Texto;
	result_symbol = ":";
FinFuncion

Funcion result_symbol <- id_collectionRouted
	Definir result_symbol Como Texto;
	result_symbol = "@";
FinFuncion

Funcion tag_symbol <- tag_collectionRouted
	Definir tag_symbol Como Texto;
	tag_symbol = tag_new(id_collectionRouted(), tag_CATEGORY_INSTRUCTION());
FinFuncion
///%%%%%[ COLLECTION_DICTIONARY... ]%%%%%%%[    #CDI    ]%%%%%%%%%%%%%%%%%%%%
//TODO: putIfAbsent(): Para insertar un valor únicamente sino existe
Funcion result_collection <- collectionDictionary_new(STRUCT_TYPE, TYPE_KEY, TYPE_VALUE)
	Definir result_collection, base_collection Como Texto;
	Definir tag_instruction, tag_type, min_string Como Texto;
	min_string        = integer_toString(collection_getMinDataLength());
	tag_instruction   = string_append(min_string, tag_new(id_collectionUniform(), tag_CATEGORY_INSTRUCTION()));
	tag_type          = string_append(tag_new(id_collectionUniform(), tag_CATEGORY_TYPE()), TYPE_KEY);
	base_collection   = collectionRouted_new(STRUCT_TYPE, TYPE_VALUE);
	base_collection   = tag_add_ToLeft(base_collection, tag_type);
	result_collection = tag_add_toRight(base_collection, tag_instruction);
FinFuncion

Funcion containsKey <- collectionDictionary_containsKey(collectionDictionary, key_match)
	Definir containsKey Como Logico;
	containsKey = collectionUniform_containsKey_toLeft(collectionDictionary, key_match);
FinFuncion

Funcion containsValue <- collectionDictionary_containsValue(collectionDictionary, value_match)
	Definir containsValue Como Logico;
	containsValue = collectionRouted_contains(collectionDictionary, value_match);
FinFuncion
//-----[ PUT INTERFACES ]------------------------------------------------[#]
Funcion result_collection <- collectionDictionary_put(collectionDictionary, key, value)
	Definir result_collection, TYPE_KEY, TYPE_VALUE Como Texto;
	TYPE_KEY          = collectionDictionary_getTypeKey(collectionDictionary);
    TYPE_VALUE        = collectionDictionary_getTypeValue(collectionDictionary);
	result_collection = collectionDictionary_put_byType(collectionDictionary, key, value, TYPE_KEY, TYPE_VALUE);
FinFuncion

Funcion result_collection <- collectionDictionary_put_byType(collectionDictionary, key, value, TYPE_KEY, TYPE_VALUE)
	Definir result_collection, key_string, value_string Como Texto;
	key_string        = value_TypeToString(key, TYPE_KEY);
	value_string      = value_TypeToString(value, TYPE_VALUE);
	result_collection = collectionDictionary_put_byString(collectionDictionary, key_string, value_string);
FinFuncion

Funcion result_collection <- collectionDictionary_put_byString(collectionDictionary, key_string, value_string)
	Definir result_collection Como Texto;
	result_collection = collectionDictionary_middleware(collectionDictionary, key_string, value_string, string_NULL(), ACTION_ADD());
FinFuncion
//-----[ REPLACE INTERFACES ]--------------------------------------------[#]
Funcion result_collection <- collectionDictionary_replace(collectionDictionary, key, value)
    Definir result_collection, TYPE_KEY, TYPE_VALUE Como Texto;
    TYPE_KEY          = collectionDictionary_getTypeKey(collectionDictionary);
    TYPE_VALUE        = collectionDictionary_getTypeValue(collectionDictionary);
    result_collection = collectionDictionary_replace_byType(collectionDictionary, key, value, TYPE_KEY, TYPE_VALUE);
FinFuncion

Funcion result_collection <- collectionDictionary_replace_byType(collectionDictionary, key, value, TYPE_KEY, TYPE_VALUE)
    Definir result_collection, key_string, value_string Como Texto;
    key_string        = value_TypeToString(key, TYPE_KEY);
    value_string      = value_TypeToString(value, TYPE_VALUE);
    result_collection = collectionDictionary_replace_byString(collectionDictionary, key_string, value_string);
FinFuncion

Funcion result_collection <- collectionDictionary_replace_byString(collectionDictionary, key_string, value_string)
    Definir result_collection Como Texto;
    result_collection = collectionDictionary_replace_strict_byString(collectionDictionary, key_string, string_NULL(), value_string);
FinFuncion
//-----[ REPLACE CONDITIONAL INTERFACES ]--------------------------------[#]
Funcion result_collection <- collectionDictionary_replace_strict(collectionDictionary, key, expected, value)
    Definir result_collection, TYPE_KEY, TYPE_VALUE Como Texto;
    TYPE_KEY          = collectionDictionary_getTypeKey(collectionDictionary);
    TYPE_VALUE        = collectionDictionary_getTypeValue(collectionDictionary);
    result_collection = collectionDictionary_replace_strict_byType(collectionDictionary, key, expected, value, TYPE_KEY, TYPE_VALUE);
FinFuncion

Funcion result_collection <- collectionDictionary_replace_strict_byType(collectionDictionary, key, expected, value, TYPE_KEY, TYPE_VALUE)
    Definir result_collection, key_string, expected_string, value_string Como Texto;
    key_string        = value_TypeToString(key, TYPE_KEY);
    expected_string   = value_TypeToString(expected, TYPE_VALUE);
    value_string      = value_TypeToString(value, TYPE_VALUE);
    result_collection = collectionDictionary_replace_strict_byString(collectionDictionary, key_string, expected_string, value_string);
FinFuncion

Funcion result_collection <- collectionDictionary_replace_strict_byString(collectionDictionary, key_string, expected_string, value_string)
    Definir result_collection Como Texto;
    result_collection = collectionDictionary_middleware(collectionDictionary, key_string, value_string, expected_string, ACTION_SET());
FinFuncion
//-----[ GET INTERFACES ]------------------------------------------------[#]
Funcion  TYPE_VALUE <- collectionDictionary_getTypeValue(collectionDictionary)
	Definir TYPE_VALUE Como Texto;
	TYPE_VALUE = collectionRouted_getType(collectionDictionary);
FinFuncion

Funcion  TYPE_KEY <- collectionDictionary_getTypeKey(collectionDictionary)
	Definir TYPE_KEY Como Texto;
	TYPE_KEY = collectionUniform_getType(collectionDictionary);
FinFuncion
//-----[ GET INTERFACES ]------------------------------------------------[#]
Funcion result_get <- collectionDictionary_get_byType(collectionDictionary, key_type, TYPE_VALUE)
	Definir data_raw, data_catch, key_string, TYPE_KEY Como Texto;
	Segun TYPE_VALUE Hacer
		caso TYPE_INT():     Definir result_get Como Entero;
		caso TYPE_FLOAT():   Definir result_get Como Real;
		caso TYPE_BOOLEAN(): Definir result_get Como Logico;
		De Otro Modo:        Definir result_get Como Texto;
	FinSegun
	TYPE_KEY    = collectionUniform_getType(collectionDictionary);
	key_string  = value_TypeToString(key_type, TYPE_KEY);
	data_raw    = collectionDictionary_get_byString(collectionDictionary, key_string);
	data_catch  = value_StringCatch_ofType(data_raw, TYPE_VALUE, "collectionDictionary_get()", "data no is valid");
	result_get  = value_stringToType(data_catch, TYPE_VALUE);
FinFuncion

Funcion result_get <- collectionDictionary_get_byString(collectionDictionary, key_string)
	Definir result_get Como Texto;
	result_get = collectionDictionary_getOrDefault_byString(collectionDictionary, key_string, string_NULL());
FinFuncion
//-----[ GET OR DEFAULT INTERFACES ]-------------------------------------[#]
Funcion result_get <- collectionDictionary_getOrDefault_byType(collectionDictionary, key, default_value, TYPE_VALUE)
	Definir data_raw, data_catch, key_string, default_string, TYPE_KEY Como Texto;
	Segun TYPE_VALUE Hacer
		caso TYPE_INT():     Definir result_get Como Entero;
		caso TYPE_FLOAT():   Definir result_get Como Real;
		caso TYPE_BOOLEAN(): Definir result_get Como Logico;
		De Otro Modo:        Definir result_get Como Texto;
	FinSegun
	TYPE_KEY       = collectionUniform_getType(collectionDictionary);
	key_string     = value_TypeToString(key, TYPE_KEY);
	default_string = value_TypeToString(default_value, TYPE_VALUE);
	data_raw       = collectionDictionary_getOrDefault_byString(collectionDictionary, key_string, default_string);
	data_catch     = value_StringCatch_ofType(data_raw, TYPE_VALUE, "collectionDictionary_get()", "data no is valid");
	result_get     = value_stringToType(data_catch, TYPE_VALUE);
FinFuncion

Funcion result_get <- collectionDictionary_getOrDefault_byString(collectionDictionary, key_string, default_string)
	Definir result_get Como Texto;
	result_get = collectionDictionary_middleware(collectionDictionary, key_string, string_NULL(), default_string, ACTION_GET());
FinFuncion
//-----[ REMOVE INTERFACES ]---------------------------------------------[#]
Funcion result_collection <- collectionDictionary_remove(collectionDictionary, key)
	Definir result_collection, TYPE_KEY Como Texto;
	TYPE_KEY              = collectionUniform_getType(collectionDictionary);
	result_collection = collectionDictionary_remove_byType(collectionDictionary, key, TYPE_KEY);
FinFuncion

Funcion result_collection <- collectionDictionary_remove_byType(collectionDictionary, key, TYPE_KEY)
	Definir result_collection, key_string Como Texto;
	key_string        = value_TypeToString(key, TYPE_KEY);
	result_collection = collectionDictionary_remove_byString(collectionDictionary, key_string);
FinFuncion

Funcion result_collection <- collectionDictionary_remove_byString(collectionDictionary, key_string)
	Definir result_collection Como Texto;
	result_collection = collectionDictionary_middleware(collectionDictionary, key_string, string_NULL(), string_NULL(), ACTION_REMOVE());
FinFuncion
//-----[ MIDDLEWARE & DISPATCHER ]---------------------------------------[#]
Funcion result_operation <- collectionDictionary_middleware(collectionDictionary, key_string, value_string, optional_string, CONST_ACTION)
	Definir result_operation, safe_collection Como Texto;
	Definir uniform_length, collection_size, index_flagData, adjust_flagStart Como Entero;
	safe_collection  = collectionUniform_ensureCapacity(collectionDictionary, key_string, false());
	uniform_length   = collectionUniform_getUniformLength(safe_collection);
	collection_size  = collection_getSize(safe_collection);
	index_flagData   = collection_getIndex_StartData(safe_collection);
	adjust_flagStart = collection_getIndex_byLength(collection_size, uniform_length, 0);
	result_operation = collectionDictionary_dispatcher(safe_collection, key_string, optional_string, value_string, uniform_length, collection_size, index_flagData, adjust_flagStart, CONST_ACTION);
FinFuncion

Funcion result_operation <- collectionDictionary_dispatcher(collectionDictionary, key_string, expected_string, value_string, uniform_length, collection_size, index_flagData, adjust_flagStart, CONST_ACTION)
    Definir result_operation Como Texto;
    Segun CONST_ACTION Hacer
        Caso ACTION_ADD():
            result_operation = collectionDictionary_action_put(collectionDictionary, key_string, value_string, uniform_length, collection_size, index_flagData, adjust_flagStart);
        Caso ACTION_SET():
            result_operation = collectionDictionary_action_replace_strict(collectionDictionary, key_string, expected_string, value_string, uniform_length, collection_size, index_flagData, adjust_flagStart);
        Caso ACTION_GET():
            result_operation = collectionDictionary_action_getOrDefault(collectionDictionary, key_string, expected_string, uniform_length, collection_size, index_flagData, adjust_flagStart);
        Caso ACTION_REMOVE():
            result_operation = collectionDictionary_action_remove(collectionDictionary, key_string, uniform_length, collection_size, index_flagData, adjust_flagStart);
        De Otro Modo:
            log_error_function("collectionDictionary_dispatcher()", "CONST_ACTION no valid");
            result_operation = collectionDictionary;
    FinSegun
FinFuncion
//-----[ ACTIONS: CORE LOGIC ]-------------------------------------------[#]
Funcion result_collection <- collectionDictionary_action_put(collectionDictionary, key_string, value_string, uniform_length, collection_size, index_flagData, adjust_flagStart)
    Definir result_collection, value_collection Como Texto;
    Definir index_target Como Entero;
    index_target = collectionUniform_getIndexKeySlot_force(collectionDictionary, key_string, uniform_length, collection_size, index_flagData, false());
    Si index_target <> number_NULL() Entonces
        value_collection  = collectionRouted_middleware_force(collectionDictionary, index_target, value_string, ACTION_ADD(), adjust_flagStart, 0);
        result_collection = collectionUniform_action_addUnique(value_collection, key_string, uniform_length, collection_size, index_flagData, false());
        result_collection = collection_incrementSize(result_collection);
    SiNo
        result_collection = collectionDictionary_action_replace_strict(collectionDictionary, key_string, string_NULL(), value_string, uniform_length, collection_size, index_flagData, adjust_flagStart);
    FinSi
FinFuncion

Funcion result_collection <- collectionDictionary_action_replace_strict(collectionDictionary, key_string, expected_string, value_string, uniform_length, collection_size, index_flagData, adjust_flagStart)
    Definir result_collection, value_getString Como Texto;
    Definir index_target Como Entero;
    Definir isValid Como Logico;
    index_target = collectionUniform_getIndexKey_force(collectionDictionary, key_string, uniform_length, collection_size, index_flagData, false());
    Si expected_string <> string_NULL() Entonces
        value_getString = collectionRouted_middleware_force(collectionDictionary, index_target, expected_string, ACTION_GET(), adjust_flagStart, 0);
        isValid         = string_isEquals(expected_string, value_getString);
    SiNo
        isValid = true();
    FinSi
    Si index_target <> number_NULL() & isValid Entonces
        result_collection = collectionRouted_middleware_force(collectionDictionary, index_target, value_string, ACTION_SET(), adjust_flagStart, 0);
    SiNo
        result_collection = collectionDictionary;
    FinSi
FinFuncion

Funcion result_get <- collectionDictionary_action_getOrDefault(collectionDictionary, key_string, default_string, uniform_length, collection_size, index_flagData, adjust_flagStart)
	Definir result_get Como Texto;
	Definir index_target Como Entero;
	index_target = collectionUniform_getIndexKey_force(collectionDictionary, key_string, uniform_length, collection_size, index_flagData, false());
	Si index_target <> number_NULL() Entonces
		result_get = collectionRouted_middleware_force(collectionDictionary, index_target, "", ACTION_GET(), adjust_flagStart, 0);
	SiNo
		result_get = default_string;
	FinSi
FinFuncion

Funcion result_collection <- collectionDictionary_action_remove(collectionDictionary, key_string, uniform_length, collection_size, index_flagData, adjust_flagStart)
	Definir result_collection, remove_collection Como Texto;
	Definir index_target Como Entero;
	index_target       = collectionUniform_getIndexKey_force(collectionDictionary, key_string, uniform_length, collection_size, index_flagData, false());
	Si index_target <> number_NULL() Entonces
		remove_collection = collectionRouted_middleware_force(collectionDictionary, index_target, "", ACTION_REMOVE(), adjust_flagStart, 0);
		result_collection = collectionUniform_action_removeUnique(remove_collection, key_string, uniform_length, collection_size, index_flagData, false());
		result_collection = collection_decrementSize(result_collection);
	SiNo
		result_collection = collectionDictionary;
	FinSi
FinFuncion

//TODO: collection_printer: primero el printer de array por direccion, luego con decoradores inteligentes tal vez un getDecorator(i, TYPE_DECORATOR);
//TODO: necesitamos funciones clear y purge(este elimina sin reniciar) para collections (una es new y otra es limpiar los tag derecha)
// agregue el tipo custom para poder hacer el tipo table sin desperdiciar al menos 4 chars por columna
// si se quiere optimizar va a ser necesario usar el dispatcher al parecer sera mas complejo de lo que pense ... y ensure capaciy force
Funcion sandbox_development
	Definir collection, tui, canvas, text, printer Como Texto;
	Definir subCanvas, sprite, tcomponent Como Texto;
	Definir i, n, cX, cY, sCX, sCY, x0, y0, length_text Como Entero;
	Definir nf Como Real;
	Definir nn Como Numero;
	cX = 20;
	cY = 10;
	Dimension text[3];
	text[0] = "Hello";
	text[1] = "World";
	text[2] = "amazing";
	printer = printer_init("hello");
	printer = printer_addLine(printer, "World");
	printer = printer_addLine(printer, "World");
	printer = printer_addLine(printer, "World");
	printer = printer_setOrder(printer, PRINTER_ORDER_INVERSE());
	printer_display(printer);
	escribir "- - - - -";
	escribir printer;
	
	//file_system();
FinFuncion
///%%%%%[ PRINTER................. ]%%%%%%%[   #PTE    ]%%%%%%%%%%%%%%%%%%%%
Funcion struct_printer <- printer_init(text)
	Definir struct_printer Como Texto;
	struct_printer = printer_new(text, native_string_length(text));
FinFuncion
Funcion struct_printer <- printer_new(text, uniform_length)
	Definir struct_printer Como Texto;
	struct_printer = printer_new_byConfig(text, uniform_length, PRINTER_PREFIX_NONE(), PRINTER_ORDER_LINEAR());
FinFuncion

Funcion struct_printer <- printer_new_byConfig(text, uniform_length, PRINTER_PREFIX, PRINTER_ORDER)
	Definir struct_printer, printer, tag_prefix, tag_order Como Texto;
	Definir text_length, size_print Como Entero;
	text_length = native_string_length(text);
	Si text_length == 0 Entonces
		uniform_length = collection_getMinDataLength();
		size_print     = 0;
	SiNo
		size_print = math_div_int(math_decrement(math_sum(text_length, uniform_length)), uniform_length);
		Si text_length < uniform_length Entonces
			uniform_length = text_length;
		FinSi
		text = printer_padToUniform(text, uniform_length, size_print);
	FinSi
	tag_prefix     = string_append(PRINTER_PREFIX, tag_structPrinter_prefix());
	tag_order      = string_append(PRINTER_ORDER, tag_structPrinter_order());
	printer        = collectionUniform_new(STRUCT_TYPE_PRINTER(), TYPE_CUSTOM(), uniform_length);
	printer        = collection_add_toRight_byString_force(printer, text);
	printer        = tag_add_toRight(printer, tag_prefix);
	printer        = tag_add_toRight(printer, tag_order);
	struct_printer = collection_setSize(printer, size_print);
FinFuncion

Funcion order_type <- printer_getOrder(printer)
	Definir order_type Como Texto;
	order_type = tag_get_toRight(printer, tag_structPrinter_order());
FinFuncion

Funcion prefix_type <- printer_getPrefix(printer)
	Definir prefix_type Como Texto;
	prefix_type = tag_get_toRight(printer, tag_structPrinter_prefix());
FinFuncion

Funcion result_printer <- printer_setOrder(printer, PRINTER_ORDER)
	Definir result_printer Como Texto;
	result_printer = tag_set_toRight(printer, tag_structPrinter_order(), PRINTER_ORDER);
FinFuncion

Funcion result_printer <- printer_setPrefix(printer, PRINTER_PREFIX)
	Definir result_printer Como Texto;
	result_printer = tag_set_toRight(printer, tag_structPrinter_prefix(), PRINTER_PREFIX);
FinFuncion

Funcion padded_text <- printer_padToUniform(text, uniform_length, cells_count)
	Definir padded_text Como Texto;
	Definir padding Como Entero;
	padding = math_minus((cells_count * uniform_length), native_string_length(text));
	Si padding > 0 Entonces
		padded_text = string_append(text, string_repeatText(" ", padding));
	SiNo
		padded_text = text;
	FinSi
FinFuncion

Funcion printer_display(printer)
	Definir size_array, uniform_length, start_index Como Entero;
	Definir i, index_startData, index_endData Como Entero;
	Definir PRINTER_PREFIX, PRITER_ORDER, text_array Como Texto;
	size_array = collection_getSize(printer);
	Si size_array > 0 Entonces
		Dimension text_array[size_array];
		start_index    = collection_getIndex_StartData(printer);
		uniform_length = collectionUniform_getUniformLength(printer);
		i = 0;
		Mientras i < size_array Hacer
			index_startData = collection_getIndex_byLength(i, uniform_length, start_index);
			index_endData   = math_sum(index_startData, uniform_length);
			text_array[i]   = string_substring(printer, index_startData, index_endData);
			i               = math_increment(i);
		FinMientras
		PRINTER_PREFIX = printer_getPrefix(printer);
		PRITER_ORDER   = printer_getOrder(printer);
		printer_display_config(text_array, size_array, PRINTER_PREFIX, PRITER_ORDER);
	FinSi
FinFuncion

Funcion printer_display_config(text_array, size_array, PRINTER_PREFIX, PRITER_ORDER)
	Definir order_isLinear Como Logico;
	order_isLinear = (PRITER_ORDER == PRINTER_ORDER_LINEAR());
	printer_display_force(text_array, size_array, PRINTER_PREFIX, order_isLinear);
FinFuncion

Funcion result_printer <- printer_modifyLine_strict(printer, index_line, part_modify, start_index)
    Definir result_printer Como Texto;
    result_printer = spriteString_modifyLine_strict(printer, index_line, part_modify, start_index);
FinFuncion

Funcion result_printer <- printer_modifyLine(printer, index_line, part_modify, start_index, end_index)
    Definir result_printer Como Texto;
    result_printer = spriteString_modifyLine_withPixel(printer, index_line, part_modify, start_index, end_index, " ");
FinFuncion

Funcion result_printer <- printer_writeLine(printer, index_line, part_modify, start_index)
    Definir result_printer Como Texto;
    result_printer = spriteString_writeLine(printer, index_line, part_modify, start_index);
FinFuncion

Funcion result_printer <- printer_setLine(printer, index_line, line_String)
    Definir result_printer Como Texto;
    result_printer = spriteString_setLine_withPixel(printer, index_line, line_String, " ");
FinFuncion

Funcion result_printer <- printer_addLine(printer, line_String)
    Definir result_printer Como Texto;
    result_printer = spriteString_addLine_withPixel(printer, line_String, " ");
FinFuncion

Funcion result_printer <- printer_cleanLine(printer, index_line)
    Definir result_printer Como Texto;
    result_printer = spriteString_CleanLine_withPixel(printer, index_line, " ");
FinFuncion

Funcion result_printer <- printer_removeLine(printer, index_line)
    Definir result_printer Como Texto;
    result_printer = spriteString_removeLine(printer, index_line);
FinFuncion

Funcion printer_display_force(array_string, array_size, PRINTER_PREFIX, order_isLinear)
	Definir symb_prefix, separator_text, separator_padding Como Texto;
	Definir maxLength_symb, length_symb, length_padding Como Entero;
	Definir i, i_start, i_end, i_advance Como Entero;
	Si order_isLinear Entonces
		i_advance = 1;
		i_start   = 0;
		i_end     = math_decrement(array_size);
	SiNo
		i_advance = -1;
		i_start   = math_decrement(array_size);
		i_end     = 0;
	FinSi
	separator_text = printer_getSeparator_toFormat(PRINTER_PREFIX);
	maxLength_symb = math_increment(printer_getMaxLength_inRange_byPrefix(PRINTER_PREFIX, array_size));
	Para i = i_start Hasta i_end Con Paso i_advance Hacer
		symb_prefix       = printer_parseInt_byPrefix(PRINTER_PREFIX, math_increment(i));
		length_symb       = native_string_length(symb_prefix);
		length_padding    = math_minus(maxLength_symb, length_symb);
		separator_padding = string_append(separator_text, string_repeatText(" ", length_padding));
		native_printer_display(symb_prefix, separator_padding, array_string[i]);
	FinPara
FinFuncion

Funcion result_separator <- printer_getSeparator_toFormat(PRINTER_PREFIX)
	Definir result_separator Como Texto;
	Segun PRINTER_PREFIX Hacer
		PRINTER_PREFIX_NUMBER(): 
			result_separator = ".";
		PRINTER_PREFIX_ALPHABET(): 
			result_separator = ".";
		PRINTER_PREFIX_ROMAN(): 
			result_separator = ".";
		PRINTER_PREFIX_BULLET(): 
			result_separator = " ";
		De Otro Modo:
			result_separator = "";
	FinSegun
FinFuncion

Funcion result_prefix <- printer_parseInt_byPrefix(PRINTER_PREFIX, number_int)
	Definir result_prefix Como Texto;
	Segun PRINTER_PREFIX Hacer
		PRINTER_PREFIX_NUMBER(): 
			result_prefix = printer_parseInt_byPrefix_number(number_int);
		PRINTER_PREFIX_ALPHABET(): 
			result_prefix = printer_parseInt_byPrefix_alpha(number_int);
		PRINTER_PREFIX_ROMAN(): 
			result_prefix = printer_parseInt_byPrefix_roman(number_int);
		PRINTER_PREFIX_BULLET(): 
			result_prefix = "·";
		De Otro Modo:
			result_prefix = "";
	FinSegun
FinFuncion

Funcion result_number <- printer_parseInt_byPrefix_number(number_int)
	Definir result_number Como Texto;
	result_number = native_number_toString(number_int);
FinFuncion

Funcion result_alpha <- printer_parseInt_byPrefix_alpha(number_int)
	Definir result_alpha, symbol_alpha Como Texto;
	Definir num_result, index_alpha Como Entero;
	result_alpha = "";
	num_result = number_int;
	Si number_int < 1 Entonces
		result_alpha = string_NULL();
	Sino
		Mientras num_result > 0 Hacer
			num_result   = math_decrement(num_result);
			index_alpha  = native_math_module(num_result, alphaArray_size());
			symbol_alpha = alphaArray_symbol(index_alpha);
			result_alpha = string_append(symbol_alpha, result_alpha);  // se antepone
			num_result   = native_math_truncate(math_div(num_result, alphaArray_size()));
		FinMientras
	FinSi
FinFuncion

Funcion result_roman <- printer_parseInt_byPrefix_roman(number_int)
    Definir result_roman, symbol_roman Como Texto;
    Definir num_result, value_roman, i, size_romanMap Como Entero;
    result_roman = "";
    num_result = number_int;
	Si number_int < 1 Entonces 
		result_roman = string_NULL();
	Sino
		size_romanMap = math_decrement(romanArray_size());
		Para i = 0 Hasta size_romanMap Con Paso 1 Hacer
			symbol_roman = romanArray_symbol(i);
			value_roman  = romanArray_value(i);
			Mientras (num_result >= value_roman) Hacer
				result_roman = string_append(result_roman, symbol_roman);
				num_result   = math_minus(num_result, value_roman);
			FinMientras
		FinPara
	FinSi
FinFuncion

Funcion max_length <- printer_getMaxLength_inRange_byPrefix(PRINTER_PREFIX, target_number)
	Definir max_length Como Entero;
	Segun PRINTER_PREFIX Hacer
		PRINTER_PREFIX_NUMBER(): 
			max_length = printer_getMaxLength_inRange_byPrefix_number(target_number);
		PRINTER_PREFIX_ALPHABET(): 
			max_length = printer_getMaxLength_inRange_byPrefix_alpha(target_number);
		PRINTER_PREFIX_ROMAN(): 
			max_length = printer_getMaxLength_inRange_byPrefix_roman(target_number);
		PRINTER_PREFIX_BULLET(): 
			max_length = 1;
		De Otro Modo:
			max_length = 0;
	FinSegun
FinFuncion

Funcion max_length <- printer_getMaxLength_inRange_byPrefix_number(target_number)
	Definir max_length Como Entero;
	max_length = native_int_length(target_number);
FinFuncion

Funcion max_length <- printer_getMaxLength_inRange_byPrefix_alpha(target_number)
	Definir max_length Como Entero;
	max_length = printer_getMaxLength_inRange_byPrefix_bijective(target_number, 26);
FinFuncion

Funcion max_length <- printer_getMaxLength_inRange_byPrefix_bijective(target_number, base_size)
	Definir max_length Como Entero;
	Definir argument_value Como Real;
	Si target_number <= 0 | base_size <= 1 Entonces
		max_length = 0;
	SiNo
		argument_value = math_sum(math_div((math_minus(base_size, 1) * target_number), base_size), 1);
		max_length = math_ceil(native_math_log(argument_value, base_size));
	FinSi
FinFuncion

Funcion max_length <- printer_getMaxLength_inRange_byPrefix_roman(target_number)
	Definir max_length, suffix_weight, max_saving, current_position, remaining_number Como Entero;
	Definir current_digit, current_weight, candidate_weight, original_weight, gain Como Entero;
	suffix_weight    = 0;
	max_saving       = 0;
	current_position = 0; 
	remaining_number = target_number;
	Mientras remaining_number > 0 Hacer
		current_digit  = native_math_module(remaining_number, 10);
		current_weight = printer_getRomanDigitWeight(current_digit);
		Si current_digit > 0 Entonces
			candidate_weight = math_sum(printer_getRomanDigitWeight(math_decrement(current_digit)), (current_position * 4));
			original_weight  = math_sum(current_weight, suffix_weight);
			gain             = math_minus(candidate_weight, original_weight);
			Si gain > max_saving Entonces
				max_saving = gain;
			FinSi
		FinSi
		
		suffix_weight    = math_sum(suffix_weight, current_weight);
		current_position = math_increment(current_position);
		remaining_number = math_div_int(remaining_number, 10);
	FinMientras
	max_length = math_sum(suffix_weight, max_saving);
FinFuncion

Funcion digit_weight <- printer_getRomanDigitWeight(current_digit)
	Definir digit_weight, modulo_five Como Entero;
	Si current_digit == 0 Entonces
		digit_weight = 0;
	SiNo
		modulo_five = native_math_module(current_digit, 5);
		Si modulo_five == 4 Entonces
			digit_weight = 2;
		SiNo
			digit_weight = math_sum(math_div_int(current_digit, 5), modulo_five);
		FinSi
	FinSi
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[   ///   ]============================
Funcion TYPE <- STRUCT_TYPE_PRINTER
	Definir TYPE Como Texto;
	TYPE = "printer";
FinFuncion

Funcion result_id <- id_structPrinter_prefix
	Definir result_id Como Texto;
	result_id = "Þ";
FinFuncion

Funcion result_id <- id_structPrinter_order
	Definir result_id Como Texto;
	result_id = "º";
FinFuncion

Funcion tag_symbol <- tag_structPrinter_prefix
	Definir tag_symbol Como Texto;
	tag_symbol = tag_new(id_structPrinter_prefix(), tag_CATEGORY_INSTRUCTION());
FinFuncion

Funcion tag_symbol <- tag_structPrinter_order
	Definir tag_symbol Como Texto;
	tag_symbol = tag_new(id_structPrinter_order(), tag_CATEGORY_INSTRUCTION());
FinFuncion

Funcion result_id <- PRINTER_PREFIX_NUMBER
	Definir result_id Como Texto;
	result_id = "number";
FinFuncion

Funcion result_id <- PRINTER_PREFIX_ROMAN
	Definir result_id Como Texto;
	result_id = "roman";
FinFuncion

Funcion result_id <- PRINTER_PREFIX_ALPHABET
	Definir result_id Como Texto;
	result_id = "alphabet";
FinFuncion

Funcion result_id <- PRINTER_PREFIX_BULLET
	Definir result_id Como Texto;
	result_id = "bullet";
FinFuncion

Funcion result_id <- PRINTER_PREFIX_NONE
	Definir result_id Como Texto;
	result_id = "none";
FinFuncion

Funcion result_id <- PRINTER_ORDER_LINEAR
	Definir result_id Como Texto;
	result_id = "linear";
FinFuncion

Funcion result_id <- PRINTER_ORDER_INVERSE
	Definir result_id Como Texto;
	result_id = "inverse";
FinFuncion

Funcion size_alpha <- alphaArray_size
	Definir size_alpha Como Entero;
	size_alpha = 26;
FinFuncion

Funcion symbol_alpha <- alphaArray_symbol(i)
	Definir symbol_alpha Como Texto;
	symbol_alpha = native_char_at("abcdefghijklmnopqrstuvwxyz", i);
FinFuncion

Funcion size_roman <- romanArray_size
	Definir size_roman Como Entero;
	size_roman = 13;
FinFuncion

Funcion symbol_roman <- romanArray_symbol(i)
    Definir symbol_roman Como Texto;
    Segun i Hacer
        0: symbol_roman = "M";
        1: symbol_roman = "CM";
        2: symbol_roman = "D";
        3: symbol_roman = "CD";
        4: symbol_roman = "C";
        5: symbol_roman = "XC";
        6: symbol_roman = "L";
        7: symbol_roman = "XL";
        8: symbol_roman = "X";
        9: symbol_roman = "IX";
        10: symbol_roman = "V";
        11: symbol_roman = "IV";
        De Otro Modo: symbol_roman = "I";
    FinSegun
FinFuncion

Funcion number_int <- romanArray_value(i)
    Definir number_int Como Entero;
    Segun i Hacer
        0: number_int = 1000;
        1: number_int = 900;
        2: number_int = 500;
        3: number_int = 400;
        4: number_int = 100;
        5: number_int = 90;
        6: number_int = 50;
        7: number_int = 40;
        8: number_int = 10;
        9: number_int = 9;
        10: number_int = 5;
        11: number_int = 4;
        De Otro Modo: number_int = 1;
    FinSegun
FinFuncion
///%%%%%[ COLLECTION_DUAL_UNIFORM. ]%%%%%%%[   #CDU    ]%%%%%%%%%%%%%%%%%%%%
Funcion result_collection <- collectionDualUniform_new(STRUCT_TYPE, TYPE_KEY, TYPE_VALUE)
	Definir result_collection, base_collection Como Texto;
	Definir tag_instruction, tag_type, min_string Como Texto;
	Definir min_value Como Entero;
	min_value         = collection_getMinDataLength();
	min_string        = integer_toString(collection_getMinDataLength());
	tag_instruction   = string_append(min_string, tag_new(id_collectionDual, tag_CATEGORY_INSTRUCTION()));
	tag_type          = string_append(tag_new(id_collectionDual, tag_CATEGORY_TYPE()), TYPE_KEY);
	base_collection   = collectionUniform_new(STRUCT_TYPE, TYPE_VALUE, min_value);
	base_collection   = tag_add_ToLeft(base_collection, tag_type);
	result_collection = tag_add_toRight(base_collection, tag_instruction);
FinFuncion

Funcion result_id <- id_collectionDual
	Definir result_id Como Texto;
	result_id = "*";
FinFuncion
//????????????????????: Uniform+uniform (multiples tipo de insercion para flexibilidad siendo dos entes coordinados pudiendo configurar su metodo su insercion segun lo que se requiera)
//collectionTable  : ???????+uniform(solo toma de ???? el metodo de orden binario y al lado insercion dinamica, ademas agrega, tipado)
//collectionStorage: ???????+routed(lo mismo que la anterior pero el value en vez de ser uniform con resize o expasion, es dinamico puro)
///%%%%%[ COLLECTION_TABLE........ ]%%%%%%%[   #CDU    ]%%%%%%%%%%%%%%%%%%%%
Funcion result_collection <- collectionTable_new(STRUCT_TYPE, name)
	
FinFuncion
///%%%%%[ DEQUE................... ]%%%%%%%[   #DEQ    ]%%%%%%%%%%%%%%%%%%%%
Funcion new_Deque <- util_deque_init(TYPE, element_init)
	Definir new_Deque Como Texto;
	new_Deque = collectionRouted_init(STRUCT_TYPE_DEQUE(), TYPE, element_init);
FinFuncion

Funcion Size_int <- util_deque_Size(struct_Deque)
	Definir Size_int Como Entero;
	Size_int = collection_getSize(struct_Deque);
FinFuncion

Funcion deque_Result <- util_deque_AddFirst(struct_Deque, element)
	Definir deque_Result Como Texto;
	deque_Result = collectionRouted_addFirst(struct_Deque, element);
FinFuncion

Funcion deque_Result <- util_deque_AddLast(struct_Deque, element)
	Definir deque_Result Como Texto;
	deque_Result = collectionRouted_addLast(struct_Deque, element);
FinFuncion

Funcion result_collection <- util_deque_removeFirst(struct_Deque)
	Definir result_collection Como Texto;
	result_collection = collectionRouted_removeFirst(struct_Deque);
FinFuncion

Funcion result_collection <- util_deque_removeLast(struct_Deque)
	Definir result_collection Como Texto;
	result_collection = collectionRouted_removeLast(struct_Deque);
FinFuncion

Funcion util_deque_println(struct_Deque)
	collectionRouted_println(struct_Deque);
FinFuncion

Funcion element_Result <- util_deque_getFirst(struct_Deque)
	Definir TYPE Como Texto;
	TYPE = collectionRouted_getType(struct_Deque);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Entero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = collectionRouted_get_byType(struct_Deque, 0, TYPE);
FinFuncion

Funcion element_Result <- util_deque_getLast(struct_Deque)
	Definir TYPE Como Texto;
	TYPE = collectionRouted_getType(struct_Deque);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Entero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = collectionRouted_getLast_byType(struct_Deque, TYPE);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[   ///   ]============================
Funcion TYPE <- STRUCT_TYPE_DEQUE
	Definir TYPE Como Texto;
	TYPE = "deque";
FinFuncion
///%%%%%[ QUEUE................... ]%%%%%%%[   #QUE    ]%%%%%%%%%%%%%%%%%%%%
Funcion new_Queue <- util_queue_init(TYPE, element_init)
	Definir new_Queue Como Texto;
	new_Queue = collectionRouted_init(STRUCT_TYPE_QUEUE(), TYPE, element_init);
FinFuncion

Funcion Size_int <- util_queue_Size(struct_Queue)
	Definir Size_int Como Entero;
	Size_int = collection_getSize(struct_Queue);
FinFuncion

Funcion queue_Result <- util_queue_Offer(struct_Queue, element)
	Definir queue_Result Como Texto;
	queue_Result = collectionRouted_addLast(struct_Queue, element);
FinFuncion

Funcion util_queue_println(struct_Queue)
	collectionRouted_println(struct_Queue);
FinFuncion

Funcion element_Result <- util_queue_Peek(struct_Queue)
	Definir TYPE Como Texto;
	TYPE = collectionRouted_getType(struct_Queue);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Entero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = collectionRouted_getFirst_byType(struct_Queue, TYPE);
FinFuncion

Funcion result_collection <- util_queue_removeFirst(struct_Queue)
	Definir result_collection Como Texto;
	result_collection = collectionRouted_removeFirst(struct_Queue);
FinFuncion

Funcion element_Result <- util_queue_Poll(struct_Queue Por Referencia)
	Definir TYPE, element_String Como Texto;
	TYPE = collectionRouted_getType(struct_Queue);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Entero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = util_queue_Peek(struct_Queue);
	struct_Queue = util_queue_removeFirst(struct_Queue);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[   ///   ]============================
Funcion TYPE <- STRUCT_TYPE_QUEUE
	Definir TYPE Como Texto;
	TYPE = "queue";
FinFuncion
///%%%%%[ STACK................... ]%%%%%%%[   #STA    ]%%%%%%%%%%%%%%%%%%%%
Funcion new_Stack <- util_stack_init(TYPE, element_init)
	Definir new_Stack Como Texto;
	new_Stack = collectionRouted_init(STRUCT_TYPE_STACK(), TYPE, element_init);
FinFuncion

Funcion Size_int <- util_stack_Size(struct_Stack)
	Definir Size_int Como Entero;
	Size_int = collection_getSize(struct_Stack);
FinFuncion

Funcion stack_Result <- util_stack_push(struct_Stack, element)
	Definir stack_Result Como Texto;
	stack_Result = collectionRouted_addLast(struct_Stack, element);
FinFuncion

Funcion util_stack_println(struct_Stack)
	collectionRouted_println(struct_Stack);
FinFuncion

Funcion element_Result <- util_stack_Top(struct_Stack)
	Definir TYPE Como Texto;
	TYPE = collectionRouted_getType(struct_Stack);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Entero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = collectionRouted_getLast_byType(struct_Stack, TYPE);
FinFuncion

Funcion stack_Result <- util_stack_removeLast(struct_Stack)
	Definir stack_Result Como Texto;
	stack_Result = collectionRouted_removeLast(struct_Stack);
FinFuncion

Funcion element_Result <- util_stack_Pop(struct_Stack Por Referencia)
	Definir TYPE, element_String Como Texto;
	TYPE = collectionRouted_getType(struct_Stack);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Entero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = util_stack_Top(struct_Stack);
	struct_Stack = util_stack_removeLast(struct_Stack);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[   ///   ]============================
Funcion TYPE <- STRUCT_TYPE_STACK
	Definir TYPE Como Texto;
	TYPE = "stack";
FinFuncion
///%%%%%[ LIST.................... ]%%%%%%%[   #LIS    ]%%%%%%%%%%%%%%%%%%%%
Funcion new_list <- util_list_new(TYPE)
	Definir new_list Como Texto;
	new_list = collectionRouted_new(STRUCT_TYPE_LIST(), TYPE);
FinFuncion

Funcion new_list <- util_list_init(TYPE, element_init)
	Definir new_list Como Texto;
	new_list = collectionRouted_init(STRUCT_TYPE_LIST(), TYPE, element_init);
FinFuncion

Funcion list_result <- util_list_add(struct_list, element)
	Definir list_result Como Texto;
	list_result = collectionRouted_addLast(struct_List, element);
FinFuncion

Funcion Size_int <- util_list_Size(struct_List)
	Definir Size_int Como Entero;
	Size_int = collection_getSize(struct_List);
FinFuncion

Funcion util_list_println(struct_List)
	collectionRouted_println(struct_List);
FinFuncion

Funcion element_Result <- util_list_get(struct_list, index_element)
	Definir TYPE Como Texto;
	TYPE = collectionRouted_getType(struct_List);
	Segun TYPE Hacer
		caso TYPE_INT(): Definir element_Result Como Entero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = collectionRouted_get_byType(struct_List, index_element, TYPE);
FinFuncion

Funcion element_Result <- util_list_remove(struct_list, index_element)
	Definir element_Result Como Texto;
	element_Result = collectionRouted_remove(struct_List, index_element);
FinFuncion

Funcion list_Result <- util_list_set(struct_list, index_element, new_Value)
	Definir list_Result Como Texto;
	list_Result = collectionRouted_set(struct_List, index_element, new_Value);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[   ///   ]============================
Funcion TYPE <- STRUCT_TYPE_LIST
	Definir TYPE Como Texto;
	TYPE = "list";
FinFuncion
///%%%%%[ SET..................... ]%%%%%%%[   #SET    ]%%%%%%%%%%%%%%%%%%%%
Funcion new_Set <- util_set_init(TYPE, value_type)
	Definir new_Set Como Texto;
	new_Set = collectionUniform_init(STRUCT_TYPE_SET(), TYPE, value_type);
FinFuncion

Funcion new_Set <- util_set_new(TYPE)
	Definir new_Set Como Texto;
	new_Set = collectionUniform_new(STRUCT_TYPE_SET(), TYPE, collection_getMinDataLength());
FinFuncion

Funcion result_collection <- util_set_add(collectionSet, key_new)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_addUniqueDynamic_toRight(collectionSet, key_new);
FinFuncion

Funcion result_collection <- util_set_remove(collectionSet, key_new)
	Definir result_collection Como Texto;
	result_collection = collectionUniform_removeUnique_toRight(collectionSet, key_new);
FinFuncion

Funcion util_set_println(struct_set)
	collectionUniform_println_toRight(collectionSet);
FinFuncion

Funcion keyExist <- util_set_contains(struct_set, key_match)
	Definir keyExist Como Logico;
	keyExist = collectionUniform_containsKey_toRight(collectionSet, key_match);
FinFuncion

Funcion result_Size <- util_set_getSize(collectionSet)
	Definir result_Size Como Entero;
	result_Size = collection_getSize(collectionSet);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[   ///   ]============================
Funcion TYPE <- STRUCT_TYPE_SET
	Definir TYPE Como Texto;
	TYPE = "set";
FinFuncion
///%%%%%[ MAP..................... ]%%%%%%%[   #MAP    ]%%%%%%%%%%%%%%%%%%%%
Funcion new_Map <- util_map_new(TYPE_KEY, TYPE_VALUE)
	Definir new_Map Como Texto;
	new_Map = collectionDictionary_new(STRUCT_TYPE_MAP(), TYPE_KEY, TYPE_VALUE);
FinFuncion

Funcion result_Map <- util_map_put(collectionMap, key, value)
	Definir result_Map Como Texto;
	result_Map = collectionDictionary_put(collectionMap, key, value);
FinFuncion

Funcion result_Map <- util_map_remove(collectionMap, key)
	Definir result_Map Como Texto;
	result_Map = collectionDictionary_remove(collectionMap, key);
FinFuncion

Funcion util_map_println_key(collectionMap)
	collectionUniform_println_toLeft(collectionMap);
FinFuncion
//TODO: replazar cuanod se haga collection printer
Funcion util_map_println_value(collectionMap)
	//collectionRouted_println(collectionMap);
FinFuncion


Funcion element_Result <- util_map_get(collectionMap, key)
	Definir TYPE_VALUE Como Texto;
	TYPE_VALUE = collectionDictionary_getTypeValue(collectionMap);
	Segun TYPE_VALUE Hacer
		caso TYPE_INT(): Definir element_Result Como Entero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = collectionDictionary_get_byType(collectionMap, key, TYPE_VALUE);
FinFuncion

Funcion element_Result <- util_map_getOrDefault(collectionMap, key, value_default)
	Definir TYPE_VALUE Como Texto;
	TYPE_VALUE = collectionDictionary_getTypeValue(collectionMap);
	Segun TYPE_VALUE Hacer
		caso TYPE_INT(): Definir element_Result Como Entero;
		caso TYPE_FLOAT(): Definir element_Result Como Real;
		caso TYPE_BOOLEAN(): Definir element_Result Como Logico;
		De Otro Modo: Definir element_Result Como Texto;
	FinSegun
	element_Result = collectionDictionary_getOrDefault_byType(collectionMap, key, value_default, TYPE_VALUE);
FinFuncion

Funcion result_Map <- util_map_replace_strict(collectionMap, key, value_expected, value_replace)
	Definir result_Map Como Texto;
	result_Map = collectionDictionary_replace_strict(collectionMap, key, value_expected, value_replace);
FinFuncion

Funcion result_Map <- util_map_replace(collectionMap, key, value_replace)
	Definir result_Map Como Texto;
	result_Map = collectionDictionary_replace(collectionMap, key, value_replace);
FinFuncion

Funcion map_Size <- util_map_size(collectionMap)
	Definir map_Size Como Entero;
	map_Size = collection_getSize(collectionMap);
FinFuncion

Funcion containsKey <- util_map_containsKey(collectionMap, key_match)
	Definir containsKey Como Logico;
	containsKey = collectionDictionary_containsKey(collectionMap, key_match);
FinFuncion

Funcion containsValue <- util_map_containsValue(collectionMap, value_match)
	Definir containsValue Como Logico;
	containsValue = collectionDictionary_containsValue(collectionMap, value_match);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[   ///   ]============================
Funcion TYPE <- STRUCT_TYPE_MAP
	Definir TYPE Como Texto;
	TYPE = "map";
FinFuncion
///%%%%%[ TEMPORAL/CHRONO_UNIT.... ]%%%%%%%[   #TEM    ]%%%%%%%%%%%%%%%%%%%%
//=====[ CHRONO_UNIT ]==============[ separator ]======================================
Funcion second_units <- chronoUnit_getDuration(chronoUnit_type)
    Definir second_units Como Entero;
    Segun chronoUnit_type Hacer
        chronoUnit_SECONDS():
            second_units = 1;
        chronoUnit_MINUTES:
            second_units = 60;
        chronoUnit_HOURS():
            second_units = 3600;
        chronoUnit_DAYS():
            second_units = 86400;
        chronoUnit_WEEKS():
            second_units = 604800;
        De Otro Modo:
            second_units = 0;
    FinSegun
FinFuncion

Funcion isTimeBased <- chronoUnit_isTimeBased(chronoUnit_type)
	Definir isTimeBased Como Logico;
	Segun chronoUnit_type Hacer
        chronoUnit_SECONDS(), chronoUnit_MINUTES, chronoUnit_HOURS():
            isTimeBased = true();
        De Otro Modo:
            isTimeBased = false();
    FinSegun
FinFuncion

Funcion isDateBased <- chronoUnit_isDateBased(chronoUnit_type)
	Definir isDateBased Como Logico;
	Segun chronoUnit_type Hacer
        chronoUnit_DAYS(), chronoUnit_WEEKS(), chronoUnit_MONTHS(), chronoUnit_YEARS(), chronoUnit_DECADES():
            isDateBased = true();
        De Otro Modo:
            isDateBased = false();
    FinSegun
FinFuncion

Funcion isSupported <- chronoUnit_isSupportedTo(struct_temporal, chronoUnit_type)
	Definir isSupported Como Logico;
	Definir temporal_type Como Texto;
	temporal_type = collection_getName(struct_temporal);
	Segun temporal_type Hacer
		TEMPORAL_LOCALTIME():
			isSupported = chronoUnit_isTimeBased(chronoUnit_type);
		TEMPORAL_LOCALDATE():
			isSupported = chronoUnit_isDateBased(chronoUnit_type);
		TEMPORAL_LOCALDATETIME():
			isSupported = chronoUnit_isTimeBased(chronoUnit_type) | chronoUnit_isDateBased(chronoUnit_type);
		De otro Modo:
			isSupported = false();
			log_error_function("chronoUnit_isSupportedTo(struct_temporal, chronoUnit_type)","Struct no valid");
	FinSegun
FinFuncion

Funcion isEstimated <- chronoUnit_isDurationEstimated(chronoUnit_type)
    Definir isEstimated Como Logico;
    Segun chronoUnit_type Hacer
        chronoUnit_DAYS(), chronoUnit_WEEKS(), chronoUnit_MONTHS(), chronoUnit_YEARS(), chronoUnit_DECADES():
            isEstimated = true();
        De Otro Modo:
            isEstimated = false();
    FinSegun
FinFuncion
//=====[ TEMPORAL ]=================[ separator ]======================================
Funcion seconds <- temporal_getSeconds(struct_temporal)
    Definir seconds Como Real;
    seconds = collectionRouted_getLast_byType(struct_temporal, TYPE_INT());
FinFuncion
//----[ PLUS ]------------------------------------------------------------------------[#]
Funcion struct_temporal_result <- temporal_Plus(struct_temporal, struct_temporal_minus)
	Definir struct_temporal_result Como Texto;
	struct_temporal_result = temporal_PlusNumber(struct_temporal, temporal_getSeconds(struct_temporal_minus));
FinFuncion

Funcion struct_temporal_result <- temporal_PlusSeconds(struct_temporal, num_increment)
	Definir struct_temporal_result Como Texto;
	struct_temporal_result = temporal_PlusUnitTemporal(struct_temporal, num_increment, chronoUnit_SECONDS());
FinFuncion

Funcion struct_temporal_result <- temporal_PlusUnitTemporal(struct_temporal, num_increment, Temporal_Type)
    Definir struct_temporal_result Como Texto;
    Definir seconds_to_add Como Real;
    seconds_to_add         = duration_TemporalUnitToSeconds(num_increment, Temporal_Type);
    struct_temporal_result = temporal_PlusNumber(struct_temporal, seconds_to_add);
FinFuncion

Funcion struct_temporal_result <- temporal_PlusNumber(struct_temporal, number_plus)
    Definir struct_temporal_result Como Texto;
    Definir seconds_total Como Real;
    seconds_total = math_sum(temporal_getSeconds(struct_temporal), number_plus);
    struct_temporal_result = collectionRouted_set_byString(struct_temporal, 0, integer_toString(seconds_total));
FinFuncion
//----[ MINUS ]----------------------------------------------------------------------[#]
Funcion struct_temporal_result <- temporal_MinusUnitTemporal(struct_temporal, num_decrement, Temporal_Type)
    Definir struct_temporal_result Como Texto;
    struct_temporal_result = temporal_PlusUnitTemporal(struct_temporal, math_negated(num_decrement), Temporal_Type);
FinFuncion

Funcion struct_temporal_result <- temporal_Minus(struct_temporal, struct_temporal_minus)
	Definir struct_temporal_result Como Texto;
	struct_temporal_result = temporal_PlusNumber(struct_temporal, math_negated(temporal_getSeconds(struct_temporal_minus)));
FinFuncion
//----[ OPERATIONS ]----------------------------------------------------[#]
Funcion struct_time <- temporal_with(struct_temporal, num_define, type_temporal)
    Definir struct_time Como Texto;
    Definir time_now, t_old_part, t_new_part, time_total Como Real;
    Si temporal_isValidUnitTemporal(num_define, type_temporal) Entonces
        time_now    = temporal_getSeconds(struct_temporal);
        t_old_part  = duration_secondsToTemporalUnitPart(time_now, type_temporal);
        t_old_part  = duration_TemporalUnitToSeconds(t_old_part, type_temporal);
        t_new_part  = duration_TemporalUnitToSeconds(num_define, type_temporal);
		time_total = math_sum(math_minus(time_now, t_old_part), t_new_part);
        struct_time = __private_temporal_setSecondOfDays(struct_temporal, time_total);
    SiNo
        log_error_function("temporal_with(struct, num, type)", "unit range_error");
        struct_time = struct_temporal;
    FinSi
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------[#]
Funcion isValidUnitTemporal <- temporal_isValidUnitTemporal(unit_temporal, type_temporal)
	Definir isValidUnitTemporal Como Logico;
	segun type_temporal Hacer
		Caso chronoUnit_HOURS():
			isValidUnitTemporal = temporal_isValidHours(unit_temporal);
		Caso chronoUnit_MINUTES():
			isValidUnitTemporal = temporal_isValidMinutes(unit_temporal);
		Caso chronoUnit_SECONDS():
			isValidUnitTemporal = temporal_isValidSeconds(unit_temporal);
		de otro modo:
			log_error_function("temporal_isValidUnitTemporal(unit, type)","type temporal no exist");
			isValidUnitTemporal = false();
	FinSegun
FinFuncion

Funcion isValid <- temporal_isValidDate(year, month, day)
	Definir isValid Como Logico;
	isValid = temporal_isValidYear(year) & temporal_isValidMonth(month)& temporal_isValidDayInMonthOfTheYear(year, month, day);
FinFuncion

Funcion isValid <- temporal_isValidYear(year)
	Definir isValid Como Logico;
	isValid = number_IsInRange(year, -999999999, 999999999);
FinFuncion

Funcion isValid <- temporal_isValidMonth(month)
	Definir isValid Como Logico;
	isValid = number_IsInRange(month, 1, 12);
FinFuncion

Funcion isValid <- temporal_isValidDayInMonthOfTheYear(year, month, day)
	Definir isValid Como Logico;
	isValid = number_IsInRange(day, 1, localDate_lengthOfMonth(year, month));
FinFuncion

Funcion isValid <- temporal_isValidHours(hours)
	Definir isValid Como Logico;
	isValid = number_IsInRange(hours, 0, 23);
FinFuncion

Funcion isValid <- temporal_isValidMinutes(minutes)
	Definir isValid Como Logico;
	isValid = number_IsInRange(minutes, 0, 59);
FinFuncion

Funcion isValid <- temporal_isValidSeconds(seconds)
	Definir isValid Como Logico;
	isValid = number_IsInRange(seconds, 0, 59);
FinFuncion

Funcion isValid <- temporal_isValid(hours, minutes, seconds)
	Definir isValid Como Logico;
	isValid = temporal_isValidHours(hours) &temporal_isValidMinutes(minutes) & temporal_isValidSeconds(seconds);
FinFuncion

Funcion date_object <- __private_temporalDate_add(struct_date, year, month, day)
	Definir date_object Como Texto;
	date_object = struct_date;
	date_object = collectionRouted_addFirst(date_object, day);
	date_object = collectionRouted_addFirst(date_object, month);
	date_object = collectionRouted_addFirst(date_object, year);
FinFuncion

Funcion date_object <- __private_temporalDate_set(struct_date, year, month, day)
	Definir date_object Como Texto;
	date_object = struct_date;
	date_object = collectionRouted_set_byType(date_object, 0, year, TYPE_INT());
	date_object = collectionRouted_set_byType(date_object, 1, month, TYPE_INT());
	date_object = collectionRouted_set_byType(date_object, 2, day, TYPE_INT());
FinFuncion

Funcion time_result <- __private_temporal_addSecondOfDays(struct_time, seconds)
	Definir time_result Como Texto;
	time_result = collectionRouted_addLast_byType(struct_time, seconds, TYPE_INT());
FinFuncion

Funcion time_result <- __private_temporal_setSecondOfDays(struct_time, seconds)
	Definir time_result Como Texto;
	Definir size_struct Como Entero;
	size_struct = math_decrement(collection_getSize(struct_time));
	time_result = collectionRouted_set_byType(struct_time, size_struct, seconds, TYPE_INT());
FinFuncion

Funcion date_object <- __private_temporalDate_setDateNull(struct_date)
	Definir date_object Como Texto;
	date_object = __private_temporalDate_set(struct_date, number_NULL(), number_NULL(), number_NULL());
FinFuncion

Funcion result_localTime <- __private_temporalTime_setTimeNull(struct_time)
	Definir result_localTime Como Texto;
	result_localTime = __private_temporal_addSecondOfDays(struct_time, number_NULL());
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion Temporal_Type <- TEMPORAL_AMOUNT_DURATION
	Definir Temporal_Type Como Texto;
	Temporal_Type = "Duration";
FinFuncion

Funcion Temporal_Type <- TEMPORAL_AMOUNT_PERIOD
	Definir Temporal_Type Como Texto;
	Temporal_Type = "Period";
FinFuncion

Funcion Temporal_Type <- TEMPORAL_LOCALTIME
	Definir Temporal_Type Como Texto;
	Temporal_Type = "LocalTime";
FinFuncion

Funcion Temporal_Type <- TEMPORAL_LOCALDATE
	Definir Temporal_Type Como Texto;
	Temporal_Type = "LocalDate";
FinFuncion

Funcion Temporal_Type <- TEMPORAL_LOCALDATETIME
	Definir Temporal_Type Como Texto;
	Temporal_Type = "LocalDateTime";
FinFuncion

Funcion Temporal_Type <- chronoUnit_DECADES
	Definir Temporal_Type Como Texto;
	Temporal_Type = "YEAR";
FinFuncion

Funcion Temporal_Type <- chronoUnit_YEARS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "YEAR";
FinFuncion

Funcion Temporal_Type <- chronoUnit_MONTHS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "MONTH";
FinFuncion

Funcion Temporal_Type <- chronoUnit_WEEKS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "WEEKS";
FinFuncion

Funcion Temporal_Type <- chronoUnit_DAYS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "DAY";
FinFuncion

Funcion Temporal_Type <- chronoUnit_HOURS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "HOUR";
FinFuncion

Funcion Temporal_Type <- chronoUnit_MINUTES
	Definir Temporal_Type Como Texto;
	Temporal_Type = "MINUTE";
FinFuncion

Funcion Temporal_Type <- chronoUnit_SECONDS
	Definir Temporal_Type Como Texto;
	Temporal_Type = "SECOND";
FinFuncion
//...
Funcion day_name <- DayOfWeek_MONDAY
    Definir day_name Como Texto;
    day_name = "MONDAY";
FinFuncion

Funcion day_name <- DayOfWeek_TUESDAY
    Definir day_name Como Texto;
    day_name = "TUESDAY";
FinFuncion

Funcion day_name <- DayOfWeek_WEDNESDAY
    Definir day_name Como Texto;
    day_name = "WEDNESDAY";
FinFuncion

Funcion day_name <- DayOfWeek_THURSDAY
    Definir day_name Como Texto;
    day_name = "THURSDAY";
FinFuncion

Funcion day_name <- DayOfWeek_FRIDAY
    Definir day_name Como Texto;
    day_name = "FRIDAY";
FinFuncion

Funcion day_name <- DayOfWeek_SATURDAY
    Definir day_name Como Texto;
    day_name = "SATURDAY";
FinFuncion

Funcion day_name <- DayOfWeek_SUNDAY
    Definir day_name Como Texto;
    day_name = "SUNDAY";
FinFuncion

Funcion month_name <- Month_JANUARY
    Definir month_name Como Texto;
    month_name = "JANUARY";
FinFuncion

Funcion month_name <- Month_FEBRUARY
    Definir month_name Como Texto;
    month_name = "FEBRUARY";
FinFuncion

Funcion month_name <- Month_MARCH
    Definir month_name Como Texto;
    month_name = "MARCH";
FinFuncion

Funcion month_name <- Month_APRIL
    Definir month_name Como Texto;
    month_name = "APRIL";
FinFuncion

Funcion month_name <- Month_MAY
    Definir month_name Como Texto;
    month_name = "MAY";
FinFuncion

Funcion month_name <- Month_JUNE
    Definir month_name Como Texto;
    month_name = "JUNE";
FinFuncion

Funcion month_name <- Month_JULY
    Definir month_name Como Texto;
    month_name = "JULY";
FinFuncion

Funcion month_name <- Month_AUGUST
    Definir month_name Como Texto;
    month_name = "AUGUST";
FinFuncion

Funcion month_name <- Month_SEPTEMBER
    Definir month_name Como Texto;
    month_name = "SEPTEMBER";
FinFuncion

Funcion month_name <- Month_OCTOBER
    Definir month_name Como Texto;
    month_name = "OCTOBER";
FinFuncion

Funcion month_name <- Month_NOVEMBER
    Definir month_name Como Texto;
    month_name = "NOVEMBER";
FinFuncion

Funcion month_name <- Month_DECEMBER
    Definir month_name Como Texto;
    month_name = "DECEMBER";
FinFuncion

Funcion month_name <- month_of(number_month)
    Definir month_name Como Texto;
    Segun number_month Hacer
        1:
            month_name = Month_JANUARY();
        2:
            month_name = Month_FEBRUARY();
        3:
            month_name = Month_MARCH();
        4:
            month_name = Month_APRIL();
        5:
            month_name = Month_MAY();
        6:
            month_name = Month_JUNE();
        7:
            month_name = Month_JULY();
        8:
            month_name = Month_AUGUST();
        9:
            month_name = Month_SEPTEMBER();
        10:
            month_name = Month_OCTOBER();
        11:
            month_name = Month_NOVEMBER();
        12:
            month_name = Month_DECEMBER();
        De Otro Modo:
            month_name = string_NULL();
    FinSegun
FinFuncion

Funcion value <- month_value(name_month)
    Definir value Como Entero;
    Segun name_month Hacer
        Month_JANUARY():
            value = 1;
        Month_FEBRUARY():
            value = 2;
        Month_MARCH():
            value = 3;
        Month_APRIL():
            value = 4;
        Month_MAY():
            value = 5;
        Month_JUNE():
            value = 6;
        Month_JULY():
            value = 7;
        Month_AUGUST():
            value = 8;
        Month_SEPTEMBER():
            value = 9;
        Month_OCTOBER():
            value = 10;
        Month_NOVEMBER():
            value = 11;
        Month_DECEMBER():
            value = 12;
        De Otro Modo:
            value = number_NULL();
    FinSegun
FinFuncion

Funcion day_name <- DayOfWeek_of(number_day)
    Definir day_name Como Texto;
    Segun number_day Hacer
        1:
            day_name = DayOfWeek_MONDAY();
        2:
            day_name = DayOfWeek_TUESDAY();
        3:
            day_name = DayOfWeek_WEDNESDAY();
        4:
            day_name = DayOfWeek_THURSDAY();
        5:
            day_name = DayOfWeek_FRIDAY();
        6:
            day_name = DayOfWeek_SATURDAY();
        7:
            day_name = DayOfWeek_SUNDAY();
        De Otro Modo:
            day_name = string_NULL();
    FinSegun
FinFuncion
///%%%%%[ LOCAL_DATE.............. ]%%%%%%%[   #LDA    ]%%%%%%%%%%%%%%%%%%%%
Funcion Date_String <- __private_localDate_getNowFormat
	Definir Date_String Como Texto;
	Date_String = string_fit(integer_toString(native_getLocal_date()), "00000000");
FinFuncion

Funcion current_date <- localDate_now
	Definir current_date, date_now_string, year_string, month_string, day_string Como Texto;
	Definir year, month, day Como Entero;
	date_now_string = __private_localDate_getNowFormat();
	year_string = string_substring(date_now_string, 0, 4);
	month_string = string_substring(date_now_string, 4, 6);
	day_string = string_substring(date_now_string, 6, 8);
	year = number_parseNumber(year_string);
	month = number_parseNumber(month_string);
	day = number_parseNumber(day_string);
	current_date = localDate_of(year, month, day);
FinFuncion

Funcion date_object <- localDate_of_monthName(year, MONTH_NAME, day)
	Definir date_object Como Texto;
	date_object = localDate_of(year, month_value(MONTH_NAME), day);
FinFuncion

Funcion date_object <- localDate_of(year, month, day)
	Definir date_object Como Texto;
	Si (temporal_isValidDate(year, month, day)) Entonces
		date_object = __private_localDate_forceOf(year, month, day);
	SiNo
		date_object = __private_localDate_ofDateNull();
		log_error_function("localDate_of(year, month, day)", "Date not valid");
	FinSi
FinFuncion

Funcion date_object <- __private_localDate_forceOf(year, month, day)
	Definir date_object Como Texto;
	date_object = collectionRouted_new(TEMPORAL_LOCALDATE(), TYPE_INT());
	date_object = __private_temporalDate_add(date_object, year, month, day);
FinFuncion

Funcion date_string <- localDate_toString(struct_date)
	Definir date_string, date_array Como Texto;
	Dimension date_array[3];
	date_array[0] = string_fit(collectionRouted_get_byString(struct_date, 0), "0000");
	date_array[1] = string_fit(collectionRouted_get_byString(struct_date, 1), "00");
	date_array[2] = string_fit(collectionRouted_get_byString(struct_date, 2), "00");
	date_string   = array_ofString_withSeparator(date_array, 3, TYPE_STRING(), "-");
FinFuncion

Funcion date_object <- __private_localDate_ofDateNull
	Definir date_object Como Texto;
	date_object = __private_localDate_forceOf(number_NULL(), number_NULL(), number_NULL());
FinFuncion

Funcion date_object <- __private_localDate_getDateUnixEpoch
	Definir date_object Como Texto;
	date_object = __private_localDate_forceOf(1970, 1, 1);
FinFuncion

Funcion year_int <- localDate_getYear(struct_date)
	Definir year_int Como Entero;
	year_int = collectionRouted_get_byType(struct_date, 0, TYPE_INT());
FinFuncion

Funcion month_int <- localDate_getMonthValue(struct_date)
	Definir month_int Como Entero;
	month_int = collectionRouted_get_byType(struct_date, 1, TYPE_INT());
FinFuncion

Funcion month_name <- localDate_getMonth(struct_date)
	Definir month_name Como Texto;
	month_name = month_of(localDate_getMonthValue(struct_date));
FinFuncion

Funcion day_int <- localDate_getDayOfMonth(struct_date)
	Definir day_int Como Entero;
	day_int = collectionRouted_get_byType(struct_date, 2, TYPE_INT());
FinFuncion

Funcion era_result <- localDate_getEra(struct_date)
    Definir era_result Como Texto;
    Si (localDate_getYear(struct_date) >= 1) Entonces
        era_result = "CE";
    SiNo
        era_result = "BCE";
    FinSi
FinFuncion

Funcion struct_date_result <- __private_localDate_AdvanceDays(struct_date, year, month, days)
    Definir struct_date_result Como Texto;
    Mientras days > localDate_lengthOfMonth(year, month) Hacer
        days = math_minus(days, localDate_lengthOfMonth(year, month));
        month = math_increment(month);
        Si month > 12 Entonces
            month = 1;
            year = math_increment(year);
        FinSi
    FinMientras
    struct_date_result = __private_temporalDate_set(struct_date, year, month, days);
FinFuncion

Funcion struct_date_result <- __private_localDate_RewindDays(struct_date, year, month, days)
    Definir struct_date_result Como Texto;
    Mientras days <= 0 Hacer
        month = math_decrement(month);
        Si month < 1 Entonces
            month = 12;
            year = math_decrement(year);
        FinSi
        days = math_sum(days, localDate_lengthOfMonth(year, month));
    FinMientras
    struct_date_result = __private_temporalDate_set(struct_date, year, month, days);
FinFuncion

Funcion date_object <- localDate_plusDays(struct_date, plus_days)
    Definir date_object Como Texto;
    Definir year, month, days Como Entero;
    year = localDate_getYear(struct_date);
    month = localDate_getMonthValue(struct_date);
    days = math_sum(localDate_getDayOfMonth(struct_date), plus_days);
    Si days > localDate_lengthOfMonth(year, month) Entonces
        date_object = __private_localDate_AdvanceDays(struct_date, year, month, days);
    SiNo 
		Si days <= 0 Entonces
			date_object = __private_localDate_RewindDays(struct_date, year, month, days);
		SiNo
			date_object = __private_temporalDate_set(struct_date, year, month, days);
		FinSi
	FinSi
FinFuncion

Funcion date_object <- localDate_plusWeeks(struct_date, plus_weeks)
	Definir date_object Como Texto;
	date_object = localDate_plusDays(struct_date, (plus_weeks * 7));
FinFuncion

Funcion date_object <- localDate_plusMonths(struct_date, plus_months)
	Definir date_object Como Texto;
    Definir month_base, relative_months, years_to_add, final_month Como Entero;
    Definir length_month, days_date Como Entero;
    month_base = math_decrement(localDate_getMonthValue(struct_date));
    relative_months = math_sum(month_base, plus_months);
    years_to_add = math_Round(math_div(relative_months, 12));
    final_month = math_increment(math_NormalizeCycle(relative_months, 12));
	date_object = localDate_withMonth(struct_date, final_month);
    date_object = localDate_plusYears(date_object, years_to_add);
FinFuncion

Funcion date_object <- localDate_plusYears(struct_date, plus_years)
	Definir date_object Como Texto;
    Definir total_years, current_year, current_month, current_day Como Entero;
    current_year = localDate_getYear(struct_date);
    total_years = math_sum(current_year, plus_years);
	current_month = localDate_getMonthValue(struct_date);
    current_day = localDate_getDayOfMonth(struct_date);
    date_object = localDate_withYear(struct_date, total_years);
    Si !temporal_isValidDayInMonthOfTheYear(total_years, current_month, current_day) Entonces
        date_object = localDate_withDayOfMonth(date_object, localDate_lengthOfMonth(total_years, current_month));
    FinSi
FinFuncion

Funcion date_object <- localDate_minusDays(struct_date, minus_days)
	Definir date_object Como Texto;
	date_object = localDate_plusDays(struct_date, math_negated(minus_days));
FinFuncion

Funcion date_object <- localDate_minusWeeks(struct_date, minus_weeks)
	Definir date_object Como Texto;
	date_object = localDate_plusWeeks(struct_date, math_negated(minus_weeks));
FinFuncion

Funcion date_object <- localDate_minusMonths(struct_date, minus_month)
	Definir date_object Como Texto;
	date_object = localDate_plusMonths(struct_date, math_negated(minus_month));
FinFuncion

Funcion date_object <- localDate_minusYears(struct_date, minus_years)
	Definir date_object Como Texto;
	date_object = localDate_plusYears(struct_date, math_negated(minus_years));
FinFuncion

Funcion days <- __private_localDate_getAccumulatedDays(month, isLeap)
    Definir days Como Entero;
    Segun month Hacer
        Caso 0:  days = 0;// Ene
        Caso 1:  days = 31;// Ene
        Caso 2:  days = 59;// Feb
        Caso 3:  days = 90;// Mar
        Caso 4:  days = 120;// Abr
        Caso 5:  days = 151;// May
        Caso 6:  days = 181;// Jun
        Caso 7:  days = 212;// Jul
        Caso 8:  days = 243;// Ago
        Caso 9:  days = 273;// Sep
        Caso 10: days = 304;// Oct
        Caso 11: days = 334;// Nov
        De Otro Modo: days = 365;// Dic
    FinSegun
    Si isLeap & (month > 1) Entonces
        days = math_increment(days);
    FinSi
FinFuncion

Funcion month_total <- __private_localDate_getMonthFromDays(year, days)
	Definir month_total, month Como Entero;
    month = 1;
	si days <= 0 Entonces
		month_total = 12;
		Mientras days <= 0 Hacer
			month = math_decrement(month);
			Si month < 1 Entonces
				month = 12;
				year = math_decrement(year);
			FinSi
			days = math_sum(days, localDate_lengthOfMonth(year, month));
			month_total = math_decrement(month_total);
		FinMientras
	SiNo
		month_total = 1;
		Mientras days > localDate_lengthOfMonth(year, month) Hacer
			days = math_minus(days, localDate_lengthOfMonth(year, month));
			month = math_increment(month);
			Si month > 12 Entonces
				month = 1;
				year = math_increment(year);
			FinSi
			month_total = math_increment(month_total);
		FinMientras
	FinSi
FinFuncion

Funcion Date <- localDate_ofDayOfYear(year, dayOfYear)
    Definir Date Como Texto;
    Definir month, day, length_year Como Entero;
    Definir isLeap Como Logico;
    isLeap      = localDate_isLeapYear(year);
	length_year = if_else(localDate_isLeapYear(year), 366, 365);
	si dayOfYear <= length_year Entonces
		month = __private_localDate_getMonthFromDays(year, dayOfYear);
		day   = math_minus(dayOfYear, __private_localDate_getAccumulatedDays(math_decrement(month), isLeap));
		Date  = localDate_of(year, month, day);
	SiNo
		Date = __private_localDate_ofDateNull();
		log_error_function("localDate_ofDayOfYear(year, dayOfYear)", "(dayOfYear > lengthOfYear) no valid ");
	FinSi
FinFuncion

Funcion date_with <- localDate_withMonth(struct_date, month_int)
	Definir date_with Como Texto;
	si temporal_isValidMonth(month_int) Entonces
		date_with = collectionRouted_set(struct_date, 1, month_int);
	SiNo
		date_with = __private_temporalDate_setDateNull(struct_date);
		log_error_function("localDate_withMonth(struct_date, month_int)"," month no is valid");
	FinSi
FinFuncion

Funcion date_with <- localDate_withDayOfYear(struct_date, dayOfYear)
	Definir date_with Como Texto;
	Definir year, month, day Como Entero;
	year = localDate_getYear(struct_date);
	month = __private_localDate_getMonthFromDays(year, dayOfYear);
	day = math_minus(dayOfYear, __private_localDate_getAccumulatedDays(math_decrement(month), localDate_isLeapYear(year)));
	si temporal_isValidDayInMonthOfTheYear(year, month, day) Entonces
		date_with = localDate_withDayOfMonth(struct_date, day);
		date_with = localDate_withMonth(struct_date, month);
	SiNo
		date_with = __private_temporalDate_setDateNull(struct_date);
		log_error_function("localDate_withDayOfYear(struct_date, day_int)"," day no is valid");
	FinSi
FinFuncion

Funcion date_with <- localDate_withDayOfMonth(struct_date, day_int)
	Definir date_with Como Texto;
	Definir year, month Como Entero;
	year = localDate_getYear(struct_date);
	month = localDate_getMonthValue(struct_date);
	si temporal_isValidDayInMonthOfTheYear(year, month, day_int) Entonces
		date_with = collectionRouted_set(struct_date, 2, day_int);
	SiNo
		date_with = __private_temporalDate_setDateNull(struct_date);
		log_error_function("localDate_withDayOfYear(struct_date, day_int)"," day no is valid");
	FinSi
FinFuncion

Funcion date_with <- localDate_withYear(struct_date, year_int)
	Definir date_with Como Texto;
	si temporal_isValidYear(year_int) Entonces
		date_with = collectionRouted_set(struct_date, 0, year_int);
	SiNo
		date_with = __private_temporalDate_setDateNull(struct_date);
		log_error_function("localDate_withYear(struct_date, year_int)","year no is valid");
	FinSi
FinFuncion

Funcion date_object <- localDate_with(struct_date, new_value, temporal_unit)
	Definir date_object Como Texto;
	Segun temporal_unit Hacer
		chronoUnit_YEARS():
			date_object = localDate_withYear(struct_date, new_value);
		chronoUnit_MONTHS():
			date_object = localDate_withMonth(struct_date, new_value);
		chronoUnit_DAYS():
			date_object = localDate_withDayOfMonth(struct_date, new_value);
		De Otro Modo:
			date_with = __private_temporalDate_setDateNull(struct_date);
			log_error_function("localDate_with(struct_date, new_value, temporal_unit)", "Unsupported or invalid temporal unit for field replacement");
	FinSegun
FinFuncion

Funcion date_object <- localDate_plus(struct_date, num_plus, temporal_unit)
	Definir date_object Como Texto;
	Segun temporal_unit Hacer
		chronoUnit_YEARS():
			date_object = localDate_plusYears(struct_date, num_plus);
		chronoUnit_MONTHS():
			date_object = localDate_plusMonths(struct_date, num_plus);
		chronoUnit_WEEKS():
			date_object = localDate_plusWeeks(struct_date, num_plus);
		chronoUnit_DAYS():
			date_object = localDate_plusDays(struct_date, num_plus);
		De Otro Modo:
			date_with = __private_temporalDate_setDateNull(struct_date);
			log_error_function("localDate_plus(struct_date, num_plus, temporal_unit)", "invalid temporal unit");
	FinSegun
FinFuncion

Funcion date_object <- localDate_minus(struct_date, num_minus, temporal_unit)
	Definir date_object Como Texto;
	Segun temporal_unit Hacer
		chronoUnit_YEARS():
			date_object = localDate_minusYears(struct_date, num_minus);
		chronoUnit_MONTHS():
			date_object = localDate_minusMonths(struct_date, num_minus);
		chronoUnit_WEEKS():
			date_object = localDate_minusWeeks(struct_date, num_minus);
		chronoUnit_DAYS():
			date_object = localDate_minusDays(struct_date, num_minus);
		De Otro Modo:
			date_with = __private_temporalDate_setDateNull(struct_date);
			log_error_function("localDate_minus(struct_date, num_minus, temporal_unit)", "invalid temporal unit");
	FinSegun
FinFuncion

// Derivado de la f?rmula de Zeller para calculo de dias acumulados.
// Formula: floor(30.6 * month - 29.4 - leap_factor) + day;
// leap_factor: 2 si es bisiesto, 3 si no lo es.
// Ajuste de inicio:
// - Si 1 de Enero = 0: leap_factor = 0 para Enero/Febrero.
// - Si 1 de Enero = 1: leap_factor = 0 para Febrero, 1 para Enero.
Funcion numDay <- localDate_getDayOfYear(year, month, day)
	Definir numDay, leap_factor Como Entero;
	si temporal_isValidDate(year, month, day) Entonces
		leap_factor = if_else(localDate_isLeapYear(year), 2, 3);
		leap_factor = if_else(month == 1, 1, leap_factor);
		leap_factor = if_else(month == 2, 0, leap_factor);
		numDay = math_floor(30.6 * month - 29.4 - leap_factor) + day;
	SiNo
		numDay = number_NULL();
		log_error_function("localDate_getDayOfYear(year, month, day)","date no is valid");
	FinSi
FinFuncion

Funcion day_name <- localDate_getDayOfTheWeek(struct_date)
	Definir day_name Como Texto;
	day_name = DayOfWeek_of(localDate_getDayOfTheWeek_Value(struct_date));
FinFuncion

Funcion day_value <- localDate_getDayOfTheWeek_Value(struct_date)
	Definir day_value, year, month, day Como Entero;
	year = localDate_getYear(struct_date);
	month = localDate_getMonthValue(struct_date);
	day = localDate_getDayOfMonth(struct_date);
	day_value = __private_localDate_getDayOfTheWeek_Value(year, month, day);
FinFuncion

Funcion numDay <- __private_localDate_getDayOfTheWeek_Value(year, month, day)
    Definir numDay, yearAdjusted, monthTable, y_total Como Entero;
    Dimension monthTable[12];
    monthTable[0]=0;monthTable[1]=3;monthTable[2]=2;monthTable[3]=5;monthTable[4]=0;monthTable[5]=3;
    monthTable[6]=5;monthTable[7]=1;monthTable[8]=4;monthTable[9]=6;monthTable[10]=2;monthTable[11]=4;
    yearAdjusted = if_else(month < 3, year - 1, year);
	y_total = yearAdjusted + math_floor(yearAdjusted / 4) - math_floor(yearAdjusted / 100) + math_floor(yearAdjusted / 400);
    numDay = math_module(y_total + monthTable[month - 1] + day, 7);
	si numDay < 1 Entonces
		numDay = 7;
	FinSi
FinFuncion
//verificar si cuando aumento anio es bisiesto y ajustar mes en ese caso
Funcion struct_dateTime <- localDate_atStartOfDay(struct_date)
	Definir struct_dateTime Como Texto;
	struct_dateTime = __private_localDate_atTime_fromSeconds(struct_date, 0);
FinFuncion

Funcion struct_dateTime <- localDate_atTime_fromLocalTime(struct_date, struct_time)
	Definir struct_dateTime Como Texto;
	Definir total_time Como Entero;
	total_time = localTime_getSecondsOfDay(struct_time);
	struct_dateTime = __private_localDate_atTime_fromSeconds(struct_date, total_time);
FinFuncion

Funcion struct_dateTime <- localDate_atTime_HourMinute(struct_date, hour, minute)
	Definir struct_dateTime Como Texto;
	struct_dateTime = localDate_atTime(struct_date, hour, minute, 0);
FinFuncion

Funcion struct_dateTime <- localDate_atTime(struct_date, hour, minute, second)
	Definir struct_dateTime Como Texto;
	Definir hour_second, minute_second, total_second Como Entero;
	hour_second = duration_hoursToSeconds(hour);
	minute_second = duration_minutesToSeconds(minute);
	total_second = math_sum(hour_second, minute_second);
	total_second = math_sum(total_second, second);
	struct_dateTime = __private_localDate_atTime_fromSeconds(struct_date, total_second);
FinFuncion

Funcion struct_dateTime <- __private_localDate_atTime_fromSeconds(struct_date, seconds)
	Definir struct_dateTime Como Texto;
	struct_dateTime = collectionRouted_addLast(struct_date, seconds);
	struct_dateTime = collection_setName(struct_dateTime, TEMPORAL_LOCALDATETIME());
FinFuncion

Funcion boolean <- localDate_isLeapYear(year)
	Definir boolean Como Logico;
	boolean = (number_isEquals(math_module(year, 4), 0) & !number_isEquals(math_module(year, 100), 0)) | number_isEquals(math_module(year, 400), 0);
FinFuncion

Funcion lengthOfYear <- localDate_lengthOfYear(struct_date)
	Definir lengthOfYear, year_date Como Entero;
	year_date = localDate_getYear(struct_date);
	lengthOfYear = if_else(localDate_isLeapYear(year_date), 366, 365);
FinFuncion

Funcion days <- localDate_lengthOfMonth(year, month)
	Definir days, type_month Como Entero;
	type_month = -1;
	
	si (month == 2) Entonces
		type_month = 0;
	FinSi
	
	si (month == 4 | month == 6 | month == 9 | month == 11) Entonces
		type_month = 1;
	FinSi
	
	segun type_month Hacer
		caso 0: 
			days = 28;
			Si localDate_isLeapYear(year) Entonces
				days = math_increment(days);
			FinSi
		caso 1: 
			days = 30;
		De Otro Modo:
			days = 31;
	FinSegun
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------[#]
Funcion isBefore <- localDate_isBefore(struct_LocalDate, struct_LocalDate_match)
	Definir isBefore Como Logico;
	isBefore = __private_localDate_CompareTo(struct_LocalDate, struct_LocalDate_match) < 0;
FinFuncion

Funcion isAfter <- localDate_isAfter(struct_LocalDate, struct_LocalDate_match)
	Definir isAfter Como Logico;
	isAfter = __private_localDate_CompareTo(struct_LocalDate, struct_LocalDate_match) > 0;
FinFuncion

Funcion isEqual <- localDate_isEqual(struct_LocalDate, struct_LocalDate_match)
	Definir isEqual Como Logico;
	isEqual = __private_localDate_CompareTo(struct_LocalDate, struct_LocalDate_match) == 0;
FinFuncion

Funcion int_result <- __private_localDate_CompareTo(struct_LocalDate, struct_LocalDate_match)
	Definir int_result Como Entero;
	Definir Date_Org, Date_Match Como Real;
	Date_Org = localDate_toEpochDay(struct_LocalDate);
	Date_Match = localDate_toEpochDay(struct_LocalDate_match);
	int_result = int_CompareTo(Date_Org, Date_Match);
FinFuncion
//----[ UNTIL ]------------------------------------------------------------------------[#]
Funcion total <- localDate_until_Years(struct_date_start, struct_date_end)
    Definir total, year_start, year_end Como Entero;
	Definir temp_date Como Texto;
    year_start = localDate_getYear(struct_date_start);
    year_end = localDate_getYear(struct_date_end);
    total = year_end - year_start;
    temp_date = localDate_withYear(struct_date_start, year_end);
    Si localDate_isBefore(struct_date_end, temp_date) Entonces
        total = math_decrement(total);
    FinSi
FinFuncion

Funcion total <- localDate_until_Months(struct_date_start, struct_date_end)
    Definir total, months_diff, years_diff Como Entero;
    years_diff = math_minus(localDate_getYear(struct_date_end), localDate_getYear(struct_date_start));
    months_diff = math_minus(localDate_getMonthValue(struct_date_end), localDate_getMonthValue(struct_date_start));
    total = math_sum((years_diff * 12) , months_diff);
    Si localDate_getDayOfMonth(struct_date_end) < localDate_getDayOfMonth(struct_date_start) Entonces
        total = math_decrement(total);
    FinSi
FinFuncion

Funcion total <- localDate_until_Days(struct_date_start, struct_date_end)
    Definir total, epoch_start, epoch_end Como Entero;
    epoch_start = localDate_toEpochDay(struct_date_start);
	escribir "";
	escribir epoch_start ;//19416
    epoch_end   = localDate_toEpochDay(struct_date_end);
	escribir epoch_end ;//20254
    total = math_minus(epoch_end, epoch_start);
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------[#]
Funcion epoch_days_result <- localDate_toEpochDay(struct_date)
    Definir epoch_days_result Como Entero;
    Definir year, month, day Como Entero;
    Definir accumulated_days, total_since_zero Como Real;
    Definir isLeap Como Logico;
    year              = localDate_getYear(struct_date);
    month             = localDate_getMonthValue(struct_date);
    day               = localDate_getDayOfMonth(struct_date);
    isLeap            = localDate_isLeapYear(year);
    total_since_zero  = __private_localDate_getDaysFromYears(year);
    accumulated_days  = __private_localDate_getAccumulatedDays(math_decrement(month), isLeap);
    total_since_zero  = math_sum(total_since_zero, accumulated_days);
    total_since_zero  = math_sum(total_since_zero, day);
    epoch_days_result = math_minus(total_since_zero, __private_localDate_getEpochOffset());
FinFuncion

Funcion constant_value <- __private_localDate_getEpochOffset
	Definir constant_value Como Entero;
	constant_value = 719528;
FinFuncion

Funcion total_days_years <- __private_localDate_getDaysFromYears(year_int)
    Definir total_days_years Como Real;
    Definir previous_year, leap_days Como Entero;
    previous_year = math_decrement(year_int);
    total_days_years = previous_year * 365;
    leap_days = math_floor(previous_year / 4);
    leap_days = math_minus(leap_days, math_floor(previous_year / 100));
    leap_days = math_sum(leap_days, math_floor(previous_year / 400));
    total_days_years = math_sum(total_days_years, leap_days);
FinFuncion
// =========================================================================
// PATTERS DateTimeFormatter (Java 8+)
// =========================================================================
// --- FECHAS (Dates) ---
// yyyy  : A?o completo (Ej: 2026)
// yy    : A?o corto (Ej: 26)
// MMMM  : month nombre completo (Ej: Marzo)
// MMM   : month abreviado (Ej: Mar)
// MM    : month n?mero (01-12) -> ?M may?scula siempre para month!
// d     : D?a del month (1-31)
// D     : D?a del a?o (1-366)
// EEEE  : Nombre del d?a completo (Ej: Lunes)
// E     : Nombre del d?a abreviado (Ej: Lun)
// e     : N?mero de d?a de la semana (1=Lunes, 7=Domingo)
// w     : Semana del a?o (1-53)
// W     : Semana del month (1-5)
// --- TIEMPO (Time) ---
// a     : Marcador AM / PM (Cambio de formato)
// H     : Hora militar / formato 24h (00-23)
// h     : Hora est?ndar / formato 12h (01-12) -> Usar con 'a'
// m     : Minutos (00-59) -> ?m min?scula siempre para minutos!
// s     : Segundos (00-59)
// S     : Milisegundos / Fracciones de segundo (Ej: SSS)
// --- LITERALES / Texto ---
// ' '   : Comillas simples para escapar Texto (Ej: 'de las')
// =========================================================================
// NOTAS DE SEGURIDAD:
// 1. May?sculas importan: M (month) != m (minuto) | H (24h) != h (12h).
// 2. Coherencia: No mezcles 'H' (24h) con 'a' (AM/PM), Java lanzar? error.
// 3. Parsing: Si el Texto no coincide EXACTO con el patr?n, lanza DateTimeParseException.
// =========================================================================
//aun sigue incompleta hasta hacer el modulo regex no usar
Funcion Date <- localDate_format(text)
	Definir Date, dateParts, DateTemp Como Texto;
	Definir index Como Entero;
	Dimension dateParts(3);
	
	dateParts[0] = string_substring(localDate_now, 0, 4);
	dateParts[1] = string_substring(localDate_now, 4, 6);
	dateParts[2] = string_substring(localDate_now, 6, 8);
	
	Si string_Contains(text, "Y") Entonces
		index = string_indexOf(text, "Y");
		Date = string_insert(string_remove(text, index, index+1), dateParts[0], index);
	FinSi
	
	Si string_Contains(text, "M") Entonces
		index = string_indexOf(Date, "M");
		Date = string_insert(string_remove(Date, index, index+1), dateParts[1], index);
	FinSi
FinFuncion
///%%%%%[ LOCAL_TIME.............. ]%%%%%%%[   #LTI    ]%%%%%%%%%%%%%%%%%%%%
//----[ PRIVATE_TIME ]----------------------------------------------------[#]
//in pseint == 1223 (4) \ 06:12:23  pseint == 61223 (5)\ 12:12:23 pseint == 121223 (6)
Funcion time_value_String <- __private_localTime_getNowFormat
	Definir time_value_String Como Texto;
	time_value_String = string_fit(native_number_toString(native_getLocal_time()), "000000");
FinFuncion
//----[ INIT ]------------------------------------------------------------------------[#]
Funcion result_localTime <- localTime_now
	Definir result_localTime, TimeNow_String Como Texto;
	Definir hours, minutes, seconds Como Real;
	TimeNow_String   = __private_localTime_getNowFormat();
	hours            = number_parseNumber(string_substring(TimeNow_String, 0, 2));
	minutes          = number_parseNumber(string_substring(TimeNow_String, 2, 4));
	seconds          = number_parseNumber(string_substring(TimeNow_String, 4, 6));
	result_localTime = localTime_of(hours, minutes, seconds);
FinFuncion

Funcion result_localTime <- localTime_of_HourMinute(hours, minutes)
	Definir result_localTime Como Texto;
	result_localTime = localTime_of(hours, minutes, 0);
FinFuncion

Funcion result_localTime <- localTime_of(hours, minutes, seconds)
	Definir result_localTime Como Texto;
	Definir seconds_hours, seconds_minutes, seconds_total Como Real;
	si temporal_isValid(hours, minutes, seconds) Entonces
		seconds_hours    = duration_TemporalUnitToSeconds(hours, chronoUnit_HOURS());
		seconds_minutes  = duration_TemporalUnitToSeconds(minutes, chronoUnit_MINUTES());
		seconds_total    = math_sum(seconds_hours, math_sum(seconds_minutes, seconds));
		result_localTime =  localTime_ofSecondOfDays(seconds_total);
	SiNo
		log_error_function("localTime_of(hh,mm,ss)","The given time is not valid [valid:: 00:00:00 - 23:59:59]");
		result_localTime =  __private_localTime_ofNull();
	FinSi
FinFuncion

Funcion result_localTime <- localTime_ofSecondOfDays(seconds)
	Definir result_localTime Como Texto;
	result_localTime = collectionRouted_init(TEMPORAL_LOCALTIME(), TYPE_INT(), seconds);
FinFuncion

Funcion result_localTime <- __private_localTime_ofNull
	Definir result_localTime Como Texto;
	result_localTime = localTime_ofSecondOfDays(number_NULL());
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------[#]
Funcion isBefore <- localTime_isBefore(struct_LocalTime, struct_LocalTime_match)
	Definir isBefore Como Logico;
	isBefore = __private_localTime_CompareTo(struct_LocalTime, struct_LocalTime_match) < 0;
FinFuncion

Funcion isAfter <- localTime_isAfter(struct_LocalTime, struct_LocalTime_match)
	Definir isAfter Como Logico;
	isAfter = __private_localTime_CompareTo(struct_LocalTime, struct_LocalTime_match) > 0;
FinFuncion

Funcion isEqual <- localTime_isEquals(struct_LocalTime, struct_LocalTime_match)
	Definir isEqual Como Logico;
	isEqual = __private_localTime_CompareTo(struct_LocalTime, struct_LocalTime_match) == 0;
FinFuncion

Funcion int_result <- __private_localTime_CompareTo(struct_LocalTime, struct_LocalTime_match)
	Definir int_result Como Entero;
	Definir Time_Org, Time_Match Como Real;
	Time_Org = localTime_getSeconds(struct_LocalTime);
	Time_Match = localTime_getSeconds(struct_LocalTime_match);
	int_result = int_CompareTo(Time_Org, Time_Match);
FinFuncion
//----[ GETTERS ]----------------------------------------------------[#]
Funcion duration_ofUnit <- localTime_getSecondsOfDay(struct_LocalTime)
	Definir duration_ofUnit Como Real;
	duration_ofUnit = collectionRouted_getLast_byType(struct_LocalTime, TYPE_INT());
FinFuncion

Funcion second_ofUnit <- localTime_getHours(struct_LocalTime)
	Definir second_ofUnit Como Real;
	second_ofUnit = duration_secondsToTemporalUnitPart(localTime_getSecondsofDay(struct_LocalTime), chronoUnit_HOURS());
FinFuncion

Funcion second_ofUnit <- localTime_getMinutes(struct_LocalTime)
	Definir second_ofUnit Como Real;
	second_ofUnit = duration_secondsToTemporalUnitPart(localTime_getSecondsofDay(struct_LocalTime), chronoUnit_MINUTES());
FinFuncion

Funcion second_ofUnit <- localTime_getSeconds(struct_LocalTime)
	Definir second_ofUnit Como Real;
	second_ofUnit = duration_secondsToTemporalUnitPart(localTime_getSecondsofDay(struct_LocalTime), chronoUnit_SECONDS());
FinFuncion
//-----[ UTILITIES ]----------------------------------------------------[#]
Funcion seconds_adjusted <- localTime_NormalizeSeconds(seconds_total)
    Definir seconds_adjusted Como Real;
	seconds_adjusted = math_NormalizeCycle(seconds_total, 86400);
FinFuncion

Funcion localTime_Correction <- localTime_cicleCorrector(struct_localTime)
    Definir localTime_Correction Como Texto;
    Definir LocalTime_seconds Como Real;
	LocalTime_seconds    = localTime_NormalizeSeconds(temporal_getSeconds(struct_localTime));
	localTime_Correction = __private_temporal_setSecondOfDays(struct_localTime, LocalTime_seconds);
FinFuncion

Funcion Time_ToString <- localTime_ToString(struct_localTime)
	Definir Time_ToString, hours, minutes, seconds Como Texto;
	Definir TimeLocal Como Real;
	TimeLocal = temporal_getSeconds(struct_localTime);
	hours 	  = native_number_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_HOURS()));
	minutes   = native_number_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_MINUTES()));
	seconds   = native_number_toString(duration_secondsToTemporalUnitPart(TimeLocal, chronoUnit_SECONDS()));
	hours 	  = string_fit(hours, "00");
	minutes   = string_fit(minutes, "00");
	seconds   = string_fit(seconds, "00");
	Time_ToString = string_append_withSeparator(hours, minutes, ":");
	Time_ToString = string_append_withSeparator(Time_ToString, seconds, ":");
FinFuncion
//-----[ PLUS ]----------------------------------------------------------------------[#]
Funcion struct_time <- localTime_PlusHours(struct_localTime, num_increment)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusUnitTemporal(struct_localTime, num_increment, chronoUnit_HOURS());
FinFuncion

Funcion struct_time <- localTime_PlusMinutes(struct_localTime, num_increment)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusUnitTemporal(struct_localTime, num_increment, chronoUnit_MINUTES());
FinFuncion

Funcion struct_time <- localTime_PlusSeconds(struct_localTime, num_increment)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusUnitTemporal(struct_localTime, num_increment, chronoUnit_SECONDS());
FinFuncion

Funcion struct_time <- localTime_PlusUnitTemporal(struct_localTime, num_increment, type_temporal)
    Definir struct_time Como Texto;
    struct_time = temporal_PlusUnitTemporal(struct_localTime, num_increment, type_temporal);
	struct_time = localTime_cicleCorrector(struct_time);
FinFuncion
//-----[ MINUS ]----------------------------------------------------[#]
Funcion struct_time <- localTime_MinusHours(struct_localTime, num_decrement)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusHours(struct_localTime, math_negated(num_decrement));
FinFuncion

Funcion struct_time <- localTime_MinusMinutes(struct_localTime, num_decrement)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusMinutes(struct_localTime, math_negated(num_decrement));
FinFuncion

Funcion struct_time <- localTime_MinusSeconds(struct_localTime, num_decrement)
    Definir struct_time Como Texto;
    struct_time = localTime_PlusSeconds(struct_localTime, math_negated(num_decrement));
FinFuncion
//-----[ WITH ]----------------------------------------------------------------------[#]
Funcion struct_time <- localTime_withHour(struct_localTime, num_define)
	Definir struct_time Como Texto;
	struct_time = localTime_with(struct_localTime, num_define, chronoUnit_HOURS());
FinFuncion

Funcion struct_time <- localTime_withMinute(struct_localTime, num_define)
	Definir struct_time Como Texto;
	struct_time = localTime_with(struct_localTime, num_define, chronoUnit_MINUTES());
FinFuncion

Funcion struct_time <- localTime_withSecond(struct_localTime, num_define)
	Definir struct_time Como Texto;
	struct_time = localTime_with(struct_localTime, num_define, chronoUnit_SECONDS());
FinFuncion

Funcion struct_time <- localTime_with(struct_localTime, num_define, type_temporal)
	Definir struct_time Como Texto;
	struct_time = temporal_with(struct_localTime, num_define, type_temporal);
FinFuncion
//-----[ TRUNCATE ]----------------------------------------------------[#]
Funcion struct_time <- localTime_truncatedToHours(struct_localTime)
    Definir struct_time Como Texto;
    struct_time = localTime_truncatedTo(struct_localTime, chronoUnit_HOURS());
FinFuncion

Funcion struct_time <- localTime_truncatedToMinutes(struct_localTime)
    Definir struct_time Como Texto;
    struct_time = localTime_truncatedTo(struct_localTime, chronoUnit_MINUTES());
FinFuncion

Funcion struct_time <- localTime_truncatedTo(struct_localTime, type_temporal)
	Definir struct_time Como Texto;
    Definir time_now, time_part, time_truncate Como Real;
    time_now = temporal_getSeconds(struct_localTime);
    Segun type_temporal Hacer
        Caso chronoUnit_HOURS():
			time_part = math_module(time_now, chronoUnit_getDuration(chronoUnit_HOURS()));
        Caso chronoUnit_MINUTES():
			time_part = math_module(time_now, chronoUnit_getDuration(chronoUnit_MINUTES()));
    FinSegun
	time_truncate = math_minus(time_now, time_part);
    struct_time = __private_temporal_setSecondOfDays(struct_localTime, time_truncate );
FinFuncion
///%%%%%[ LOCAL_DATE_TIME......... ]%%%%%%%[   #LDT    ]%%%%%%%%%%%%%%%%%%%%
Funcion string_dateTime <- localDateTime_toString(localDateTime)
	Definir string_dateTime, string_date, string_time Como Texto;
	string_date = localDate_ToString(localDateTime);
	string_time = localTime_ToString(localDateTime);
	string_dateTime = string_append_withSeparator(string_date, string_time," ");
FinFuncion
//----[ OF_TEMPORAL ]----------------------------------------------------[#]
Funcion struct_dateTime <- localDateTime_of_monthName_hourMinute(year, MONTH_NAME, dayOfMonth, hour, minute)
	Definir struct_dateTime Como Texto;
	struct_dateTime = localDateTime_of_monthName(year, MONTH_NAME, dayOfMonth, hour, minute, 0);
FinFuncion

Funcion struct_dateTime <- localDateTime_of_monthName(year, MONTH_NAME, dayOfMonth, hour, minute, second)
	Definir struct_dateTime Como Texto;
	struct_dateTime = localDateTime_of(year, month_value(MONTH_NAME), dayOfMonth, hour, minute, second);
FinFuncion
Funcion struct_dateTime <- localDateTime_of_hourMinute(year, month, dayOfMonth, hour, minute)
	Definir struct_dateTime Como Texto;
	struct_dateTime = localDateTime_of(year, month, dayOfMonth, hour, minute, 0);
FinFuncion

Funcion struct_dateTime <- localDateTime_of(year, month, dayOfMonth, hour, minute, second)
	Definir struct_dateTime, struct_date Como Texto;
	struct_date = localDate_of(year, month, dayOfMonth);
	struct_dateTime = localDate_atTime(struct_date, hour, minute, second);
FinFuncion

Funcion struct_dateTime <- localDateTime_of_struct_DateAndTime(localDate, localTime)
	Definir struct_dateTime Como Texto;
	struct_dateTime = localDate_atTime_fromLocalTime(localDate, localTime);
FinFuncion
//-----[ PLUS ]----------------------------------------------------------------------[#]
Funcion result_dateTime <- localDateTime_plusYears(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_plusYears(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusMonths(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_plusMonths(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusWeeks(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_plusWeeks(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusDays(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_plusDays(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusHours(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_plusHours(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusMinutes(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_plusMinutes(struct_dateTime, unit_plus);
FinFuncion

Funcion result_dateTime <- localDateTime_plusSeconds(struct_dateTime, unit_plus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_plusSeconds(struct_dateTime, unit_plus);
FinFuncion
//-----[ MINUS ]----------------------------------------------------[#]
Funcion result_dateTime <- localDateTime_minusYears(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_minusYears(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusMonths(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_minusMonths(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusWeeks(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_minusWeeks(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusDays(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_minusDays(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusHours(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_minusHours(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusMinutes(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_minusMinutes(struct_dateTime, unit_minus);
FinFuncion

Funcion result_dateTime <- localDateTime_minusSeconds(struct_dateTime, unit_minus)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_minusSeconds(struct_dateTime, unit_minus);
FinFuncion
//-----[ WITH ]----------------------------------------------------------------------[#]
Funcion result_dateTime <- localDateTime_withYear(struct_dateTime, year)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_withYear(struct_dateTime, year);
FinFuncion

Funcion result_dateTime <- localDateTime_withMonth(struct_dateTime, month)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_withMonth(struct_dateTime, month);
FinFuncion

Funcion result_dateTime <- localDateTime_withDayOfMonth(struct_dateTime, dayOfMonth)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_withDayOfMonth(struct_dateTime, dayOfMonth);
FinFuncion

Funcion result_dateTime <- localDateTime_withDayOfYear(struct_dateTime, dayOfYear)
	Definir result_dateTime Como Texto;
	result_dateTime = localDate_withDayOfYear(struct_dateTime, dayOfYear);
FinFuncion

Funcion result_dateTime <- localDateTime_withHour(struct_dateTime, hour)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_withHour(struct_dateTime, hour);
FinFuncion

Funcion result_dateTime <- localDateTime_withMinute(struct_dateTime, minute)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_withMinute(struct_dateTime, minute);
FinFuncion

Funcion result_dateTime <- localDateTime_withSecond(struct_dateTime, second)
	Definir result_dateTime Como Texto;
	result_dateTime = localTime_withSecond(struct_dateTime, second);
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------[#]
Funcion isBefore <- localDateTime_isBefore(struct_dt1, struct_dt2)
    Definir isBefore Como Logico;
    isBefore = __private_localDateTime_CompareTo(struct_dt1, struct_dt2) < 0;
FinFuncion

Funcion isAfter <- localDateTime_isAfter(struct_dt1, struct_dt2)
    Definir isAfter Como Logico;
    isAfter = __private_localDateTime_CompareTo(struct_dt1, struct_dt2) > 0;
FinFuncion

Funcion isEqual <- localDateTime_isEqual(struct_dt1, struct_dt2)
    Definir isEqual Como Logico;
    isEqual = __private_localDateTime_CompareTo(struct_dt1, struct_dt2) == 0;
FinFuncion

Funcion int_result <- __private_localDateTime_CompareTo(struct_dt1, struct_dt2)
    Definir int_result Como Entero;
    int_result = __private_localDate_CompareTo(struct_dt1, struct_dt2);
    Si int_result == 0 Entonces
        int_result = __private_localTime_CompareTo(struct_dt1, struct_dt2);
    FinSi
FinFuncion
//-----[ TRUNCATE ]----------------------------------------------------[#]
Funcion result_dateTime <- localDateTime_truncatedToHours(struct_dateTime)
    Definir result_dateTime Como Texto;
    result_dateTime = localTime_truncatedToHours(struct_dateTime);
FinFuncion

Funcion result_dateTime <- localDateTime_truncatedToMinutes(struct_dateTime)
    Definir result_dateTime Como Texto;
    result_dateTime = localTime_truncatedToMinutes(struct_dateTime);
FinFuncion
//----[ EXTRACTORS ]----------------------------------------------------[#]	
Funcion struct_date <- localDateTime_toLocalDate(struct_dateTime)
	Definir struct_date Como Texto;
	struct_date = localDate_of(localDate_getYear(struct_dateTime), localDate_getMonthValue(struct_dateTime), localDate_getDayOfMonth(struct_dateTime));
FinFuncion

Funcion struct_time <- localDateTime_toLocalTime(struct_dateTime)
    Definir struct_time Como Texto;
    struct_time = localTime_ofSecondOfDays(localTime_getSecondsOfDay(struct_dateTime));
FinFuncion
//----[ GETTERS ]----------------------------------------------------[#]
Funcion year <- localDateTime_getYear(struct_dateTime)
    Definir year Como Entero;
    year = localDate_getYear(struct_dateTime);
FinFuncion

Funcion month <- localDateTime_getMonthValue(struct_dateTime)
    Definir month Como Entero;
    month = localDate_getMonthValue(struct_dateTime);
FinFuncion

Funcion day <- localDateTime_getDayOfMonth(struct_dateTime)
    Definir day Como Entero;
    day = localDate_getDayOfMonth(struct_dateTime);
FinFuncion

Funcion dayYear <- localDateTime_getDayOfYear(struct_dateTime)
    Definir dayYear Como Entero;
    dayYear = localDate_getDayOfYear(localDate_getYear(struct_dateTime), localDate_getMonthValue(struct_dateTime), localDate_getDayOfMonth(struct_dateTime));
FinFuncion

Funcion hour <- localDateTime_getHour(struct_dateTime)
    Definir hour Como Entero;
    hour = localTime_getHours(struct_dateTime);
FinFuncion

Funcion minute <- localDateTime_getMinute(struct_dateTime)
    Definir minute Como Entero;
    minute = localTime_getMinutes(struct_dateTime);
FinFuncion

Funcion second <- localDateTime_getSecond(struct_dateTime)
    Definir second Como Entero;
    second = localTime_getSeconds(struct_dateTime);
FinFuncion

Funcion dayName <- localDateTime_getDayOfWeek(struct_dateTime)
    Definir dayName Como Texto;
    dayName = localDate_getDayOfTheWeek(struct_dateTime);
FinFuncion

Funcion era <- localDateTime_getEra(struct_dateTime)
    Definir era Como Texto;
    era = localDate_getEra(struct_dateTime);
FinFuncion
///%%%%%[ DURATION................ ]%%%%%%%[   #DUR    ]%%%%%%%%%%%%%%%%%%%%
//parsed ISO:8601 "PT1H15M30.5S" y TruncateTo segun el tipo
//----[ GETTERS ]----------------------------------------------------[#]
Funcion duration_ofUnit <- duration_ofDays(number_Units)
	Definir duration_ofUnit Como Texto;
	duration_ofUnit = duration_of(number_Units, chronoUnit_DAYS());
FinFuncion

Funcion duration_ofUnit <- duration_ofHours(number_Units)
	Definir duration_ofUnit Como Texto;
	duration_ofUnit = duration_of(number_Units, chronoUnit_HOURS());
FinFuncion

Funcion duration_ofUnit <- duration_ofMinutes(number_Units)
	Definir duration_ofUnit Como Texto;
	duration_ofUnit = duration_of(number_Units, chronoUnit_MINUTES());
FinFuncion

Funcion duration_ofUnit <- duration_ofSeconds(number_Units)
	Definir duration_ofUnit Como Texto;
	duration_ofUnit = duration_of(number_Units, chronoUnit_SECONDS());
FinFuncion

Funcion duration_ofUnit <- duration_of(number_Units, Temporal_Type)
	Definir duration_ofUnit Como Texto;
	Definir second_duration Como Entero;
	duration_ofUnit = collectionRouted_new(TEMPORAL_AMOUNT_DURATION(), TYPE_INT());
	second_duration = duration_TemporalUnitToSeconds(number_Units, Temporal_Type);
	duration_ofUnit = collectionRouted_addLast_byType(duration_ofUnit, second_duration, TYPE_INT());
FinFuncion

Funcion duration_ofUnit <- duration_getSeconds(struct_Duration)
	Definir duration_ofUnit Como Entero;
	duration_ofUnit = temporal_getSeconds(struct_Duration);
FinFuncion
//----[ PARSER ]----------------------------------------------------[#]
Funcion second_ofUnit <- duration_TemporalUnitToSeconds(unit_seconds, Temporal_Type)
	Definir second_ofUnit Como Entero;
	Segun Temporal_Type Hacer
		Caso chronoUnit_DAYS():
			second_ofUnit = temporal_daysToSecond(unit_seconds);
		Caso chronoUnit_HOURS():
			second_ofUnit = duration_hoursToSeconds(unit_seconds);
		Caso chronoUnit_MINUTES():
			second_ofUnit = duration_minutesToSeconds(unit_seconds);
		Caso chronoUnit_SECONDS():
			second_ofUnit = unit_seconds;
		De Otro Modo:
			second_ofUnit = 0;
	FinSegun
FinFuncion

Funcion second_ofUnit <- duration_minutesToSeconds(unit_second)
	Definir second_ofUnit Como Entero;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_MINUTES);
FinFuncion

Funcion second_ofUnit <- duration_hoursToSeconds(unit_second)
	Definir second_ofUnit Como Entero;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_HOURS);
FinFuncion

Funcion second_ofUnit <- temporal_daysToSecond(unit_second)
	Definir second_ofUnit Como Entero;
	second_ofUnit = unit_second * chronoUnit_getDuration(chronoUnit_DAYS);
FinFuncion

Funcion unit_Res <- duration_secondsToMinutes(unit_second)
	Definir unit_Res Como Entero;
	unit_Res = math_div_int(unit_second, chronoUnit_getDuration(chronoUnit_MINUTES()));
FinFuncion

Funcion unit_Res <- duration_secondsToHours(unit_second)
	Definir unit_Res Como Entero;
	unit_Res = math_div_int(unit_second, chronoUnit_getDuration(chronoUnit_HOURS()));
FinFuncion

Funcion unit_Res <- duration_secondsToDay(unit_second)
	Definir unit_Res Como Entero;
	unit_Res = math_div_int(unit_second, chronoUnit_getDuration(chronoUnit_DAYS()));
FinFuncion
//----[ GETTERS ]----------------------------------------------------[#]
Funcion second_UnitTemp <- duration_secondsToTemporalUnit(unit_second, Temporal_Type)
	Definir second_UnitTemp Como Entero;
	Segun Temporal_Type Hacer
		Caso chronoUnit_DAYS():
			second_UnitTemp = duration_secondsToDay(unit_second);
		Caso chronoUnit_HOURS():
			second_UnitTemp = duration_secondsToHours(unit_second);
		Caso chronoUnit_MINUTES():
			second_UnitTemp = duration_secondsToMinutes(unit_second);
		Caso chronoUnit_SECONDS():
			second_UnitTemp = unit_second;
		De Otro Modo:
			second_UnitTemp = 0;
	FinSegun
FinFuncion

Funcion second_ofUnit <- duration_ToDays(struct_temporal)
	Definir second_ofUnit Como Entero;
	second_ofUnit = duration_secondsToTemporalUnit(temporal_getSeconds(struct_temporal), chronoUnit_DAYS());
FinFuncion

Funcion second_ofUnit <- duration_ToHours(struct_temporal)
	Definir second_ofUnit Como Entero;
	second_ofUnit = duration_secondsToTemporalUnit(temporal_getSeconds(struct_temporal), chronoUnit_HOURS());
FinFuncion

Funcion second_ofUnit <- duration_ToMinutes(struct_temporal)
	Definir second_ofUnit Como Entero;
	second_ofUnit = duration_secondsToTemporalUnit(temporal_getSeconds(struct_temporal), chronoUnit_MINUTES());
FinFuncion

Funcion second_ofUnit <- duration_ToSeconds(struct_temporal)
	Definir second_ofUnit Como Entero;
	second_ofUnit = duration_secondsToTemporalUnit(temporal_getSeconds(struct_temporal), chronoUnit_SECONDS());
FinFuncion
//----[ TO_PARS ]----------------------------------------------------[#]
Funcion second_UnitTemp <- duration_secondsToTemporalUnitPart(unit_second, Temporal_Type)
	Definir second_UnitTemp Como Entero;
	second_UnitTemp = duration_secondsToTemporalUnit(unit_second, Temporal_Type);
	Segun Temporal_Type Hacer
		Caso chronoUnit_DAYS():
			second_UnitTemp = second_UnitTemp;
		Caso chronoUnit_HOURS():
			second_UnitTemp = math_module(second_UnitTemp, 24);
		Caso chronoUnit_MINUTES():
			second_UnitTemp = math_module(second_UnitTemp, 60);
		Caso chronoUnit_SECONDS():
			second_UnitTemp = math_module(second_UnitTemp, 60);
		De Otro Modo:
			second_UnitTemp = 0;
	FinSegun
FinFuncion

Funcion value_part <- duration_ToDaysPart(struct_temporal)
	Definir value_part Como Entero;
	value_part = duration_secondsToTemporalUnitPart(temporal_getSeconds(struct_temporal), chronoUnit_DAYS());
FinFuncion

Funcion value_part <- duration_ToHoursPart(struct_temporal)
	Definir value_part Como Entero;
	value_part = duration_secondsToTemporalUnitPart(temporal_getSeconds(struct_temporal), chronoUnit_HOURS());
FinFuncion

Funcion second_ofUnit <- duration_ToMinutesPart(struct_temporal)
	Definir second_ofUnit Como Entero;
	second_ofUnit = duration_secondsToTemporalUnitPart(temporal_getSeconds(struct_temporal), chronoUnit_MINUTES());
FinFuncion

Funcion second_ofUnit <- duration_ToSecondsPart(struct_temporal)
	Definir second_ofUnit Como Entero;
	second_ofUnit = duration_secondsToTemporalUnitPart(temporal_getSeconds(struct_temporal), chronoUnit_SECONDS());
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------[#]
Funcion isBetween <- duration_isNegative(struct_duration)
	Definir isBetween Como Logico;
	isBetween = duration_getSeconds(struct_duration) < 0;
FinFuncion

Funcion isBetween <- duration_isZero(struct_duration)
	Definir isBetween Como Logico;
	isBetween = duration_getSeconds(struct_duration) == 0;
FinFuncion
//----[ UTITLITIES ]----------------------------------------------------[#]
Funcion struct_difference <- duration_between(duration_Start, duration_End)
	Definir struct_difference Como Texto;
	Definir difference Como Entero;
	difference = math_minus(duration_getSeconds(duration_End), duration_getSeconds(duration_Start));
	struct_difference = duration_ofSeconds(difference);
FinFuncion

Funcion struct_duration_result <- duration_Negated(struct_duration)
	Definir struct_duration_result Como Texto;
	Definir unit_inner Como Entero;
	unit_inner = math_negated(duration_getSeconds(struct_duration));
	struct_duration_result = collectionRouted_set_byString(struct_duration, 0, native_number_toString(unit_inner));
FinFuncion

Funcion struct_duration_result <- duration_abs(struct_duration)
	Definir struct_duration_result Como Texto;
	Definir unit_inner Como Entero;
	unit_inner = math_abs(duration_getSeconds(struct_duration));
	struct_duration_result = collectionRouted_set_byString(struct_duration, 0, native_number_toString(unit_inner));
FinFuncion
//----[ OPERATIONS ]----------------------------------------------------[#]
Funcion struct_duration_result <- duration_MultipliedBy(struct_duration, num_Mult)
	Definir struct_duration_result Como Texto;
	Definir unit_inner Como Entero;
	unit_inner = duration_getSeconds(struct_duration) * num_Mult;
	struct_duration_result = collectionRouted_set_byString(struct_duration, 0, native_number_toString(unit_inner));
FinFuncion

Funcion struct_duration_result <- duration_DividedBy(struct_duration, num_Div)
	Definir struct_duration_result Como Texto;
	Definir unit_inner Como Entero;
	unit_inner = math_div_int(duration_getSeconds(struct_duration), num_Div);
	struct_duration_result = collectionRouted_set_byString(struct_duration, 0, native_number_toString(unit_inner));
FinFuncion
//----[ PLUS ]------------------------------------------------------------------------[#]
Funcion struct_duration_result <- duration_PlusDays(struct_duration, num_increment)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_PlusUnitTemporal(struct_duration, num_increment, chronoUnit_DAYS());
FinFuncion

Funcion struct_duration_result <- duration_PlusHours(struct_duration, num_increment)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_PlusUnitTemporal(struct_duration, num_increment, chronoUnit_HOURS());
FinFuncion

Funcion struct_duration_result <- duration_PlusMinutes(struct_duration, num_increment)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_PlusUnitTemporal(struct_duration, num_increment, chronoUnit_MINUTES());
FinFuncion

Funcion struct_duration_result <- duration_Plus(struct_duration, struct_duration_minus)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_PlusNumber(struct_duration, duration_getSeconds(struct_duration_minus));
FinFuncion

Funcion struct_duration_result <- duration_PlusSeconds(struct_duration, num_increment)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_PlusUnitTemporal(struct_duration, num_increment, chronoUnit_SECONDS());
FinFuncion
//----[ MINUS ]----------------------------------------------------------------------[#]
Funcion struct_duration_result <- duration_MinusDays(struct_duration, num_decrement)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_MinusUnitTemporal(struct_duration, num_decrement, chronoUnit_DAYS());
FinFuncion

Funcion struct_duration_result <- duration_MinusHours(struct_duration, num_decrement)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_PlusUnitTemporal(struct_duration, math_negated(num_decrement), chronoUnit_HOURS());
FinFuncion

Funcion struct_duration_result <- duration_MinusMinutes(struct_duration, num_decrement)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_PlusUnitTemporal(struct_duration, math_negated(num_decrement), chronoUnit_MINUTES());
FinFuncion

Funcion struct_duration_result <- duration_MinusSeconds(struct_duration, num_decrement)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_PlusUnitTemporal(struct_duration, math_negated(num_decrement), chronoUnit_SECONDS());
FinFuncion

Funcion struct_duration_result <- duration_Minus(struct_duration, struct_duration_minus)
	Definir struct_duration_result Como Texto;
	struct_duration_result = temporal_PlusNumber(struct_duration, math_negated(duration_getSeconds(struct_duration_minus)));
FinFuncion
//----[ COMPARE_TO ]----------------------------------------------------[#]
Funcion int_result <- duration_CompareTo(struct_duration, struct_duration_match)
	Definir int_result Como Entero;
	Definir duration_Org, duration_Match Como Entero;
	duration_Org = duration_getSeconds(struct_duration);
	duration_Match = duration_getSeconds(struct_duration_match);
	int_result = int_CompareTo(duration_Org, duration_Match);
FinFuncion
///%%%%%[ PERIOD.................. ]%%%%%%%[   #PER    ]%%%%%%%%%%%%%%%%%%%%
Funcion period_string <- period_toString(struct_period)
    Definir period_string, period_array Como Texto;
    Dimension period_array[3];
    period_array[0] = string_append("Y:", integer_toString(period_getYear(struct_period)));
    period_array[1] = string_append("M:", integer_toString(period_getMonth(struct_period)));
    period_array[2] = string_append("D:", integer_toString(period_getDay(struct_period)));
    period_string = array_ofString_withSeparator(period_array, 3, TYPE_STRING(), " ");
FinFuncion
//----[ UTITLITIES ]----------------------------------------------------[#]
Funcion struct_period_result <- period_multipliedBy(struct_period, scalar)
	Definir struct_period_result Como Texto;
    Definir year, month, day Como Entero;
    year = period_getYear(struct_period) * scalar;
    month = period_getMonth(struct_period) * scalar;
    day = period_getDay(struct_period) * scalar;
    struct_period_result = period_of(year, month, day);
FinFuncion

Funcion struct_period_res <- period_negated(struct_period)
    Definir year, month, day Como Entero;
    year = math_negated(period_getYear(struct_period));
    month = math_negated(period_getMonth(struct_period));
    day = math_negated(period_getDay(struct_period));
    struct_period_res = period_of(year, month, day);
FinFuncion

Funcion total_months <- period_toTotalMonths(struct_period)
    Definir total_months Como Real;
    total_months = (period_getYear(struct_period) * 12) + period_getMonth(struct_period);
FinFuncion

Funcion result_period <- period_normalized(struct_period)
    Definir result_period Como Texto;
    Definir total_months, years_part, months_part, final_years Como Entero;
    total_months = period_getMonth(struct_period);
    years_part = math_truncate(total_months / 12);
    months_part = math_module(total_months, 12);
    final_years = math_sum(period_getYear(struct_period), years_part);
    result_period = period_withYears(struct_period, final_years);
    result_period = period_withMonths(result_period, months_part);
FinFuncion
//----[ OF ]------------------------------------------------------------------------[#]
Funcion struct_period <- period_of(year, month, day)
    Definir struct_period Como Texto;
    struct_period = collectionRouted_new(TEMPORAL_LOCALDATE(), TYPE_INT());
	struct_period = __private_temporalDate_add(struct_period, year, month, day);
FinFuncion

Funcion struct_period <- period_ofYears(years)
	Definir struct_period Como Texto;
    struct_period = period_of(years, 0, 0);
FinFuncion

Funcion struct_period <- period_ofMonths(months)
	Definir struct_period Como Texto;
    struct_period = period_of(0, months, 0);
FinFuncion

Funcion struct_period <- period_ofWeeks(weeks)
    Definir struct_period Como Texto;
    struct_period = period_of(0, 0, weeks * 7);
FinFuncion

Funcion struct_period <- period_ofDays(days)
	Definir struct_period Como Texto;
    struct_period = period_of(0, 0, days);
FinFuncion

Funcion struct_period <- __private_period_ofNull
	Definir struct_period Como Texto;
	struct_period = period_of(number_NULL(), number_NULL(), number_NULL());
FinFuncion
//----[ GETTERS ]----------------------------------------------------[#]
Funcion years <- period_getYear(struct_period)
	Definir years Como Entero;
    years = collectionRouted_get_byType(struct_period, 0, TYPE_INT());
FinFuncion

Funcion months <- period_getMonth(struct_period)
	Definir months Como Entero;
    months = collectionRouted_get_byType(struct_period, 1, TYPE_INT());
FinFuncion

Funcion days <- period_getDay(struct_period)
	Definir days Como Entero;
    days = collectionRouted_get_byType(struct_period, 2, TYPE_INT());
FinFuncion
//-----[ WITH ]----------------------------------------------------------------------[#]
Funcion struct_period_res <- period_withYears(struct_period, years)
    Definir struct_period_res Como Texto;
    struct_period_res = collectionRouted_set_byType(struct_period, 0, years, TYPE_INT());
FinFuncion

Funcion struct_period_res <- period_withMonths(struct_period, months)
    Definir struct_period_res Como Texto;
    struct_period_res = collectionRouted_set_byType(struct_period, 1, months, TYPE_INT());
FinFuncion

Funcion struct_period_res <- period_withDays(struct_period, days)
    Definir struct_period_res Como Texto;
    struct_period_res = collectionRouted_set_byType(struct_period, 2, days, TYPE_INT());
FinFuncion
//----[ PLUS ]------------------------------------------------------------------------[#]
Funcion result_period <- period_plusYear(struct_period, unit_plus)
	Definir result_period Como Texto;
	Definir year_date Como Entero;
	year_date = math_sum(period_getYear(struct_period), unit_plus);
	result_period = period_withYears(struct_period, year_date);
FinFuncion

Funcion result_period <- period_plusMonths(struct_period, unit_plus)
    Definir result_period Como Texto;
    Definir month_date Como Entero;
    month_date = math_sum(period_getMonth(struct_period), unit_plus);
    result_period = period_withMonths(struct_period, month_date);
FinFuncion

Funcion result_period <- period_plusDays(struct_period, unit_plus)
    Definir result_period Como Texto;
    Definir day_date Como Entero;
    day_date = math_sum(period_getDay(struct_period), unit_plus);
	result_period = period_withDays(struct_period, day_date);
FinFuncion

Funcion struct_period_res <- period_plus(struct_period_A, struct_period_B)
    Definir struct_period_res Como Texto;
    Definir year, month, day Como Entero;
    year	= math_sum(period_getYear(struct_period_A), period_getYear(struct_period_B));
    month	= math_sum(period_getMonth(struct_period_A), period_getMonth(struct_period_B));
    day		= math_sum(period_getDay(struct_period_A), period_getDay(struct_period_B));
    struct_period_res = period_of(year, month, day);
FinFuncion
//----[ MINUS ]----------------------------------------------------------------------[#]
Funcion result_period <- period_minusYear(struct_period, unit_minus)
	Definir result_period Como Texto;
	result_period = period_plusYear(struct_period, math_negated(unit_minus));
FinFuncion

Funcion result_period <- period_minusMonths(struct_period, unit_minus)
	Definir result_period Como Texto;
	result_period = period_plusMonths(struct_period, math_negated(unit_minus));
FinFuncion

Funcion result_period <- period_minusDays(struct_period, unit_minus)
	Definir result_period Como Texto;
	result_period = period_plusDays(struct_period, math_negated(unit_minus));
FinFuncion

Funcion struct_period_res <- period_minus(struct_period_A, struct_period_B)
    Definir struct_period_res Como Texto;
    struct_period_res = period_plus(struct_period_A, period_negated(struct_period_B));
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------[#]
Funcion boolean <- period_isNegative(struct_period)
    Definir boolean Como Logico;
    boolean = (period_getYear(struct_period) < 0) | (period_getMonth(struct_period) < 0) | (period_getDay(struct_period) < 0);
FinFuncion

Funcion boolean <- period_isZero(struct_period)
    Definir boolean Como Logico;
    boolean = (period_getYear(struct_period) == 0) & (period_getMonth(struct_period) == 0) & (period_getDay(struct_period) == 0);
FinFuncion
//----[ BETWEEN ]---------------------------------------------------------------------[#]
Funcion struct_period <- period_between(struct_date_start, struct_date_end)
    Definir year, total_months, month, day, d_start, d_end Como Entero;
    Definir struct_period, previous_month_date Como Texto;
    total_months = localDate_until_Months(struct_date_start, struct_date_end);
    year = math_truncate(total_months / 12);
    month = math_module(total_months, 12);
    d_start = localDate_getDayOfMonth(struct_date_start);
    d_end = localDate_getDayOfMonth(struct_date_end);
    Si d_end >= d_start Entonces
        day = math_minus(d_end, d_start);
    SiNo
        previous_month_date = localDate_minusMonths(struct_date_end, 1);
        day = math_minus(localDate_lengthOfMonth(localDate_getYear(struct_date_end), previous_month_date), d_start) + d_end;
    FinSi    
    struct_period = period_of(year, month, day);
FinFuncion
///%%%%%[ CANVAS.................. ]%%%%%%%[   #CAN    ]%%%%%%%%%%%%%%%%%%%%
Funcion canvas <- canvas_new(CWx, CWy)
	Definir canvas Como Texto;
	canvas = canvas_new_withPixel(CWx, CWy, pixel_clear());
FinFuncion
//recomendado:630*130
Funcion canvas_xy <- canvas_new_withPixel(CWx, CWy, pixel_background)
	Definir canvas_xy, canvas_x Como Texto;
	canvas_x  = string_repeatText(pixel_background, CWx);
	canvas_xy = string_repeatText(canvas_x, CWy);
FinFuncion
//----[ DISPLAY ]----------------------------------------------------[#]
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
		log_error_function("canvas_display_monoColor()", "error dimension CWy < 1");
	FinSi
FinFuncion

Funcion canvas_display_window(canvas, cX, cY, title)
	canvas_display_window_monoColor(canvas, cX, cY, title, COLOR_GREEN());
FinFuncion

Funcion canvas_display_window_monoColor(canvas, cX, cY, title, color_window)
	canvas_display_window_color(canvas, cX, cY, title, color_window, COLOR_CYAN());
FinFuncion

Funcion canvas_display_window_color(canvas, cX, cY, title, color_window, color_title)
	Definir end_line, title_bar como Texto;
	canvas = canvas_addColumn_withPixel(canvas, cX, cY, "¦");
	cX = math_increment(cX);
	canvas = canvas_addColumn_atStart_withPixel(canvas, cX, cY, "¦");
	cX = math_increment(cX);
	title_bar = __private_window_getTitleBar_color(title, cX, color_window, color_title);
	canvas_display(title_bar, __private_window_calcTitleBarColorLength(cX, color_window, color_title), 3);
	canvas_display_monoColor(canvas, cX, cY, color_window);
	end_line = canvas_Row_WithText_toBorders("¯", cX, "`");
	native_println(color_set(end_line, color_window));
FinFuncion

Funcion length_colors <- __private_window_calcTitleBarColorLength(width_titleBar, color_bar, color_title)
	Definir length_colors, length_decorator, length_titleDecorator, length_padding Como Entero;
	length_titleDecorator = string_Length(color_title);
	length_decorator = string_Length(color_bar);
	length_padding = math_sum((length_decorator * 2), length_titleDecorator);
	length_colors = math_sum(width_titleBar,  length_padding);
FinFuncion

Funcion titlebar <- __private_window_getTitleBar_color(title, width_titleBar, color_bar, color_title)
	Definir titlebar, top_bar, button_bar, center_bar, padding_end Como Texto;
	Definir title_color, top_color, button_color, center_color Como Texto;
	Definir center_width, top_width, res_width Como Entero;
	top_bar       = canvas_Row_WithText_toBorders("_", width_titleBar, ".");
	center_bar	  = __private_window_titleBar_getCenterBar(title, width_titleBar);
	button_bar    = canvas_Row_WithText_toBorders("¨", width_titleBar, "¦");
	top_color     = color_set(top_bar, color_bar);//...
	button_color  = color_set(button_bar, color_bar);
	center_color  = center_bar;
	center_color  = string_insert(center_color, color_title, 1);
	center_color  = string_insert(center_color, color_bar, math_decrement(string_Length(center_color)));
	center_color  = color_set(center_color, color_bar);
	top_width     = string_Length(top_color);
	center_width  = string_Length(center_color);
	res_width     = math_abs(math_minus(center_width, top_width));
	padding_end   = string_repeatText(" ", res_width);
	si center_width >= top_width Entonces
		top_color    = string_append(top_color, padding_end);
		button_color = string_append(button_color, padding_end);
	SiNo
		center_color = string_append(center_color, padding_end);
	FinSi
	titlebar = string_append_withSeparator(top_color, button_color, center_color);
FinFuncion

Funcion title_string <- __private_window_getTitleBar(title, width_titleBar)
	Definir title_string, top_bar, button_bar, center_bar Como Texto;
	title_string  = __private_window_getTitleBar_color(title, width_titleBar, "", "");
FinFuncion

Funcion center_bar <- __private_window_titleBar_getCenterBar(title, width_titleBar)
	Definir center_bar, buttons, title_area, side_space Como Texto;
	Definir side_left, side_right, center_content Como Texto;
	Definir usable_width, title_maximum_length, padding Como Entero;
	Definir length_sides, buttons_length Como Entero;
	buttons = "- ¤ ×";
	buttons_length = string_length(buttons);
	side_space = " ";
	Si width_titleBar < 4 Entonces
		side_space = "";
	FinSi
	side_left = string_append("¦", side_space);
	side_right = string_append(side_space, "¦");
	length_sides = string_length(string_append(side_left, side_right));
	usable_width = math_max(0, math_minus(width_titleBar, length_sides));
	Si usable_width < buttons_length Entonces
		title_area = "";
		buttons = string_substring(buttons, math_minus(buttons_length, usable_width), buttons_length);
	SiNo
		title_maximum_length = math_minus(usable_width, math_increment(buttons_length));
		title_area = canvas_fit_toRange(title, 0, title_maximum_length);
		padding = math_minus(title_maximum_length, string_length(title_area));
		title_area = string_append(title_area, string_repeatText(" ", padding));
		title_area = string_append(title_area, " ");
	FinSi
	center_content = string_append(title_area, buttons);
	center_bar = string_append_withSeparator(side_left, side_right, center_content);
FinFuncion
//----[ TO_SPRITESTRING ]-----------------------------------------------------------[#]
Funcion sprite_canvas <- canvas_tospriteString(canvas, cX, cY)
	Definir sprite_canvas, initial_sprite Como Texto;
	initial_sprite = spriteString_new();
	initial_sprite = collection_add_toLeft_byString_force(initial_sprite, canvas);
	initial_sprite = collection_setSize(initial_sprite, cY);
	sprite_canvas  = collectionUniform_setUniformLength(initial_sprite, cX);
FinFuncion
//----[ UTILITIES ]----------------------------------------------------[#]
Funcion region_text <- canvas_extractRegion(canvas, cX, cY, x0, y0, width, height)
	Definir region_text, line_text, message_warning_error Como Texto;
	Definir i, index_start, index_end Como Entero;
	Si canvas_calculate_isExceedingCanvas(cX, cY, x0, y0, width, height) Entonces
		log_error_function("canvas_extractRegion()", "region exceeds canvas boundaries [use strict inner coordinates]");
		escribir "x0: ", x0, " y0: ", y0;
		escribir "width: ", width, " height: ", height;
		escribir "cX: ", cX, " cY: ", cY;
		region_text = canvas;
	SiNo
		region_text = "";
		index_start = math_sum(y0 * cX, x0);
		Para i = 0 Hasta math_decrement(height) Con Paso 1 Hacer
			index_end   = math_sum(index_start, width);
			line_text   = string_substring(canvas, index_start, index_end);
			region_text = string_append(region_text, line_text);
			index_start = math_sum(index_start, cX);
		FinPara
	FinSi
FinFuncion

Funcion resultText <- canvas_paddingColumn_withPixel(canvas, sCX, sCY, value_padding, isRight_padding, pixel_target)
	Definir resultText, line_padding Como Texto;
	line_padding = string_repeatText(pixel_target, value_padding);
	resultText = collectionUniform_applyPadding(canvas, 0, sCX * sCY, sCX, line_padding, isRight_padding);
FinFuncion

Funcion resultText <- canvas_paddingColumn(canvas, sCX, sCY, value_padding, isRight_padding)
	Definir resultText Como Texto;
	resultText = canvas_paddingColumn_withPixel(canvas, sCX, sCY, value_padding, isRight_padding, pixel_clear());
FinFuncion

Funcion resultText <- canvas_paddingRow_withPixel(canvas, currentWidth, value_padding, isTop_padding, pixel_target)
	Definir resultText, line_padding, block_padding Como Texto;
	line_padding = string_repeatText(pixel_target, currentWidth);
	block_padding = string_repeatText(line_padding, value_padding);
	Si isTop_padding Entonces
		resultText = string_append(block_padding, canvas);
	SiNo
		resultText = string_append(canvas, block_padding);
	FinSi
FinFuncion

Funcion resultText <- canvas_paddingRow(canvas, currentWidth, value_padding, isTop_padding)
	Definir resultText Como Texto;
	resultText = canvas_paddingRow_withPixel(canvas, currentWidth, value_padding, isTop_padding, pixel_clear());
FinFuncion

Funcion result_subCanvas <- canvas_getSubCanvas(canvas, cX, cY, x0, y0, width, height)
	Definir result_subCanvas, pixel_target               Como Texto;
	Definir start_x, start_fit, end_fit, diff_fit, end_x Como Entero;
	Definir i_start, i_end, sCX, sCY                     Como Entero;
	Definir width_padding, heigth_padding                Como Entero;
	Definir isRight_padding, isTop_padding               Como Logico;
	Si canvas_calculate_isOutOfCanvas(cX, cY, x0, y0, width, height) Entonces
		result_subCanvas = canvas_new(width, height);
	SiNo
		start_x          = canvas_calculate_ensureCoord(x0);
		start_fit        = canvas_calculate_startFit(width, x0);
		end_fit          = canvas_calculate_endFit(width, x0, cX, start_fit);
		diff_fit         = math_minus(end_fit, start_fit);
		end_x            = math_sum(start_x, diff_fit);
		i_start          = canvas_calculate_ensureCoord(y0);
		i_end            = canvas_calculate_iteratorEndIndex(cY, height, y0);
		sCX              = math_minus(end_x, start_x);
		sCY              = math_minus(i_end, i_start);
		result_subCanvas = canvas_extractRegion(canvas, cX, cY, start_x, i_start, sCX, sCY);
		width_padding    = math_minus(width, sCX);
		isRight_padding  = x0 > 0;
		pixel_target     = pixel_clear();
		Si width_padding > 0 Entonces
			result_subCanvas = canvas_paddingColumn_withPixel(result_subCanvas, sCX, sCY, width_padding, isRight_padding, pixel_target);
		FinSi
		heigth_padding   = math_minus(height, sCY);
		isTop_padding    = y0 < 0;
		Si heigth_padding > 0 Entonces
			result_subCanvas = canvas_paddingRow_withPixel(result_subCanvas, width, heigth_padding, isTop_padding, pixel_target);
		FinSi
	FinSi
FinFuncion

Funcion row_x <- canvas_Row_WithText_toBorders(text, repeats, border)
	Definir row_x, row_line Como Texto;
	Definir repeats_norm Como Entero;
	repeats_norm = math_max(math_minus(repeats, 2), 0);
	row_line = string_repeatText(text, repeats_norm);
    row_x = string_append_withSeparator(border, border, row_line);
FinFuncion

Funcion row_x <- canvas_Row_WithText(text, repeats)
	Definir row_x Como Texto;
	row_x = string_repeatText(text, repeats);
FinFuncion
//----[ CALCULATE ]----------------------------------------------------[#]
Funcion index_canvas <- canvas_calculate_index(x0, y0, CWx)
	Definir index_canvas Como Entero;
	index_canvas= math_sum(x0, (y0*CWx));
FinFuncion

Funcion is_off <- canvas_calculate_isOutOfCanvas(cX, cY, x0, y0, width, height)
	Definir is_off Como Logico;
	Definir out_left, out_right, out_top, out_bottom Como Logico;
	out_left   = (math_sum(x0, width) <= 0);
	out_right  = (x0 >= cX);
	out_top    = (math_sum(y0, height) <= 0);
	out_bottom = (y0 >= cY);
	is_off = out_left | out_right | out_top | out_bottom;
FinFuncion

Funcion is_exceeding <- canvas_calculate_isExceedingCanvas(cX, cY, x0, y0, width, height)
	Definir is_exceeding                          Como Logico;
	Definir out_left, out_right, out_top, out_bottom Como Logico;
	out_left     = (x0 < 0);
	out_right    = (math_sum(x0, width) > cX);
	out_top      = (y0 < 0);
	out_bottom   = (math_sum(y0, height) > cY);
	is_exceeding = out_left | out_right | out_top | out_bottom;
FinFuncion

Funcion start_pos <- canvas_calculate_startFit(target_length, target_index)
	Definir start_pos Como Entero;
	Si target_index < 0 Entonces
		start_pos = math_abs(target_index);
	SiNo
		start_pos = 0;
	FinSi
	Si start_pos > target_length Entonces
		start_pos = target_length;
	FinSi
FinFuncion

Funcion end_pos <- canvas_calculate_endFit(target_length, target_index, parent_limit, start_pos)
	Definir end_pos Como Entero;
	Si target_index < 0 Entonces
		end_pos = math_sum(start_pos, parent_limit);
	SiNo
		end_pos = math_minus(parent_limit, target_index);
	FinSi
	Si end_pos > target_length Entonces
		end_pos = target_length;
	FinSi
	Si end_pos < start_pos Entonces
		end_pos = start_pos;
	FinSi
FinFuncion

Funcion draw_coord <- canvas_calculate_ensureCoord(coord)
    Definir draw_coord Como Entero;
    Si coord < 0 Entonces
        draw_coord = 0;
    SiNo
        draw_coord = coord;
    FinSi
FinFuncion

Funcion source_end <- canvas_calculate_IteratorEndIndex(cY, sCY, y0)
	Definir source_end, visible_height Como Entero;
	Si cY <= 0 Entonces
		source_end = 0;
	SiNo
		Si y0 < 0 Entonces
			visible_height = math_sum(sCY, y0);
			Si visible_height < 0 Entonces
				source_end = 0;
			SiNo
				source_end = visible_height;
			FinSi
		SiNo
			source_end = math_sum(y0, sCY);
			Si source_end > cY Entonces
				source_end = cY;
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion initial_i <- canvas_calculate_source_IteratorStartIndex(y0)
    Definir initial_i Como Entero;
    Si y0 < 0 Entonces
        initial_i = math_abs(y0);
    SiNo
        initial_i = 0;
    FinSi
FinFuncion

Funcion end_limit <- canvas_calculate_source_iteratorEndIndex(cY, sCY, y0)
    Definir end_limit, max_visible Como Entero;
    max_visible = math_minus(cY, y0);
    Si sCY < max_visible Entonces
        end_limit = sCY;
    SiNo
        end_limit = max_visible;
    FinSi
FinFuncion
//...
Funcion text_fit <- canvas_fit_toRange(text, index_start, max_width)
    Definir text_fit Como Texto;
    Definir text_len, start_pos, end_pos Como Entero;
    text_len  = string_Length(text);
    start_pos = canvas_calculate_startFit(text_len, index_start);
    end_pos   = canvas_calculate_endFit(text_len, index_start, max_width, start_pos);
    text_fit  = string_substring(text, start_pos, end_pos);
FinFuncion
//----[ ADD_COLUMN ]----------------------------------------------------[#]
Funcion result_canvas <- canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, x_start, pixel)
	Definir result_canvas, text_extra Como Texto;
	Definir i, x_insert Como Entero;
	result_canvas = canvas;
	text_extra = canvas_Row_WithText(pixel, num_columns);
	x_insert = math_rangeLimit_Int(x_start, 0, CWx);
	i = math_decrement(Cwy);
	Mientras i >= 0 Hacer
		result_canvas = string_insert(result_canvas, text_extra, canvas_calculate_index(x_insert, i, CWx));
		i = math_decrement(i);
	FinMientras
FinFuncion

Funcion result_canvas <- canvas_addColumns_withPixel(canvas, CWx, CWy, num_columns, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, 0, pixel);
FinFuncion

Funcion result_canvas <- canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, num_columns, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, CWx, pixel);
FinFuncion

Funcion result_canvas <- canvas_addColumns(canvas, CWx, CWy, num_columns)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addColumns_withPixel(canvas, CWx, CWy, num_columns, pixel_clear());
FinFuncion

Funcion result_canvas <- canvas_addColumns_ofIndex(canvas, CWx, CWy, num_columns, index)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, index, pixel_clear());
FinFuncion

Funcion result_canvas <- canvas_addColumns_atStart(canvas, CWx, CWy, num_columns)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, num_columns, pixel_clear());
FinFuncion

Funcion result_canvas <- canvas_addColumn_withPixel(canvas, CWx, CWy, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addColumns_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion result_canvas <- canvas_addColumn_atStart_withPixel(canvas, CWx, CWy, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion result_canvas <- canvas_addColumn_ofIndex(canvas, CWx, CWy, index)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addColumns_ofIndex(canvas, CWx, CWy, 1, index);
FinFuncion

Funcion result_canvas <- canvas_addColumn(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addColumn_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion

Funcion result_canvas <- canvas_addColumn_atStart(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addColumn_atStart_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion
//----[ DELETE_COLUMN ]--------------------------------------------------------------[#]
Funcion result_canvas <- canvas_removeColumns_count(canvas, CWx, CWy, num_columns, x_start)
	Definir result_canvas Como Texto;
	Definir i, x_remove, index_row Como Entero;
	result_canvas = canvas;
	x_remove = math_rangeLimit_Int(x_start, 0, CWx);
	Para i = math_decrement(CWy) Hasta 0 Con Paso math_decrement(0) Hacer
		index_row = canvas_calculate_index(x_remove, i, CWx);
		result_canvas = string_remove(result_canvas, index_row, math_sum(index_row, num_columns));
	FinPara
FinFuncion

Funcion result_canvas <- canvas_removeColumns(canvas, CWx, CWy, num_columns)
	Definir result_canvas Como Texto;
	result_canvas = canvas_removeColumns_count(canvas, CWx, CWy, num_columns, 0);
FinFuncion

Funcion result_canvas <- canvas_removeColumns_ofIndex(canvas, CWx, CWy, num_columns, index)
	Definir result_canvas Como Texto;
	result_canvas = canvas_removeColumns_count(canvas, CWx, CWy, num_columns, index);
FinFuncion

Funcion result_canvas <- canvas_removeColumns_atStart(canvas, CWx, CWy, num_columns)
	Definir result_canvas Como Texto;
	result_canvas = canvas_removeColumns_count(canvas, CWx, CWy, num_columns, Cwx);
FinFuncion

Funcion result_canvas <- canvas_removeColumn_ofIndex(canvas, CWx, CWy, index)
	Definir result_canvas Como Texto;
	result_canvas = canvas_removeColumns_ofIndex(canvas, CWx, CWy, 1, index);
FinFuncion

Funcion result_canvas <- canvas_removeColumn(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_removeColumns(canvas, CWx, CWy, 1);
FinFuncion

Funcion result_canvas <- canvas_removeColumn_atStart(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_removeColumns_atStart(canvas, CWx, CWy, 1);
FinFuncion
//----[ ADD_ROW ]----------------------------------------------------------------------[#]
Funcion result_canvas <- canvas_addRows_ofIndex_withPixel(canvas, CWx, CWy, num_rows, y_start, pixel)
    Definir result_canvas, text_rows Como Texto;
    Definir total_chars, y_insert Como Entero;
	text_rows = canvas_Row_WithText(pixel, num_rows * CWx);
	y_insert = math_rangeLimit_Int(y_start, 0, CWy);
	result_canvas = string_Insert(canvas, text_rows, canvas_calculate_index(0, y_insert, CWx));
FinFuncion

Funcion result_canvas <- canvas_addRows_withPixel(canvas, CWx, CWy, num_rows, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addRows_ofIndex_withPixel(canvas, CWx, CWy, num_rows, 0, pixel);
FinFuncion

Funcion result_canvas <- canvas_addRows_atStart_withPixel(canvas, CWx, CWy, num_rows, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addRows_ofIndex_withPixel(canvas, CWx, CWy, num_rows, CWy, pixel);
FinFuncion

Funcion result_canvas <- canvas_addRows(canvas, CWx, CWy, num_rows)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addRows_withPixel(canvas, CWx, CWy, num_rows, pixel_clear());
FinFuncion

Funcion result_canvas <- canvas_addRows_ofIndex(canvas, CWx, CWy, num_rows, index)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addRows_ofIndex_withPixel(canvas, CWx, CWy, num_rows, index, pixel_clear());
FinFuncion

Funcion result_canvas <- canvas_addRows_atStart(canvas, CWx, CWy, num_rows)
	Definir result_canvas Como Texto;
	result_canvas =canvas_addRows_atStart_withPixel(canvas, CWx, CWy, num_rows, pixel_clear());
FinFuncion

Funcion result_canvas <- canvas_addRow_withPixel(canvas, CWx, CWy, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addRows_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion result_canvas <- canvas_addRow_atStart_withPixel(canvas, CWx, CWy, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addRows_atStart_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion result_canvas <- canvas_addRow_ofIndex(canvas, CWx, CWy, index)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addRows_ofIndex(canvas, CWx, CWy, 1, index);
FinFuncion

Funcion result_canvas <- canvas_addRow(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addRow_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion

Funcion result_canvas <- canvas_addRow_atStart(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_addRow_atStart_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion
//----[ DELETE_ROW ]----------------------------------------------------[#]
Funcion result_canvas <- canvas_removeRows_count(canvas, CWx, CWy, num_rows, isTop)
	Definir result_canvas Como Texto;
	Definir total_chars, start_delete Como Entero;
	total_chars = CWx * num_rows;
	start_delete = if_else(isTop, 0, math_minus(CWx * CWy, total_chars));
	result_canvas = string_remove(canvas, start_delete, math_sum(start_delete, total_chars));
FinFuncion

Funcion result_canvas <- canvas_removeRows(canvas, CWx, CWy, num_rows)
	Definir result_canvas Como Texto;
	result_canvas = canvas_removeRows_count(canvas, CWx, CWy, num_rows, false());
FinFuncion

Funcion result_canvas <- canvas_removeRows_atStart(canvas, CWx, CWy, num_rows)
	Definir result_canvas Como Texto;
	result_canvas = canvas_removeRows_count(canvas, CWx, CWy, num_rows, true());
FinFuncion

Funcion result_canvas <- canvas_removeRow(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_removeRows(canvas, CWx, CWy, 1);
FinFuncion

Funcion result_canvas <- canvas_removeRow_atStart(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_removeRows_atStart(canvas, CWx, CWy, 1);
FinFuncion
//----[ MOVE_CONTENT_Y ]--------------------------------------------------------------[#]
Funcion canvas_move <- canvas_moveContent_top_nPositions_withPixel(canvas, CWx, CWy, pixel, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addRows_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeRows_atStart(canvas_move, CWx, math_sum(CWy, n_positions), n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottom_nPositions_withPixel(canvas, CWx, CWy, pixel, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addRows_atStart_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeRows(canvas_move, CWx, math_sum(CWy, n_positions), n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_top_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_top_nPositions_withPixel(canvas, CWx, CWy, pixel_clear(), n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottom_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottom_nPositions_withPixel(canvas, CWx, CWy, pixel_clear(), n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_top_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_top_nPositions_withPixel(canvas, CWx, CWy, pixel, 1);
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottom_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottom_nPositions_withPixel(canvas, CWx, CWy, pixel, 1);
FinFuncion

Funcion canvas_move <- canvas_moveContent_top(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_top_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottom(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottom_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion
//----[ MOVE_CONTENT_X ]--------------------------------------------------------------[#]
Funcion canvas_move <- canvas_moveContent_Left_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addColumns_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeColumns_atStart(canvas_move, math_sum(CWx, n_positions), CWy, n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_Right_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_addColumns_atStart_withPixel(canvas, CWx, CWy, n_positions, pixel);
	canvas_move = canvas_removeColumns(canvas_move, math_sum(CWx, n_positions), CWy, n_positions);
FinFuncion

Funcion canvas_move <- canvas_moveContent_Left_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Left_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_Right_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Right_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_Left_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Left_nPositions_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_Right_withPixel(canvas, CWx, CWy, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Right_nPositions_withPixel(canvas, CWx, CWy, 1, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_Left(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Left_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_Right(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_Right_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion
//----[ MOVE_CONTENT_XY ]-------------------------------------------------------------[#]
Funcion canvas_move <- canvas_moveContent_diagonal_atPositions_withPixel(canvas, CWx, CWy, isTop, isLeft, n_positions, pixel)
	Definir canvas_move Como Texto;
	Si isTop Entonces
		canvas_move = canvas_moveContent_top_nPositions_withPixel(canvas, CWx, CWy, pixel, n_positions);
	SiNo
		canvas_move = canvas_moveContent_bottom_nPositions_withPixel(canvas, CWx, CWy, pixel, n_positions);
	FinSi
	Si isLeft Entonces
		canvas_move = canvas_moveContent_Left_nPositions_withPixel(canvas_move, CWx, CWy, n_positions, pixel);
	SiNo
		canvas_move = canvas_moveContent_Right_nPositions_withPixel(canvas_move, CWx, CWy, n_positions, pixel);
	FinSi
FinFuncion
//----[ MOVE_DIAGONAL_TOP_LEFT ]------------------------------------------------------[#]
Funcion canvas_move <- canvas_moveContent_topLeft_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_diagonal_atPositions_withPixel(canvas, CWx, CWy, true(), true(), n_positions, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_topLeft_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_topLeft_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_topLeft(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_topLeft_nPositions(canvas, CWx, CWy, 1);
FinFuncion
//----[ MOVE_DIAGONAL_TOP_RIGHT ]-----------------------------------------------------[#]
Funcion canvas_move <- canvas_moveContent_topRight_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_diagonal_atPositions_withPixel(canvas, CWx, CWy, true(), false(), n_positions, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_topRight_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_topRight_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_topRight(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_topRight_nPositions(canvas, CWx, CWy, 1);
FinFuncion
//----[ MOVE_DIAGONAL_BOTTOM_LEFT ]---------------------------------------------------[#]
Funcion canvas_move <- canvas_moveContent_bottomLeft_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_diagonal_atPositions_withPixel(canvas, CWx, CWy, false(), true(), n_positions, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottomLeft_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottomLeft_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottomLeft(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottomLeft_nPositions(canvas, CWx, CWy, 1);
FinFuncion
//----[ MOVE_DIAGONAL_BOTTOM_RIGHT ]--------------------------------------------------[#]
Funcion canvas_move <- canvas_moveContent_bottomRight_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_diagonal_atPositions_withPixel(canvas, CWx, CWy, false(), false(), n_positions, pixel);
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottomRight_nPositions(canvas, CWx, CWy, n_positions)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottomRight_nPositions_withPixel(canvas, CWx, CWy, n_positions, pixel_clear());
FinFuncion

Funcion canvas_move <- canvas_moveContent_bottomRight(canvas, CWx, CWy)
	Definir canvas_move Como Texto;
	canvas_move = canvas_moveContent_bottomRight_nPositions(canvas, CWx, CWy, 1);
FinFuncion
//----[ RESIZE_EXPAND ]--------------------------------------------------------------[#]
Funcion result_canvas <- canvas_resize_count_withPixel(canvas, CWx, CWy, num_rows, num_columns, isTop, isLeft, pixel)
	Definir result_canvas Como Texto;
	Definir new_CWx Como Entero;
	result_canvas = canvas_addColumns_ofIndex_withPixel(canvas, CWx, CWy, num_columns, isLeft, pixel);
	new_CWx = math_sum(CWx, num_columns);
	result_canvas = canvas_addRows_ofIndex_withPixel(result_canvas, new_CWx, CWy, num_rows, isTop, pixel);
FinFuncion

Funcion result_canvas <- canvas_resize_withPixel(canvas, CWx, CWy, num_rows, num_columns, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_resize_count_withPixel(canvas, CWx, CWy, num_rows, num_columns, false(), false(), pixel);
FinFuncion

Funcion result_canvas <- canvas_resize_atStart_withPixel(canvas, CWx, CWy, num_rows, num_columns, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_resize_count_withPixel(canvas, CWx, CWy, num_rows, num_columns, true(), true(), pixel);
FinFuncion

Funcion result_canvas <- canvas_resize(canvas, CWx, CWy, num_rows, num_columns)
	Definir result_canvas Como Texto;
	result_canvas = canvas_resize_withPixel(canvas, CWx, CWy, num_rows, num_columns, pixel_clear());
FinFuncion

Funcion result_canvas <- canvas_resize_atStart(canvas, CWx, CWy, num_rows, num_columns)
	Definir result_canvas Como Texto;
	result_canvas = canvas_resize_atStart_withPixel(canvas, CWx, CWy, num_rows, num_columns, pixel_clear());
FinFuncion

Funcion result_canvas <- canvas_resize_expand_withPixel(canvas, CWx, CWy, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_resize_withPixel(canvas, CWx, CWy, 1, 1, pixel);
FinFuncion

Funcion result_canvas <- canvas_resize_expand_atStart_withPixel(canvas, CWx, CWy, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_resize_atStart_withPixel(canvas, CWx, CWy, 1, 1, pixel);
FinFuncion

Funcion result_canvas <- canvas_resize_expand(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_resize_expand_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion

Funcion result_canvas <- canvas_resize_expand_atStart(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_resize_expand_atStart_withPixel(canvas, CWx, CWy, pixel_clear());
FinFuncion
//----[ math_decrement_SIZE ]--------------------------------------------------------------[#]
Funcion result_canvas <- canvas_decrementSize_count(canvas, CWx, CWy, num_rows, num_columns, isTop, isLeft)
	Definir result_canvas Como Texto;
	result_canvas = canvas_removeRows_count(canvas, CWx, CWy, num_rows, isTop);
	result_canvas = canvas_removeColumns_count(result_canvas, CWx, CWy, num_columns, isLeft);
FinFuncion

Funcion result_canvas <- canvas_decrementSize(canvas, CWx, CWy, num_rows, num_columns)
	Definir result_canvas Como Texto;
	result_canvas = canvas_decrementSize_count(canvas, CWx, CWy, num_rows, num_columns, false(), false());
FinFuncion

Funcion result_canvas <- canvas_decrementSize_atStart(canvas, CWx, CWy, num_rows, num_columns)
	Definir result_canvas Como Texto;
	result_canvas = canvas_decrementSize_count(canvas, CWx, CWy, num_rows, num_columns, true(), true());
FinFuncion

Funcion result_canvas <- canvas_decrementSizeOne(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_decrementSize(canvas, CWx, CWy, 1, 1);
FinFuncion

Funcion result_canvas <- canvas_decrementSizeOne_atStart(canvas, CWx, CWy)
	Definir result_canvas Como Texto;
	result_canvas = canvas_decrementSize_atStart(canvas, CWx, CWy, 1, 1);
FinFuncion
//----[ DRAW ]------------------------------------------------------------------------[#]
Funcion canvas_ellipse <- canvas_DrawEllipse(canvas, CWx, CWy, x0, y0, rx, ry)
    Definir canvas_ellipse Como Texto;
    Definir x_, y_ Como Entero;
    Definir cX, cY Como Entero;
    Definir valor Como Real;
	
    Para y_ = 0 Hasta CWy-1
        Para x_ = 0 Hasta CWx-1
            cX = x_ - x0;
            Cy = y_ - y0;
            valor = (cX*cX)/(rx*rx) + (Cy*Cy)/(ry*ry);
            Si (valor >= 0.9) y (valor <= 1.1) Entonces
                canvas = canvas_Drawpoint(canvas, CWx, CWy, x_, y_);
            FinSi
        FinPara
    FinPara
    canvas_ellipse = canvas;
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle(canvas, cX, cY, x0, y0, width, height)
	Definir canvas_rectangle Como Texto;
	canvas_rectangle = canvas_DrawRectangle_whitPixel(canvas, cX, cY, pixel_plain(), x0, y0, width, height);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_whitPixel(canvas, cX, cY, x0, y0, width, height, pixelVH)
	Definir canvas_rectangle Como Texto;
	canvas_rectangle = canvas_DrawRectangle_withPixels(canvas, cX, cY, pixelVH, pixelVH, x0, y0, width, height);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_withPixels(canvas, cX, cY, x0, y0, width, height, pixel_H, pixel_V)
    Definir canvas_rectangle Como Texto;
	canvas_rectangle = canvas_DrawRectangle_withPixels_Full(canvas, cX, cY, x0, y0, width, height, pixel_H, pixel_H, pixel_V, pixel_V);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_withPixels_Full(canvas, cX, cY, x0, y0, width, height, pixel_top, pixel_bottom, pixel_left, pixel_right)
    Definir canvas_rectangle Como Texto;
    Definir x1, y1, y_top, y_bottom Como Entero;
    x1               = math_decrement(math_sum(x0, width));
    y1               = math_decrement(math_sum(y0, height));
	y_top            = math_increment(y0);
    y_bottom         = math_decrement(y1);
    canvas_rectangle = canvas;
    canvas_rectangle = canvas_DrawLine_Horizontal_withPixel(canvas_rectangle, cX, cY, x0, y0, x1, pixel_top);
    canvas_rectangle = canvas_DrawLine_Horizontal_withPixel(canvas_rectangle, cX, cY, x0, y1, x1, pixel_bottom);
    canvas_rectangle = canvas_DrawLine_Vertical_withPixel(canvas_rectangle, cX, cY, x0, y_top, y_bottom, pixel_left);
    canvas_rectangle = canvas_DrawLine_Vertical_withPixel(canvas_rectangle, cX, cY, x1, y_top, y_bottom, pixel_right);
FinFuncion

Funcion result_canvas <- canvas_drawFillRectangle(canvas, cX, cY, x0, y0, x1, y1)
	Definir result_canvas Como Texto;
	result_canvas = canvas_drawFillRectangle_WithPixel(canvas, cX, cY, x0, y0, x1, y1, pixel_plain());
FinFuncion

Funcion result_canvas <- canvas_drawFillRectangle_WithPixel(canvas, cX, cY, x0, y0, x1, y1, pixel)
	Definir result_canvas, subCanvas Como Texto;
	Definir width, height Como Entero;
	width         = math_max(math_minus(x1, x0), 1);
	height        = math_max(math_minus(y1, y0), 1);
	subCanvas     = canvas_new_withPixel(width, height, pixel);
	result_canvas = canvas_drawSubCanvas(canvas, cX, cY, subCanvas, width, height, x0, y0);
FinFuncion
//.....
Funcion canvas_triangle <- canvas_drawTriangle_Normalized(canvas, CWx, CWy, x0, y0, x1, y1, x2, y2)
    Definir canvas_triangle Como Texto;
 	x0 = canvas_NormalizedToPixelX(CWx, x0);
	y0 = canvas_NormalizedToPixelY(CWy, y0);
	x1 = canvas_NormalizedToPixelX(CWx, x1);
	y1 = canvas_NormalizedToPixelY(CWy, y1);
	x2 = canvas_NormalizedToPixelX(CWx, x2);
	y2 = canvas_NormalizedToPixelY(CWy, y2);
    canvas_triangle = canvas_drawTriangle(canvas, CWx, CWy, x0, y0, x1, y1, x2, y2);
FinFuncion

Funcion canvas_triangle <- canvas_drawTriangle(canvas, CWx, CWy, x0, y0, x1, y1, x2, y2)
    Definir canvas_triangle Como Texto;
    canvas = canvas_DrawLine(canvas, CWx, CWy, x0, y0, x1, y1);
    canvas = canvas_DrawLine(canvas, CWx, CWy, x1, y1, x2, y2);
    canvas = canvas_DrawLine(canvas, CWx, CWy, x2, y2, x0, y0);
    canvas_triangle = canvas;
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

Funcion canvas_text <- canvas_drawText_Normalized(canvas, CWx, CWy, text, x0, y0)
	Definir canvas_text Como Texto;
	Definir x_norm, y_norm Como Entero;
	x_norm = canvas_NormalizedToPixelX(CWx, x0);
	y_norm = canvas_NormalizedToPixelY(CWy, y0);
	canvas_text = canvas_drawText(canvas, CWx, CWy, text, x_norm, y_norm);
FinFuncion

Funcion canvas_text <- canvas_drawText(canvas, CWx, CWy, text, x0, y0)
	Definir canvas_text Como Texto;
	Definir post_text Como Entero;
	canvas_text = canvas;
	si x0 < CWx & y0 < CWy & y0 >= 0 Entonces 
		text = canvas_fit_toRange(text, x0, CWx);
		x0 = math_max(x0, 0);
		Si x0 < CWx & string_Length(text) > 0 Entonces
            post_text = canvas_calculate_index(x0, y0, CWx);
            canvas_text = string_insert_withReplace(canvas_text, text, post_text);
        FinSi
	FinSi
FinFuncion

Funcion canvas_line <- canvas_DrawLine(canvas, CWx, CWy, x0, y0, x1, y1)
    Definir canvas_line Como Texto;
	canvas_line = canvas_DrawLine_whitPixel(canvas, CWx, CWy, pixel_plain(), x0, y0, x1, y1);
FinFuncion
//Bresenham algorithm
Funcion canvas_line <- canvas_DrawLine_whitPixel(canvas, CWx, CWy, sy, x0, y0, x1, y1)
    Definir dx, dy, xi, yi, er, e2, ps, ix, iy, i Como Entero;
    Definir canvas_line Como Texto;
    canvas_line = canvas;
    ix = x0;
    iy = y0;
    dx = math_abs(x1 - x0);
    dy = math_abs(y1 - y0);
    xi = if_else(x0 < x1, 1, -1);
    yi = if_else(y0 < y1, 1, -1);
    er = dx - dy;
    ps = math_max(dx, dy);
    Para i desde 0 hasta ps Hacer
        canvas_line = canvas_DrawPoint_withPixel(canvas_line, CWx, CWy, ix, iy, sy);
        e2 = 2 * er;
        Si e2 > -dy Entonces
            er = er - dy;
            ix = ix + xi;
        FinSi
        Si e2 < dx Entonces
            er = er + dx;
            iy = iy + yi;
        FinSi
    FinPara
FinFuncion
//----[ NORMALIZED (-1 ... 1) ]-------------------------------------------------------[#]
Funcion canvas_line <- canvas_DrawLine_Normalized(canvas, CWx, CWy, x0, y0, x1, y1)
    Definir canvas_line Como Texto;
	x0 = canvas_NormalizedToPixelX(CWx, x0);
	y0 = canvas_NormalizedToPixelY(CWy, y0);
	x1 = canvas_NormalizedToPixelX(CWx, x1);
	y1 = canvas_NormalizedToPixelY(CWy, y1);
	canvas_line = canvas_DrawLine_whitPixel(canvas, CWx, CWy, pixel_plain(), x0, y0, x1, y1);
FinFuncion

Funcion canvas_point <- canvas_drawPoint_normalized(canvas, CWx, CWy, x0, y0)
	Definir canvas_point Como Texto;
	canvas_point = canvas_DrawPoint_withPixel_Normalized(canvas, CWx, CWy, x0, y0, pixel_plain());
FinFuncion

Funcion canvas_point <- canvas_DrawPoint_withPixel_Normalized(canvas, CWx, CWy, x0, y0, pixel_symb)
	Definir canvas_point Como Texto;
	x0 = canvas_NormalizedToPixelX(CWx, x0);
	y0 = canvas_NormalizedToPixelY(CWy, y0);
	canvas_point = canvas_DrawPoint_withPixel(canvas, CWx, CWy, x0, y0, pixel_symb);
FinFuncion

Funcion canvas_rectangle <- canvas_DrawRectangle_Normalized(canvas, CWx, CWy, x0, y0, x1, y1)
    Definir canvas_rectangle Como Texto;
 	x0 = canvas_NormalizedToPixelX(CWx, x0);
	y0 = canvas_NormalizedToPixelY(CWy, y0);
	x1 = canvas_NormalizedToPixelX(CWx, x1);
	y1 = canvas_NormalizedToPixelY(CWy, y1);
    canvas_rectangle = canvas_DrawRectangle(canvas, CWx, CWy, x0, y0, x1, y1);
FinFuncion
//----[ NORMALIZED_TO (-1 ... 1 ) ]---------------------------------------------------[#]
//(w*0.5)(1+a) :: (h*0.5)(1-a)
Funcion pixel_index <- canvas_NormalizedToPixelX(cX, x)
	Definir pixel_index Como Entero;
	pixel_index = __private_NoramalizedToPixel(cX, x, "x");
FinFuncion

Funcion pixel_index <- canvas_NormalizedToPixelY(Cy, y_)
	Definir pixel_index Como Entero;
	pixel_index = __private_NoramalizedToPixel(Cy, y_, "y");
FinFuncion

Funcion pixel_index <- canvas_PixelXToNormalized(cX, x)
	Definir pixel_index Como Entero;
	pixel_index = __private_PixelToNormalized(cX, x, "x");
FinFuncion

Funcion pixel_index <- canvas_PixelYToNormalized(Cy, y_)
	Definir pixel_index Como Entero;
	pixel_index = __private_PixelToNormalized(Cy, y_, "y");
FinFuncion

Funcion c <- __private_PixelToNormalized(Dc, pixel_index, letter)
    Definir c Como Real;
    Definir s Como Entero;
    s = if_else(string_isEquals(letter, "x"), 1, -1);
    c = ((2 * pixel_index) / Dc - 1) * s;//TODO
FinFuncion

Funcion pixel_index <- __private_NoramalizedToPixel(Dc, norm_index, letter)
	Definir pixel_index Como Entero;
	norm_index = norm_index * if_else(string_isEquals(letter, "x"), 1, -1);
	pixel_index = math_min(math_truncate((Dc * 0.5) * math_sum(1, norm_index)), math_decrement(Dc));
FinFuncion
//..
Funcion result_canvas <- canvas_drawSubCanvas(canvas, cX, cY, subCanvas, sCX, sCY, x0, y0)
	Definir result_canvas, array_subCanvas Como Texto;
	Definir i, end_limit, visible_size, idx_arr Como Entero;
	Definir draw_x, draw_y, start_sub, end_sub Como Entero;
	Definir start_fit, end_fit, diff_fit, sub_start_x Como Entero;
	result_canvas = canvas;
	Si canvas_calculate_isOutOfCanvas(cX, cY, x0, y0, sCX, sCY) Entonces
		result_canvas = canvas;
	SiNo
		start_fit   = canvas_calculate_startFit(sCX, x0);
		end_fit     = canvas_calculate_endFit(sCX, x0, cX, start_fit);
		diff_fit    = math_minus(end_fit, start_fit);
		sub_start_x = start_fit;
		i           = canvas_calculate_source_IteratorStartIndex(y0);
		end_limit   = canvas_calculate_source_iteratorEndIndex(cY, sCY, y0);
		Si end_limit > i Y diff_fit > 0 Entonces
			visible_size = math_minus(end_limit, i);
			Dimension array_subCanvas[visible_size];
			idx_arr      = 0;
			start_sub    = math_sum(canvas_calculate_index(0, i, sCX), sub_start_x);
			Mientras i < end_limit Hacer
				end_sub                  = math_sum(start_sub, diff_fit);
				array_subCanvas[idx_arr] = string_substring(subCanvas, start_sub, end_sub);
				idx_arr                  = math_increment(idx_arr);
				start_sub                = math_sum(start_sub, sCX);
				i                        = math_increment(i);
			FinMientras
			draw_x        = canvas_calculate_ensureCoord(x0);
			draw_y        = canvas_calculate_ensureCoord(y0);
			result_canvas = canvas_drawArrayString_force(canvas, cX, cY, array_subCanvas, visible_size, draw_x, draw_y);
		FinSi
	FinSi
FinFuncion

Funcion result_canvas <- canvas_drawArrayString(canvas, cX, cY, array_string, array_size, x0, y0)
	Definir result_canvas, array_trimmed Como Texto;
	Definir i, end_limit, visible_size, draw_x, draw_y Como Entero;
	Definir line_sCX, line_start_fit, line_end_fit, idx_arr Como Entero;
	result_canvas = canvas;
	i             = canvas_calculate_source_IteratorStartIndex(y0);
	end_limit     = canvas_calculate_source_iteratorEndIndex(cY, array_size, y0);
	Si end_limit > i Entonces
		visible_size = math_minus(end_limit, i);
		Dimension array_trimmed[visible_size];
		idx_arr      = 0;
		Mientras i < end_limit Hacer
			line_sCX       = string_length(array_string[i]);
			line_start_fit = canvas_calculate_startFit(line_sCX, x0);
			line_end_fit   = canvas_calculate_endFit(line_sCX, x0, cX, line_start_fit);
			Si line_start_fit < line_end_fit Entonces
				array_trimmed[idx_arr] = string_substring(array_string[i], line_start_fit, line_end_fit);
			SiNo
				array_trimmed[idx_arr] = "";
			FinSi
			idx_arr = math_increment(idx_arr);
			i       = math_increment(i);
		FinMientras
		draw_y        = canvas_calculate_ensureCoord(y0);
		draw_x        = canvas_calculate_ensureCoord(x0);
		result_canvas = canvas_drawArrayString_force(canvas, cX, cY, array_trimmed, visible_size, draw_x, draw_y);
	FinSi
FinFuncion

Funcion result_canvas <- canvas_drawArrayString_force(canvas, cX, cY, array_string, array_size, x0, y0)
    Definir result_canvas, drawX Como Texto;
    Definir i, y_draw, post_text Como Entero;
    result_canvas = canvas;
    y_draw        = y0;
    post_text     = canvas_calculate_index(x0, y_draw, cX);
    i             = 0;
    Mientras i < array_size Hacer
        drawX         = array_string[i];
        result_canvas = string_insert_withReplace(result_canvas, drawX, post_text);
        y_draw        = math_increment(y_draw);
        post_text     = math_sum(post_text, cX);
        i             = math_increment(i);
    FinMientras
FinFuncion
//----[ COMPLEX_DRAW ]--------------------------------------------------------------[#]
Funcion result_canvas <- canvas_DrawRectanglePoint(canvas, cX, cY, x0, y0, x1, y1, pixel)
	Definir result_canvas Como Texto;
	result_canvas = canvas_DrawRectanglePoint_withPixels(canvas, cX, cY, x0, y0, x1, y1, pixel, pixel);
FinFuncion

Funcion result_canvas <- canvas_DrawRectanglePoint_withPixels(canvas, cX, cY, x0, y0, width, height, pixel_t, pixel_b)
    Definir result_canvas Como Texto;
    Definir x1, y1        Como Entero;
    x1              = math_decrement(math_sum(x0, width));
    y1              = math_decrement(math_sum(y0, height));
    result_canvas   = canvas;
    result_canvas   = canvas_DrawPoint_withPixel(result_canvas, cX, cY, x0, y0, pixel_t);
    result_canvas   = canvas_DrawPoint_withPixel(result_canvas, cX, cY, x1, y0, pixel_t);
    result_canvas   = canvas_DrawPoint_withPixel(result_canvas, cX, cY, x1, y1, pixel_b);
    result_canvas   = canvas_DrawPoint_withPixel(result_canvas, cX, cY, x0, y1, pixel_b);
FinFuncion

Funcion result_canvas <- canvas_DrawLine_Horizontal(canvas, cX, cY, x0, y0, width)
	Definir result_canvas Como Texto;
	result_canvas = canvas_DrawLine_Horizontal_withPixel(canvas, cX, cY, x0, y0, width, "_");
FinFuncion

Funcion result_canvas <- canvas_DrawLine_Horizontal_withPixel(canvas, cX, cY, x0, y0, x1, pixel)
	Definir result_canvas, head_chunk, tail_chunk, middle_chunk Como Texto;
	Definir length_rest Como Entero;
	Definir  head_end, tail_start, l_repeats Como Entero;
	result_canvas = canvas;
	l_repeats = math_minus(x1,x0);
	si l_repeats >= 0 Entonces
		head_end = math_decrement(canvas_calculate_index(x0, y0, cX));
		si head_end >= 0 Entonces
			head_chunk = native_string_substring(canvas, 0, head_end);
		FinSi
		l_repeats = math_increment(l_repeats);
		tail_start = math_increment(math_sum(head_end, l_repeats));
		tail_chunk = native_string_substring(canvas, tail_start, string_length(canvas));
		middle_chunk = string_repeatText(pixel, l_repeats);
		result_canvas = String_append_withSeparator(head_chunk, tail_chunk, middle_chunk);
	FinSi
FinFuncion

Funcion result_canvas <- canvas_DrawLine_Vertical(canvas, cX, cY, x0, y0, height)
	Definir result_canvas Como Texto;
	result_canvas = canvas_DrawLine_Vertical_withPixel(canvas, cX, cY, x0, y0, height,  "|");
FinFuncion

Funcion result_canvas <- canvas_DrawLine_Vertical_withPixel(canvas, cX, cY, x0, y0, y1, pixel)
    Definir result_canvas, head, middle, tail, lineSuffix Como Texto;
    Definir firstIdx, lastIdx, rowWidth, startCut, endCut, rowCount, i Como Entero;
    firstIdx = canvas_calculate_index(x0, y0, cX);
    head = native_string_substring(canvas, 0, math_decrement(firstIdx));
    lastIdx = canvas_calculate_index(x0, y1, cX);
    tail = native_string_substring(canvas, math_increment(lastIdx), string_length(canvas));
    rowWidth = math_decrement(cX);
    startCut = math_increment(firstIdx);
    endCut = math_sum(firstIdx, rowWidth);
    rowCount = math_decrement(math_minus(y1, y0));
    middle = "";
    Para i = 0 Hasta rowCount Con Paso 1 Hacer
        lineSuffix = native_string_substring(canvas, startCut, endCut);
        middle = String_append_withSeparator(middle, lineSuffix, pixel);
        startCut = math_sum(startCut, cX);
        endCut = math_sum(endCut, cX);
    FinPara
    middle = String_append(middle, pixel);
    result_canvas = String_append_withSeparator(head, tail, middle);
FinFuncion

Funcion result_canvas <- canvas_DrawLine_Horizontal_Full(canvas, cX, cY, y0)
	Definir result_canvas Como Texto;
	result_canvas = canvas_DrawLine_Horizontal(canvas, cX, cY, 0, y0, cX);
FinFuncion

Funcion result_canvas <- canvas_DrawLine_Vertical_Full(canvas, cX, cY, x0)
	Definir result_canvas Como Texto;
	result_canvas = canvas_DrawLine_Vertical(canvas, cX, cY, x0, 0, Cy);
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion pixel <- pixel_clear
	Definir pixel Como Texto;
	pixel =  get_pixel_withIndex(0);
FinFuncion

Funcion pixel <- pixel_plain
	Definir pixel Como Texto;
	pixel = get_pixel_withIndex(1);
FinFuncion

Funcion pixel <- pixel_medium
	Definir pixel Como Texto;
	pixel = get_pixel_withIndex(2);
FinFuncion

Funcion pixel <- pixel_bold
	Definir pixel Como Texto;
	pixel = get_pixel_withIndex(3);
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
///%%%%%[ SPRITE.................. ]%%%%%%%[   #SPR    ]%%%%%%%%%%%%%%%%%%%%
Funcion sprite_string <- spriteString_new
	Definir sprite_string Como Texto;
	sprite_string = collectionUniform_new(tComponent_SIMPLENAME_SPRITE_STRING(), TYPE_STRING(), collection_getMinDataLength());
FinFuncion
//----[ GETTERS ]----------------------------------------------------[#]
Funcion length_MaxLine <- spriteString_getWidth(sprite_string)
	Definir length_MaxLine Como Entero;
	length_MaxLine = collectionUniform_getUniformLength(sprite_string);
FinFuncion

Funcion height_lines <- spriteString_getHeight(sprite_string)
	Definir height_lines Como Entero;
	height_lines = collection_getSize(sprite_string);
FinFuncion
//----[ UTILITIES ]----------------------------------------------------[#]
Funcion fit_element <- spriteString_fitElement(element_string, length_fit)
	Definir fit_element Como Texto;
	fit_element = collection_fitEndData_withSymbol(element_string, length_fit, pixel_clear());
FinFuncion

Funcion isSpriteValid <- spriteString_isSpriteValid(sprite_string)
	Definir isSpriteValid Como Logico;
	isSpriteValid = collection_isExpectedName(sprite_string, tComponent_SIMPLENAME_SPRITE_STRING());
FinFuncion

Funcion result_spriteString <- spriteString_modifyLine_strict(sprite_string, index_line, part_modify, start_index)
    Definir result_spriteString, line_String, line_result Como Texto;
	line_String         = collectionUniform_get_ToLeft_byString(sprite_string, index_line);
	line_result         = string_insert_withReplace(line_String, part_modify, start_index);
	result_spriteString = collectionUniform_setFit_ToRight_byString(sprite_string, index_line, line_result);
FinFuncion

Funcion result_spriteString <- spriteString_modifyLine(sprite_string, index_line, part_modify, start_index, end_index)
	Definir result_spriteString Como Texto;
	result_spriteString <- spriteString_modifyLine_withPixel(sprite_string, index_line, part_modify, start_index, end_index, pixel_clear());
FinFuncion

Funcion result_spriteString <- spriteString_modifyLine_withPixel(sprite_string, index_line, part_modify, start_index, end_index, pixel_custom)
    Definir result_spriteString, mold_string Como Texto;
	Definir diff_length Como Entero;
	Si end_index >= start_index Entonces
		diff_length         = math_minus(end_index, start_index);
		mold_string         = string_repeatText(pixel_custom, diff_length);
		part_modify         = string_fit_end(part_modify, mold_string);
		result_spriteString = spriteString_modifyLine_strict(sprite_string, index_line, part_modify, start_index);
	SiNo
		log_error_function("spriteString_modifyLine()", "index out of range");
		result_spriteString = sprite_string;
	FinSi
FinFuncion

Funcion result_spriteString <- spriteString_writeLine(sprite_string, index_line, part_modify, start_index)
    Definir result_spriteString, line_String, line_result Como Texto;
	line_String         = collectionUniform_get_toLeft_byString(sprite_string, index_line);
	line_result         = string_insert(line_String, part_modify, start_index);
	result_spriteString = spriteString_setLine(sprite_string, line_result, index_line);
FinFuncion

Funcion result_spriteString <- spriteString_setLine(sprite_string, index_line, line_String)
	Definir result_spriteString Como Texto;
	result_spriteString = spriteString_setLine_withPixel(sprite_string, index_line, line_String, pixel_clear());
FinFuncion

Funcion result_spriteString <- spriteString_setLine_withPixel(sprite_string, index_line, line_String, pixel_custom)
	safe_spriteString   = collectionUniform_ensureCapacity_withConfig(sprite_string, line_String, pixel_custom, false(), true());
	norm_line           = collection_fitEndData_withSymbol(line_String, spriteString_getWidth(safe_spriteString), pixel_custom);
	result_spriteString = collectionUniform_set_toLeft_byString(safe_spriteString, index_line, line_String);
FinFuncion

Funcion result_spriteString <- spriteString_addLine(sprite_string, line_String)
	Definir result_spriteString Como Texto;
	result_spriteString = spriteString_addLine_withPixel(sprite_string, line_String, pixel_clear());
FinFuncion

Funcion result_spriteString <- spriteString_addLine_withPixel(sprite_string, line_String, pixel_custom)
	Definir result_spriteString, safe_spriteString, norm_line Como Texto;
	Definir collection_size Como Entero;
	safe_spriteString   = collectionUniform_ensureCapacity_withConfig(sprite_string, line_String, pixel_custom, false(), true());
	norm_line           = collection_fitEndData_withSymbol(line_String, spriteString_getWidth(safe_spriteString), pixel_custom);
	result_spriteString = collection_add_toRight_byString_force(safe_spriteString, norm_line);
	result_spriteString = collection_incrementSize(result_spriteString);
FinFuncion

Funcion result_spriteString <- spriteString_CleanLine(sprite_string, index_line)
	Definir result_spriteString Como Texto;
	result_spriteString = spriteString_CleanLine_withPixel(sprite_string, index_line, pixel_clear()); 
FinFuncion

Funcion result_spriteString <- spriteString_CleanLine_withPixel(sprite_string, index_line, pixel_custom)
	Definir result_spriteString Como Texto;
	result_spriteString = spriteString_setLine_withPixel(sprite_string, index_line, "", pixel_custom);
FinFuncion

Funcion result_spriteString <- spriteString_removeLine(sprite_string, index_line)
	Definir result_spriteString Como Texto;
	result_spriteString = collectionUniform_remove_ToLeft(sprite_string, index_line);
FinFuncion
//----[ DRAW_SPRITESTRING ]----------------------------------------------------------[#]
Funcion result_canvas <- spriteString_drawToCanvas_Mode(canvas, cX, Cy, sprite_string, x0, y0, pixel_target, SPRITE_MODE)
    Definir result_canvas, sprite_content Como Texto;
    Definir sCY, sCX, start_sub, end_sub Como Entero;   
    sCY             = spriteString_getHeight(sprite_string);
    sCX             = spriteString_getWidth(sprite_string);
    start_sub       = collection_getIndex_StartData(sprite_string);
    end_sub         = collection_getIndex_byLength(sCX, sCY, start_sub);
    sprite_content  = string_substring(sprite_string, start_sub, end_sub);
    result_canvas   = spriteString_content_drawToCanvas_Mode(canvas, cX, Cy, sprite_content, sCX, sCY, x0, y0, pixel_target, SPRITE_MODE);
FinFuncion

Funcion result_canvas <- spriteString_content_drawToCanvas_Mode(canvas, cX, Cy, sprite_content, sCX, sCY, x0, y0, pixel_target, SPRITE_MODE)
    Definir result_canvas, line_canvas, array_canvas Como Texto;
    Definir i, size_norm, start_sub, end_sub Como Entero;
    Definir is_valid_dims Como Logico;
    is_valid_dims   = sCY > 0 & sCX > 0;
    Si Cy >= 0 & is_valid_dims Entonces
        size_norm       = math_decrement(sCY);
        Dimension array_canvas[sCY];
        start_sub       = 0;
        Para i = 0 Hasta size_norm Con Paso 1 Hacer
            end_sub         = math_sum(start_sub, sCX);
            line_canvas     = string_substring(sprite_content, start_sub, end_sub);
            array_canvas[i] = line_canvas;
            start_sub       = end_sub;
        FinPara
        result_canvas = sprite_drawToCanvas_Mode(canvas, cX, Cy, array_canvas, sCY, x0, y0, pixel_target, SPRITE_MODE);
    SiNo
        result_canvas = canvas;
    FinSi
FinFuncion

Funcion result_canvas <- sprite_drawToCanvas_Mode(canvas, Cx, Cy, array_sprite, array_size, x0, y0, pixel_target, SPRITE_MODE)
	Definir result_canvas Como Texto;
	Segun SPRITE_MODE Hacer
		caso SPRITE_MODE_NONE():
			result_canvas = sprite_drawToCanvas(canvas, Cx, Cy, array_sprite, array_size, x0, y0);
		caso SPRITE_MODE_TRIMMED():
			result_canvas = sprite_drawToCanvas_Mode_trimmed(canvas, Cx, Cy, array_sprite, array_size, x0, y0, pixel_target);
		caso SPRITE_MODE_TRANSPARENT():
			result_canvas = sprite_drawToCanvas_Mode_transparent(canvas, Cx, Cy, array_sprite, array_size, x0, y0, pixel_target);
		De Otro Modo:
			log_error_function("sprite_toCanvas_applyEffect()", "SPRITE_EFFECT no valid");
			result_canvas = canvas;
	FinSegun
FinFuncion

Funcion result_canvas <- sprite_drawToCanvas(canvas, Cx, Cy, array_sprite, array_size, x0, y0)
	Definir result_canvas Como Texto;
	result_canvas = canvas_drawArrayString(canvas, cX, cY, array_sprite, array_size, x0, y0);
FinFuncion

Funcion result_canvas <- sprite_drawToCanvas_Mode_trimmed(canvas, Cx, Cy, array_sprite, array_size, x0, y0, pixel_target)
    Definir result_canvas, canvas_background Como Texto;
    Definir i, end_limit, index_startDraw, index_endDraw Como Entero;
	Definir index_crop, index_startSub, index_endSub, length_line Como Entero;
    i          = canvas_calculate_source_IteratorStartIndex(y0);
    end_limit  = canvas_calculate_source_iteratorEndIndex(Cy, array_size, y0);
    index_crop = canvas_calculate_ensureCoord(y0) * cX;
    Mientras i < end_limit Hacer
        length_line       = native_string_length(array_sprite[i]);
        index_startDraw   = spriteString_content_getIndex_StartDraw(array_sprite[i], pixel_target, 0);
        index_endDraw     = spriteString_content_getIndex_EndDraw(array_sprite[i], pixel_target, length_line);
        canvas_background = string_substring(canvas, index_crop, math_sum(index_crop, index_startDraw));
        array_sprite[i]   = string_insert_withReplace(array_sprite[i], canvas_background, 0);
        array_sprite[i]   = string_remove(array_sprite[i], index_endDraw, length_line);
        index_crop        = math_sum(index_crop, Cx);
        i                 = math_increment(i);
    FinMientras
    result_canvas = sprite_drawToCanvas(canvas, Cx, Cy, array_sprite, array_size, x0, y0);
FinFuncion

Funcion result_canvas <- sprite_drawToCanvas_Mode_transparent(canvas, Cx, Cy, array_sprite, array_size, x0, y0, pixel_target)
	Definir result_canvas, segment_bg, current_segment Como Texto;
	Definir i, index_start, end_limit, size_norm, j, length_line Como Entero;
	Definir canvas_idx, run_length, pixel_len, total_chars Como Entero;
	Definir current_row_base, start_fit, end_fit, line_len Como Entero;
	pixel_len   = native_string_length(pixel_target);
	index_start = canvas_calculate_source_IteratorStartIndex(y0);
	end_limit   = canvas_calculate_source_iteratorEndIndex(Cy, array_size, y0);
	Si index_start < end_limit Entonces
		size_norm        = math_decrement(end_limit);
		current_row_base = canvas_calculate_Index(canvas_calculate_ensureCoord(x0), math_sum(y0, index_start), Cx);
		Para i = index_start Hasta size_norm Con Paso 1 Hacer
			line_len  = native_string_length(array_sprite[i]);
			start_fit = canvas_calculate_startFit(line_len, x0);
			end_fit   = canvas_calculate_endFit(line_len, x0, Cx, start_fit);
			j         = start_fit;
			Mientras j < end_fit Hacer
				current_segment = string_substring(array_sprite[i], j, math_sum(j, pixel_len));
				Si string_isEquals(current_segment, pixel_target) Entonces
					run_length      = string_countMatches_strict(array_sprite[i], pixel_target, j, pixel_len);
					total_chars     = run_length * pixel_len;
					Si math_sum(j, total_chars) > end_fit Entonces
						total_chars = math_minus(end_fit, j);
					FinSi
					canvas_idx      = math_sum(current_row_base, math_minus(j, start_fit));
					segment_bg      = string_substring(canvas, canvas_idx, math_sum(canvas_idx, total_chars));
					array_sprite[i] = string_insert_withReplace(array_sprite[i], segment_bg, j);
					j               = math_sum(j, total_chars);
				SiNo
					j = math_sum(j, pixel_len);
				FinSi
			FinMientras
			current_row_base = math_sum(current_row_base, Cx);
		FinPara
	FinSi
	result_canvas = sprite_drawToCanvas(canvas, Cx, Cy, array_sprite, array_size, x0, y0);
FinFuncion

Funcion index_interruption <- spriteString_content_getIndex_startDraw(text, strip_text, index_start)
    Definir index_interruption, length_text, length_match Como Entero;
    Definir start_sub, end_sub Como Entero;
    Definir current_text Como Texto;
    Definir is_match Como Logico;
    length_text        = native_string_length(text);
    length_match       = native_string_length(strip_text);
    start_sub          = index_start;
    end_sub            = math_sum(start_sub, length_match);
    index_interruption = start_sub;
    is_match           = true();
    Mientras end_sub <= length_text & is_match Hacer
        current_text       = string_substring(text, start_sub, end_sub);
        is_match           = string_isEquals(current_text, strip_text);
		index_interruption = start_sub;
		start_sub          = math_increment(start_sub);
		end_sub            = math_increment(end_sub);
    FinMientras
FinFuncion

Funcion index_interruption <- spriteString_content_getIndex_endDraw(text, strip_text, index_start)
    Definir index_interruption, length_text, length_match Como Entero;
    Definir start_sub, end_sub Como Entero;
    Definir current_text Como Texto;
    Definir is_match Como Logico;
    length_text        = native_string_length(text);
    length_match       = native_string_length(strip_text);
    end_sub            = index_start;
    start_sub          = math_minus(end_sub, length_match);
    index_interruption = end_sub;
    is_match           = true();
    Mientras start_sub > 0 & is_match Hacer
        current_text       = string_substring(text, start_sub, end_sub);
        is_match           = string_isEquals(current_text, strip_text);
		index_interruption = end_sub;
		end_sub            = math_decrement(end_sub);
		start_sub          = math_decrement(start_sub);
    FinMientras
FinFuncion
//----[ EFFECT ]----------------------------------------------------[#]
Funcion canvas_sprite <- spriteString_toCanvas(sprite_string)
	Definir canvas_sprite Como Texto;
	canvas_sprite = spriteString_toCanvas_applyEffect(sprite_string, SPRITE_EFFECT_NONE());
FinFuncion

Funcion result_spriteString <- spriteString_applyEffect(sprite_string, SPRITE_EFFECT)
	Definir result_spriteString, result_canvas Como Texto;
	Definir start_insert Como Entero;
	start_insert        = collection_getIndex_StartData(sprite_string);
	result_canvas       = spriteString_toCanvas_applyEffect(sprite_string, SPRITE_EFFECT);
	result_spriteString = string_insert_withReplace(sprite_string, result_canvas, start_insert);
FinFuncion

Funcion result_canvas <- spriteString_toCanvas_applyEffect(sprite_string, SPRITE_EFFECT)
	Definir result_canvas, canvas Como Texto;
	Definir cX, cY, start_sub, end_sub Como Entero;
	cX                  = spriteString_getWidth(sprite_string);
	Cy                  = spriteString_getHeight(sprite_string);
	start_sub           = collection_getIndex_StartData(sprite_string);
	end_sub             = collection_getIndex_byLength(cX, cY, start_sub);
	canvas              = string_substring(sprite_string, start_sub, end_sub);
	Si (SPRITE_EFFECT == SPRITE_EFFECT_NONE()) Entonces
		result_canvas = canvas;	
	Sino
		result_canvas = spriteString_content_toCanvas_applyEffect(canvas, cX, cY, SPRITE_EFFECT);
	FinSi
FinFuncion

Funcion result_canvas <- spriteString_content_toCanvas_applyEffect(spriteCanvas, sCX, sCY, SPRITE_EFFECT)
	Definir result_canvas, array_canvas, line_canvas Como Texto;
	Definir i, size_norm , start_sub, end_sub, end_size Como Entero;
	Si sCY > 0 Entonces
		Dimension array_canvas[sCY];
		start_sub = 0;
		size_norm = math_decrement(sCY);
		Para i = 0 Hasta size_norm Con Paso 1 Hacer
			end_sub         = math_sum(start_sub, sCX);
			line_canvas     = string_substring(spriteCanvas, start_sub, end_sub);
			array_canvas[i] = line_canvas;
			start_sub       = end_sub;
		FinPara
		result_canvas = sprite_toCanvas_applyEffect(array_canvas, sCY, SPRITE_EFFECT);
	SiNo
		result_canvas = canvas;
	FinSi
FinFuncion

Funcion result_canvas <- sprite_toCanvas_applyEffect(array_sprite, size_sprite, SPRITE_EFFECT)
	Definir result_canvas Como Texto;
    Segun SPRITE_EFFECT Hacer
        SPRITE_EFFECT_NONE():
            result_canvas = sprite_toCanvas(array_sprite, size_sprite);
		SPRITE_EFFECT_FLIP_HORIZONTAL():
            result_canvas = sprite_toCanvas_flipHorizontal(array_sprite, size_sprite);
        SPRITE_EFFECT_FLIP_VERTICAL():
            result_canvas = sprite_toCanvas_flipVertical(array_sprite, size_sprite);
		SPRITE_EFFECT_ROTATION_180():
			result_canvas = sprite_toCanvas_rotation180(array_sprite, size_sprite);
		SPRITE_EFFECT_ROTATION_90():
			result_canvas = sprite_toCanvas_rotation90(array_sprite, size_sprite);
        SPRITE_EFFECT_COUNTER_ROTATION_90():
			result_canvas = sprite_toCanvas_counter_rotation90(array_sprite, size_sprite);
        De Otro Modo:
			log_error_function("sprite_toCanvas_applyEffect()", "SPRITE_EFFECT no valid");
            result_canvas = string_NULL();
    FinSegun
FinFuncion

Funcion result_canvas <- sprite_toCanvas(array_sprite, size_sprite)
	Definir result_canvas, canvas_sprite Como Texto;
	Definir i, size_norm Como Entero;
	result_canvas = "";
	size_norm = math_decrement(size_sprite);
	Para i = 0 Hasta size_norm Con Paso 1 Hacer 
		canvas_sprite = string_append(canvas_sprite, array_sprite[i]);
	FinPara
	result_canvas = canvas_sprite;
FinFuncion

Funcion result_canvas <- sprite_toCanvas_flipHorizontal(array_sprite, size_sprite)
	Definir result_canvas, symbol_array Como Texto;
	Definir size_symb, i, size_norm Como Entero;
	size_symb = 10;
	Dimension symbol_array[size_symb];
    symbol_array[0] = "(";symbol_array[1] = ")";
    symbol_array[2] = "<";symbol_array[3] = ">";
    symbol_array[4] = "[";symbol_array[5] = "]";
    symbol_array[6] = "{";symbol_array[7] = "}";
    symbol_array[8] = "\";symbol_array[9] = "/";
	result_canvas = "";
	size_norm = math_decrement(size_sprite);
	Para i = 0 Hasta size_norm Con Paso 1 Hacer 
		array_sprite[i] = sprite_lineReverse_fromCaracters(array_sprite[i], symbol_array, size_symb);
	FinPara
	result_canvas = sprite_toCanvas(array_sprite, size_sprite);
FinFuncion

Funcion result_canvas <- sprite_toCanvas_flipVertical(array_sprite, size_sprite)
	Definir result_canvas, symbol_array, array_invert Como Texto;
	Definir size_symb, i, j Como Entero;
	size_symb = 12;
	Dimension symbol_array[size_symb];
	Dimension array_invert[size_symb];
    symbol_array[0] = "(";symbol_array[1] = ")";
    symbol_array[2] = "<";symbol_array[3] = ">";
    symbol_array[4] = "[";symbol_array[5] = "]";
    symbol_array[6] = "{";symbol_array[7] = "}";
    symbol_array[8] = "_";symbol_array[9] = "¯";
    symbol_array[10] = "\";symbol_array[11] = "/";
	i = math_decrement(size_sprite);
	j = 0;
	result_canvas = "";
	Mientras i >= 0 Hacer
		array_invert[j] = sprite_lineSwap_fromCaracters(array_sprite[i], symbol_array, size_symb);
		i               = math_decrement(i);
		j               = math_increment(j);
	FinMientras
	result_canvas = sprite_toCanvas(array_invert, size_sprite);
FinFuncion

Funcion result_canvas <- sprite_toCanvas_rotation180(array_sprite, size_sprite)
	Definir result_canvas, symbol_array, sprite_canvas Como Texto;
	Definir size_symb  Como Entero;
	size_symb = 12;
	Dimension symbol_array[size_symb];
    symbol_array[0] = "(";symbol_array[1] = ")";
    symbol_array[2] = "<";symbol_array[3] = ">";
    symbol_array[4] = "[";symbol_array[5] = "]";
    symbol_array[6] = "{";symbol_array[7] = "}";
    symbol_array[8] = "_";symbol_array[9] = "¯";
	sprite_canvas = sprite_toCanvas(array_sprite, size_sprite);
	result_canvas = sprite_lineReverse_fromCaracters(sprite_canvas, symbol_array, size_symb);
FinFuncion

Funcion result_canvas <- sprite_toCanvas_rotation90(array_sprite, size_sprite)
    Definir result_canvas Como Texto;
    result_canvas = sprite_toCanvas_router(array_sprite, size_sprite, true());
FinFuncion

Funcion result_canvas <- sprite_toCanvas_counter_rotation90(array_sprite, size_sprite)
    Definir result_canvas Como Texto;
    result_canvas = sprite_toCanvas_router(array_sprite, size_sprite, false());
FinFuncion

Funcion result_canvas <- sprite_toCanvas_router(array_sprite, size_sprite, is_rotation90)
    Definir result_canvas, clear_char Como Texto;
    Definir symbol_array, transformed_array Como Texto;
    Definir size_symb, orig_width, orig_height, max_i, max_j Como Entero;
    size_symb = 14;
    Dimension symbol_array[size_symb];
    symbol_array[0]  = "(";symbol_array[1]  = "n";
    symbol_array[2]  = ")";symbol_array[3]  = "u";
    symbol_array[4]  = "<";symbol_array[5]  = "^";
    symbol_array[6]  = ">";symbol_array[7]  = "v";
    symbol_array[8]  = "-";symbol_array[9]  = "¦";
    symbol_array[10] = "_";symbol_array[11] = "|";
    symbol_array[12] = "\";symbol_array[13] = "/";
    orig_height = size_sprite;
    orig_width = string_length(array_sprite[0]);
    Dimension transformed_array[orig_height];
    clear_char = "x";
    max_i = math_decrement(orig_height);
    max_j = math_decrement(orig_width);
    Si is_rotation90 Entonces
        result_canvas = sprite_rotation90_loop(array_sprite, symbol_array, size_symb, transformed_array, orig_height, orig_width, max_i, max_j, clear_char);
    Sino
        result_canvas = sprite_counter_rotation90_loop(array_sprite, symbol_array, size_symb, transformed_array, orig_height, orig_width, max_i, max_j, clear_char);
    FinSi
FinFuncion

Funcion result_canvas <- sprite_rotation90_loop(array_sprite, symbol_array, size_symb, transformed_array, orig_height, orig_width, max_i, max_j, clear_char)
    Definir result_canvas, char_norm, current_row Como Texto;
    Definir i, j, src_row, src_col Como Entero;
    Para i = 0 Hasta max_i Con Paso 1 Hacer
        current_row = "";
        Para j = 0 Hasta max_j Con Paso 1 Hacer
            Si (i < orig_width) & (j < orig_height) Entonces
                src_row = math_minus(max_i, j);
                src_col = i;
                char_norm = sprite_charSwap_fromCaracters(char_at(array_sprite[src_row], src_col), symbol_array, size_symb);
                current_row = string_append(current_row, char_norm);
            Sino
                current_row = string_append(clear_char, current_row);
            FinSi
        FinPara
        transformed_array[i] = current_row;
    FinPara
    result_canvas = sprite_toCanvas(transformed_array, orig_height);
FinFuncion

Funcion result_canvas <- sprite_counter_rotation90_loop(array_sprite, symbol_array, size_symb, transformed_array, orig_height, orig_width, max_i, max_j, clear_char)
    Definir result_canvas, char_norm, current_row Como Texto;
    Definir i, j, src_row, src_col Como Entero;
    Para i = 0 Hasta max_i Con Paso 1 Hacer
        current_row = "";
        Para j = 0 Hasta max_j Con Paso 1 Hacer
            Si (i < orig_width) & (j < orig_height) Entonces
                src_row = j;
                src_col = math_minus(max_j, i);
                char_norm = sprite_charSwap_fromCaracters(char_at(array_sprite[src_row], src_col), symbol_array, size_symb);
                current_row = string_append(current_row, char_norm);
            Sino
                current_row = string_append(current_row, clear_char);
            FinSi
        FinPara
        transformed_array[i] = current_row;
    FinPara
    result_canvas = sprite_toCanvas(transformed_array, orig_height);
FinFuncion
//----[ SPRITE_DISPLAY ]----------------------------------------------------[#]
Funcion spriteString_display(sprite_string)
	spriteString_display_monocolor(sprite_string, COLOR_GREEN());
FinFuncion

Funcion spriteString_display_monocolor(sprite_string, color)
    Definir canvas Como Texto;
	Definir cX, cY Como Entero;
	canvas = spriteString_toCanvas(sprite_string);
	cX     = spriteString_getWidth(sprite_string);
	Cy     = spriteString_getHeight(sprite_string);
	canvas_display_monoColor(canvas, cX, cY, color);
FinFuncion
//----[ REVERSE ]--------------------------------------------------------[#]
Funcion text_Reverse <- sprite_lineReverse_fromCaracters(text, array_Carathers, array_size)
    Definir text_Reverse, symbol_array, Char_Current Como Texto;
    Definir i, j, indexText Como Entero;
    text_Reverse = "";
    indexText = math_decrement(native_string_length(text));
    i = 0;
    Mientras i <= indexText  Hacer
        Char_Current = char_At(text, math_minus(indexText, i));
        si !string_isEquals(Char_Current, pixel_clear()) Entonces 
			Char_Current = sprite_charSwap_fromCaracters(Char_Current, array_Carathers, array_size);
		FinSi
        text_Reverse = string_append(text_Reverse, Char_Current);
        i = math_increment(i);
    FinMientras
FinFuncion

Funcion text_Result <- sprite_lineSwap_fromCaracters(text, array_Carathers, array_size)
    Definir text_Result, Char_Current Como Texto;
    Definir i, text_length Como Entero;
    text_Result = "";
    text_length = native_string_length(text);
    i = 0;
    Mientras i < text_length Hacer
        Char_Current = char_At(text, i);
        si !string_isEquals(Char_Current, pixel_clear()) Entonces 
            Char_Current = sprite_charSwap_fromCaracters(Char_Current, array_Carathers, array_size);
        FinSi
        text_Result = string_append(text_Result, Char_Current);
        i = math_increment(i);
    FinMientras
FinFuncion

Funcion char_Reverse <- sprite_charSwap_fromCaracters(char_, array_Carathers, array_size)
	Definir char_Reverse Como Texto;
	Definir i Como Entero;
	char_Reverse = char_;
	si !string_isEquals(char_Reverse, " ") Entonces
		Mientras i < array_size Hacer
			Si char_Reverse == array_Carathers[i] Entonces
				Si native_math_module(i, 2) == 0 Entonces
					char_Reverse = array_Carathers[math_increment(i)];
				SiNo
					char_Reverse = array_Carathers[math_decrement(i)];
				FinSi
				i = array_size;
			SiNo
				i = math_increment(i);
			FinSi
		FinMientras;
	FinSi
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion SPRITE_MODE <- SPRITE_MODE_NONE
    Definir SPRITE_MODE Como Texto;
    SPRITE_MODE = "NONE";
FinFuncion

Funcion SPRITE_MODE <- SPRITE_MODE_TRIMMED
    Definir SPRITE_MODE Como Texto;
    SPRITE_MODE = "TRIMMED";
FinFuncion

Funcion SPRITE_MODE <- SPRITE_MODE_TRANSPARENT
    Definir SPRITE_MODE Como Texto;
    SPRITE_MODE = "TRANSPARENT";
FinFuncion

Funcion SPRITE_MODE <- SPRITE_EFFECT_NONE
    Definir SPRITE_MODE Como Texto;
    SPRITE_MODE = "NONE";
FinFuncion

Funcion SPRITE_EFFECT <- SPRITE_EFFECT_ROTATION_180
    Definir SPRITE_EFFECT Como Texto;
    SPRITE_EFFECT = "ROTATION_180";
FinFuncion

Funcion SPRITE_EFFECT <- SPRITE_EFFECT_ROTATION_90
    Definir SPRITE_EFFECT Como Texto;
    SPRITE_EFFECT = "ROTATION_90";
FinFuncion

Funcion SPRITE_EFFECT <- SPRITE_EFFECT_COUNTER_ROTATION_90
    Definir SPRITE_EFFECT Como Texto;
    SPRITE_EFFECT = "COUNTER_ROTATION_90";
FinFuncion

Funcion SPRITE_EFFECT <- SPRITE_EFFECT_FLIP_HORIZONTAL
    Definir SPRITE_EFFECT Como Texto;
    SPRITE_EFFECT = "FLIP_H";
FinFuncion

Funcion SPRITE_EFFECT <- SPRITE_EFFECT_FLIP_VERTICAL
    Definir SPRITE_EFFECT Como Texto;
    SPRITE_EFFECT = "FLIP_V";
FinFuncion
///%%%%%[ tcomponent.............. ]%%%%%%%[   #TCO    ]%%%%%%%%%%%%%%%%%%%%
Funcion result_tcomponent <- tComponent_new(SIMPLENAME, x0, y0, width, height)
	Definir result_tcomponent, middle_tcomponent, base_tcomponent Como Texto;
	base_tcomponent   = collectionDictionary_new(STRUCT_TYPE_tcomponent(), TYPE_STRING(), TYPE_STRING());
	middle_tcomponent = tComponent_addTProperty_simpleName(base_tcomponent, SIMPLENAME);
	result_tcomponent = tComponent_addTProperty_bounds(middle_tcomponent, x0, y0, width, height);
FinFuncion
//----[ BOOLEANS ]----------------------------------------------------[#]
Funcion istcomponent <- tComponent_Istcomponent(interface_string)
	Definir istcomponent Como Logico;
	istcomponent = collection_isExpectedName(interface_string, STRUCT_TYPE_tcomponent());
FinFuncion

Funcion istcomponent <- tComponent_matchSimpleName(tComponent_target, tComponent_SIMPLENAME)
	Definir isTUI Como Logico;
	istcomponent = string_isEquals(tComponent_getTProperty_simpleName(tComponent_target), simpleName_tcomponent);
FinFuncion

Funcion THasInput <- tComponent_HasInput(tcomponent)
	Definir THasInput Como Logico;
	THasInput = collectionUniform_containsKey_toLeft(tcomponent, tProperty_input());
FinFuncion
//----[ ADD_PROPERTY ]--------------------------------------------------------------[#]
Funcion tComponent_Build <- tComponent_addTProperty(tcomponent, tProperty, value)
	Definir tComponent_Build Como Texto;
    tComponent_Build = collectionDictionary_put_byString(tcomponent, tProperty, value);
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty_input(tcomponent, input)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, tProperty_input(), input);
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty_text(tcomponent, text)
	Definir tComponent_Build Como Texto;
    tComponent_Build = tComponent_addTProperty(tcomponent, tProperty_text(), text);
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty_value(tcomponent, value)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, tProperty_value(), value);
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty_align(tcomponent, ALIGN_CONST)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, tProperty_align(), ALIGN_CONST);
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty_componets(tcomponent)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, tProperty_components(), "");
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty_mode(tcomponent, mode)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, tProperty_mode(), mode);
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty_canvas(tcomponent, canvas)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, tProperty_canvas(), canvas);
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty_parent(tcomponent, parent)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, tProperty_parent(), parent);
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty_visible(tcomponent, visible)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, tProperty_visible(), visible);
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty_simpleName(tcomponent, SIMPLENAME)
	Definir tComponent_Build Como Texto;
	tComponent_Build = tComponent_addTProperty(tcomponent, tProperty_simpleName(), SIMPLENAME);
FinFuncion

Funcion tComponent_Build <- tComponent_addTProperty_bounds(tcomponent, x0, y0, width, height)
	Definir tComponent_Build, bounds_tcomponent Como Texto;
	bounds_tcomponent = tComponent_parseValues_toBounds(x0, y0, width, height);
	tComponent_Build  = tComponent_addTProperty(tcomponent, tProperty_bounds(), bounds_tcomponent);
FinFuncion
//----[ GETTERS ]----------------------------------------------------[#]
Funcion tProperty <- tComponent_getTProperty(tComponent_target, type_TProperty)
	Definir tProperty Como Texto;
	tProperty = collectionDictionary_get_byString(tComponent_target, type_TProperty);
FinFuncion

Funcion tProperty <- tComponent_getTProperty_simpleName(tComponent_target)
	Definir tProperty Como Texto;
	tProperty = tComponent_getTProperty(tComponent_target, tProperty_simpleName());
FinFuncion

Funcion tProperty <- tComponent_getTProperty_bounds(tComponent_target)
	Definir tProperty Como Texto;
	tProperty = tComponent_getTProperty(tComponent_target, tProperty_bounds());
FinFuncion

Funcion tProperty <- tComponent_getTProperty_size(tComponent_target)
	Definir tProperty, bounds_tcomponent, size_tcomponent Como Texto;
	bounds_tcomponent = tComponent_getTProperty_bounds(tComponent_target);
	size_tcomponent   = tComponent_bounds_remove(bounds_tcomponent, 0);
	tProperty         = tComponent_bounds_remove(size_tcomponent, 0);
FinFuncion

Funcion tProperty <- tComponent_getTProperty_location(tComponent_target)
	Definir tProperty, bounds_tcomponent, location_tcomponent Como Texto;
	bounds_tcomponent   = tComponent_getTProperty_bounds(tComponent_target);
	location_tcomponent = tComponent_bounds_remove(bounds_tcomponent, 2);
	tProperty           = tComponent_bounds_remove(location_tcomponent, 2);
FinFuncion

Funcion tProperty <- tComponent_getTProperty_value(tComponent_target)
	Definir tProperty Como Texto;
	tProperty = tComponent_getTProperty(tComponent_target, tProperty_value());
FinFuncion

Funcion tProperty <- tComponent_getTProperty_input(tComponent_target)
	Definir tProperty Como Texto;
	tProperty = tComponent_getTProperty(tComponent_target, tProperty_input());
FinFuncion

Funcion tProperty <- tComponent_getTProperty_text(tComponent_target)
	Definir tProperty Como Texto;
	tProperty = tComponent_getTProperty(tComponent_target, tProperty_text());
FinFuncion

Funcion tProperty <- tComponent_getTProperty_align(tComponent_target)
	Definir tProperty Como Texto;
	tProperty = tComponent_getTProperty(tComponent_target, tProperty_align());
FinFuncion

Funcion tProperty <- tComponent_getTProperty_mode(tComponent_target)
	Definir tProperty Como Texto;
	tProperty = tComponent_getTProperty(tComponent_target, tProperty_mode());
FinFuncion

Funcion tProperty <- tComponent_getTProperty_canvas(tComponent_target)
	Definir tProperty Como Texto;
	tProperty = tComponent_getTProperty(tComponent_target, tProperty_canvas());
FinFuncion

Funcion tProperty <- tComponent_getTProperty_parent(tComponent_target)
	Definir tProperty Como Texto;
	tProperty = tComponent_getTProperty(tComponent_target, tProperty_parent());
FinFuncion

Funcion tProperty <- tComponent_getTProperty_visible(tComponent_target)
	Definir tProperty Como Texto;
	tProperty = tComponent_getTProperty(tComponent_target, tProperty_visible());
FinFuncion

Funcion tProperty <- tComponent_getTProperty_components(tComponent_target)
	Definir tProperty Como Texto;
	tProperty = tComponent_getTProperty(tComponent_target, tProperty_components());
FinFuncion
//----[ SETTERS ]----------------------------------------------------[#]
Funcion new_tcomponent <- tComponent_setTProperty(tcomponent, tProperty_component, value_string) 
	Definir new_tcomponent Como Texto;
	new_tcomponent = collectionDictionary_replace_byString(tcomponent, tproperty_component, value_string);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_text(tcomponent, value_string) 
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_setTProperty(tcomponent, tProperty_text(), value_string);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_input(tcomponent, value_string) 
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_setTProperty(tcomponent, tProperty_input(), value_string);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_align(tcomponent, ALIGN_CONST) 
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_setTProperty(tcomponent, tProperty_align(), ALIGN_CONST);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_bounds(tcomponent, x0, y0, width, height)
	Definir new_tcomponent, bounds_tcomponent Como Texto;
	bounds_tcomponent = tComponent_parseValues_toBounds(x0, y0, width, height);
	new_tcomponent    = tComponent_setTProperty(tcomponent, tProperty_bounds(), bounds_tcomponent);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_size(tcomponent, width, height) 
	Definir new_tcomponent, bounds_tcomponent Como Texto;
	Definir x0, y0 Como Entero;
	bounds_tcomponent = tComponent_getTProperty_bounds(tcomponent);
	x0                = tComponent_bounds_getX(bounds_tcomponent);
	y0                = tComponent_bounds_getY(bounds_tcomponent);
	new_tcomponent    = tComponent_setTProperty_bounds(tcomponent, x0, y0, width, height);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_location(tcomponent, x0, y0) 
	Definir new_tcomponent, bounds_tcomponent Como Texto;
	Definir width, height Como Entero;
	bounds_tcomponent = tComponent_getTProperty_bounds(tcomponent);
	width             = tComponent_bounds_getWidth(bounds_tcomponent);
	height            = tComponent_bounds_getHeight(bounds_tcomponent);
	new_tcomponent    = tComponent_setTProperty_bounds(tcomponent, x0, y0, width, height);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_value_byString(tcomponent, value_string) 
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_setTProperty(tcomponent, tProperty_value(), value_string);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_value(tcomponent, value_type, TYPE) 
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_setTProperty(tcomponent, tProperty_value(), value_TypeToString(value_type, TYPE));
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_parent(tcomponent, value_string)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_setTProperty(tcomponent, tProperty_parent(), value_string);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_visible(tcomponent, value_bool)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_setTProperty(tcomponent, tProperty_visible(), boolean_toString(value_bool));
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_components(tcomponent, value_string)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_setTProperty(tcomponent, tProperty_components(), value_string);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_canvas(tcomponent, canvas)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_setTProperty(tcomponent, tProperty_canvas(), canvas);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_mode(tcomponent, mode)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_setTProperty(tcomponent, tProperty_mode(), mode);
FinFuncion

Funcion new_tcomponent <- tComponent_setTProperty_simpleName(tcomponent, value_string)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_setTProperty(tcomponent, tProperty_simpleName(), value_string);
FinFuncion
//----[ new ]------------------------------------------------------------------------[#]
Funcion new_tButton <- tComponent_newTButton(x0, y0, text, input_string)
	Definir new_tButton Como Texto;
	Definir min_sizeX, min_sizeY Como Entero;
	min_sizeX   = math_sum(string_length(text), 2);
	min_sizeY   = 3;
	new_tButton = tComponent_newTButton_withConfig(x0, y0, min_sizeX, min_sizeY, text, input_string, ALIGN_CENTER());
FinFuncion

Funcion new_tButton <- tComponent_newTButton_withConfig(x0, y0, width, height, text, input_string, ALIGN_CONST)
	Definir new_tButton Como Texto;
	new_tButton = tComponent_new(tComponent_SIMPLENAME_BUTTON(), x0, y0, width, height);
	new_tButton = tComponent_addTProperty_input(new_tButton, input_string);
	new_tButton = tComponent_addTProperty_text(new_tButton, text);
	new_tButton = tComponent_addTProperty_align(new_tButton, ALIGN_CONST);
FinFuncion

Funcion new_tcomponent <- tComponent_newTLabel(x0, y0, text)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_newTLabel_withConfig(x0, y0, text, string_length(text), ALIGN_LEFT());
FinFuncion

Funcion new_tcomponent <- tComponent_newTLabel_withConfig(x0, y0, text, width, ALIGN_CONST)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_new(tComponent_SIMPLENAME_LABEL(), x0, y0, width, 1);
	new_tcomponent = tComponent_addTProperty_text(new_tcomponent, text);
	new_tcomponent = tComponent_addTProperty_align(new_tcomponent, ALIGN_CONST);
FinFuncion

Funcion new_tcomponent <- tComponent_newTHorizontalRuler(x0, y0, width)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_newTRuler(x0, y0, width, 1, "=", tComponent_SIMPLENAME_HORIZONTAL_RULER());
FinFuncion

Funcion new_tcomponent <- tComponent_newTVerticalRuler(x0, y0, height)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_newTRuler(x0, y0, 1, height, "|", tComponent_SIMPLENAME_VERTICAL_RULER());
FinFuncion

Funcion new_tcomponent <- tComponent_newTRuler(x0, y0, width, height, pixel, SIMPLENAME)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_new(SIMPLENAME, x0, y0, width, height);
	new_tcomponent = tComponent_addTProperty_text(new_tcomponent, pixel);
FinFuncion

Funcion new_tcomponent <- tComponent_newTPanel(x0, y0, width, height)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_newtContainer(x0, y0, width, height, tComponent_SIMPLENAME_PANEL());
FinFuncion

Funcion new_tcomponent <- tComponent_newtContainer(x0, y0, width, height, SIMPLENAME)
	Definir new_tcomponent, base_component Como Texto;
	base_component = tComponent_new(SIMPLENAME, x0, y0, width, height);
	new_tcomponent = tComponent_addTProperty_componets(base_component);
FinFuncion

Funcion new_tcomponent <- tComponent_newTspriteString(x0, y0, string_Sprite)
	Definir new_tcomponent Como Texto;
	new_tcomponent = tComponent_newTspriteString_withConfig(x0, y0, string_Sprite, "", SPRITE_MODE_NONE());
FinFuncion

Funcion new_tcomponent <- tComponent_newTspriteString_withConfig(x0, y0, string_Sprite, target_pixelClear, SPRITE_MODE)
	Definir new_tcomponent, base_component, sprite_canvas Como Texto;
	Definir sprite_X, sprite_Y Como Entero;
	si spriteString_isSpriteValid(string_Sprite) Entonces
		sprite_canvas  = collection_getContent(string_Sprite);
		sprite_X       = spriteString_getWidth(string_Sprite);
		sprite_Y       = spriteString_getHeight(string_Sprite);
		base_component = tComponent_new(tComponent_SIMPLENAME_SPRITE_STRING(), x0, y0, sprite_X, sprite_Y);
		new_tcomponent = tComponent_addTProperty_text(base_component, target_pixelClear);
		new_tcomponent = tComponent_addTProperty_canvas(new_tcomponent, sprite_canvas);
		new_tcomponent = tComponent_addTProperty_mode(new_tcomponent, SPRITE_MODE);
	SiNo
		new_tcomponent = tComponent_newTLabel("<ERROR_sprite_STRING>", x0, y0);
		log_error_function("tComponent_newTspriteString()", "sprite not is TYPE_SPRITESTRING [use spriteString_new()]");
	FinSi
FinFuncion
//----[ DRAW_tcomponent ]------------------------------------------------------------[#]
Funcion result_canvas <- tComponent_drawToCanvas(canvas, cX, cY, tcomponent)
	Definir result_canvas, tContainer, result_tContainer Como Texto;
	Definir bounds_tcomponent, simple_name Como Texto;
	Definir width, height, x0, y0 Como Entero;
	Si tComponent_Istcomponent(tcomponent) Entonces
		simple_name       = tComponent_getTProperty_simpleName(tcomponent);
		bounds_tcomponent = tComponent_getTProperty_bounds(tcomponent);
		width             = tComponent_bounds_getWidth(bounds_tcomponent);
		height            = tComponent_bounds_getHeight(bounds_tcomponent);
		x0                = tComponent_bounds_getX(bounds_tcomponent);
		y0                = tComponent_bounds_getY(bounds_tcomponent);
		tContainer        = canvas_new_withPixel(width, height, pixel_clear());
		Si simple_name == tComponent_SIMPLENAME_SPRITE_STRING() Entonces
		    tContainer = canvas_getSubCanvas(canvas, cX, cY, x0, y0, width, height);
		FinSi
		result_tContainer = tComponent_drawToCanvas_dispatcher(tContainer, width, height, tcomponent, simple_name);
		result_canvas     = canvas_drawSubCanvas(canvas, cX, cY, result_tContainer, width, height, x0, y0);
	SiNo
		result_canvas = canvas;
	FinSi
FinFuncion

Funcion result_tContainer <- tComponent_drawToCanvas_dispatcher(tContainer, width, height, tcomponent, SIMPLENAME)
	Definir result_tContainer Como Texto;
	Segun SIMPLENAME Hacer 
		caso tComponent_SIMPLENAME_BUTTON():
			result_tContainer = tComponent_drawToCanvas_TButton(tContainer, width, height, tcomponent);
		caso tComponent_SIMPLENAME_LABEL():
			result_tContainer = tComponent_drawToCanvas_tLabel(tContainer, width, height, tcomponent);
		caso tComponent_SIMPLENAME_PANEL():
			result_tContainer = tComponent_drawToCanvas_TPanel(tContainer, width, height, tcomponent);
		caso tComponent_SIMPLENAME_SPRITE_STRING():
			result_tContainer = tComponent_drawToCanvas_tSpriteString(tContainer, width, height, tcomponent);
		caso tComponent_SIMPLENAME_HORIZONTAL_RULER():
			result_tContainer = tComponent_drawToCanvas_TRuler(width, height, tcomponent);
		caso tComponent_SIMPLENAME_VERTICAL_RULER():
			result_tContainer = tComponent_drawToCanvas_TRuler(width, height, tcomponent);
		De Otro Modo:
			result_tContainer = tContainer;
	FinSegun
FinFuncion
//----[ DRAW ]----------------------------------------------------[#]
Funcion result_tContainer <- tComponent_drawToCanvas_tLabel(tContainer, width, height, tLabel)
	Definir result_tContainer Como Texto;
	result_tContainer = tComponent_drawToCanvas_tLabel_border(tContainer, width, height, tLabel, 0);
FinFuncion

Funcion result_tContainer <- tComponent_drawToCanvas_tLabel_border(tContainer, width, height, tLabel, border_tcomponent)
	Definir result_tContainer, aling_tcomponent, text_tcomponent Como Texto;
	Definir length_text Como Entero;
	aling_tcomponent  = tComponent_getTProperty_align(tLabel);
	text_tcomponent   = tComponent_getTProperty_text(tLabel);
	length_text       = string_length(text_tcomponent);
	result_tContainer = tComponent_drawToCanvas_tContainer_aling(tContainer, width, height, text_tcomponent, length_text, 1, border_tcomponent, aling_tcomponent);
FinFuncion

Funcion result_tContainer <- tComponent_drawToCanvas_TButton(tContainer, width, height, tButton)
	Definir result_tContainer, label_tContainer, border_tContainer Como Texto;
	label_tContainer  = tComponent_drawToCanvas_tLabel_border(tContainer, width, height, tButton, 1);
	border_tContainer = canvas_DrawRectangle_withPixels_Full(label_tContainer, width, height, 0, 0, width, height, "-","-", "|", "|");
	result_tContainer = canvas_DrawRectanglePoint_withPixels(border_tContainer, width, height, 0, 0, width, height, ".", "`");
FinFuncion

Funcion result_tContainer <- tComponent_drawToCanvas_TRuler(width, height, TRuler)
	Definir result_tContainer, pixel_ruler Como Texto;
	pixel_ruler       = tComponent_getTProperty_text(TRuler);
	result_tContainer = canvas_new_withPixel(width, height, pixel);
FinFuncion

Funcion result_tContainer <- tComponent_drawToCanvas_TPanel(tContainer, width, height, TPanel)
	Definir result_tContainer, border_tContainer Como Texto;
	border_tContainer = canvas_DrawRectangle_withPixels_Full(tContainer, width, height, 0, 0, width, height, "¯","_", "|", "|");
	result_tContainer = canvas_DrawRectanglePoint_withPixels(border_tContainer, width, height, 0, 0, width, height, "¦", "¦");
FinFuncion

Funcion result_tContainer <- tComponent_drawToCanvas_tSpriteString(tContainer, width, height, tSpriteString)
	Definir result_tContainer, spriteContent_tcomponent, mode_tcomponent, target_pixelClear Como Texto;
	mode_tcomponent          = tComponent_getTProperty_mode(tSpriteString);
	spriteContent_tcomponent = tComponent_getTProperty_canvas(tSpriteString);
	target_pixelClear        = tComponent_getTProperty_text(tSpriteString);
	result_tContainer        = spriteString_content_drawToCanvas_Mode(tContainer, width, height, spriteContent_tcomponent, width, height, 0, 0, target_pixelClear, mode_tcomponent);
FinFuncion

Funcion posX <- tComponent_calculate_alignX(cX, target_width, border, ALIGN_CONST)
	Definir posX Como Entero;
	Segun ALIGN_CONST Hacer
		Caso ALIGN_LEFT():
			posX = border;
		Caso ALIGN_RIGHT():
			posX = math_minus(math_minus(cX, target_width), border);
		Caso ALIGN_CENTER():
			posX = math_max(math_div_int(math_minus(cX, target_width), 2), 0);
		De Otro Modo:
			posX = 0;
	FinSegun
FinFuncion

Funcion posY <- tComponent_calculate_alignY(cY, target_height, border, ALIGN_CONST)
	Definir posY Como Entero;
	Segun ALIGN_CONST Hacer
		Caso ALIGN_TOP():
			posY = border;
		Caso ALIGN_BOTTOM():
			posY = math_minus(math_minus(cY, target_height), border);
		Caso ALIGN_CENTER():
			posY = math_max(math_div_int(math_minus(cY, target_height), 2), 0);
		De Otro Modo:
			posY = 0;
	FinSegun
FinFuncion

Funcion result_canvas <- tComponent_drawToCanvas_tContainer_aling(canvas, cX, cY, subCanvas, target_width, target_height, border, ALIGN_CONST)
	Definir result_canvas Como Texto;
	Definir posX, posY Como Entero;
	posX = tComponent_calculate_alignX(cX, target_width, border, ALIGN_CONST);
	posY = tComponent_calculate_alignY(cY, target_height, border, ALIGN_CONST);
	result_canvas = canvas_drawSubCanvas(canvas, cX, cY, subCanvas, target_width, target_height, posX, posY);
FinFuncion
//----[ PARSE_POINT ]----------------------------------------------------[#]
Funcion bounds_x <- tComponent_bounds_getX(bounds_collection)
	Definir bounds_x Como Real;
	bounds_x = tComponent_bounds_get(bounds_collection, 0);
FinFuncion

Funcion bounds_y <- tComponent_bounds_getY(bounds_collection)
	Definir bounds_y Como Real;
	bounds_y = tComponent_bounds_get(bounds_collection, 1);
FinFuncion

Funcion bounds_width <- tComponent_bounds_getWidth(bounds_collection)
	Definir bounds_width Como Real;
	bounds_width = tComponent_bounds_get(bounds_collection, 2);
FinFuncion

Funcion bounds_height <- tComponent_bounds_getHeight(bounds_collection)
	Definir bounds_height Como Real;
	bounds_height = tComponent_bounds_get(bounds_collection, 3);
FinFuncion

Funcion bounds_value <- tComponent_bounds_get(bounds_collection, index)
	Definir bounds_value Como Real;
	bounds_value = collectionUniform_get_ToLeft_byType(bounds_collection, index, TYPE_FLOAT());
FinFuncion

Funcion bounds_value <- tComponent_bounds_remove(bounds_collection, index)
	Definir bounds_value Como Real;
	bounds_value = collectionUniform_remove_ToLeft(bounds_collection, index);
FinFuncion

Funcion bounds_tcomponent <- tComponent_parseValues_toBounds(x0, y0, width, height)
	Definir bounds_tcomponent, base_bounds, info_bounds Como Texto;
	base_bounds       = collectionUniform_init("{b}", TYPE_FLOAT(), x0);
	info_bounds       = collectionUniform_addDynamic_ToRight_byType(base_bounds, y0, TYPE_FLOAT());
	info_bounds       = collectionUniform_addDynamic_ToRight_byType(info_bounds, width, TYPE_FLOAT());
	bounds_tcomponent = collectionUniform_addDynamic_ToRight_byType(info_bounds, height, TYPE_FLOAT());
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion result_symbol <- symbol_tcomponent
	Definir result_symbol Como Texto;
	result_symbol = "";//001C
FinFuncion
//....[ property ]......................................................................
Funcion tproperty <- tProperty_text
	Definir tproperty Como Texto;
	tproperty = "text/";
FinFuncion

Funcion tproperty <- tProperty_bounds
	Definir tproperty Como Texto;
	tproperty = "bounds/";
FinFuncion

Funcion tproperty <- tProperty_value
	Definir tproperty Como Texto;
	tproperty = "value/";
FinFuncion

Funcion tproperty <- tProperty_input
	Definir tproperty Como Texto;
	tproperty = "input/";
FinFuncion

Funcion tproperty <- tProperty_simpleName
	Definir tproperty Como Texto;
	tproperty = "name/";
FinFuncion

Funcion tproperty <- tProperty_align
	Definir tproperty Como Texto;
	tproperty = "align/";
FinFuncion

Funcion tproperty <- tProperty_mode
	Definir tproperty Como Texto;
	tproperty = "mode/";
FinFuncion

Funcion tproperty <- tProperty_canvas
	Definir tproperty Como Texto;
	tproperty = "canvas/";
FinFuncion

Funcion tproperty <- tProperty_components
	Definir tproperty Como Texto;
	tproperty = "components/";
FinFuncion

Funcion tproperty <- tProperty_parent
	Definir tproperty Como Texto;
	tproperty = "parent/";
FinFuncion

Funcion tproperty <- tProperty_visible
	Definir tproperty Como Texto;
	tproperty = "visible/";
FinFuncion
//....[ STRUCT_TYPE_tcomponent ]...............................................................
Funcion align_const <- ALIGN_TOP
	Definir align_const Como Texto;
	align_const = "TOP";
FinFuncion

Funcion align_const <- ALIGN_BOTTOM
	Definir align_const Como Texto;
	align_const = "BOTTOM";
FinFuncion

Funcion align_const <- ALIGN_LEFT
	Definir align_const Como Texto;
	align_const = "LEFT";
FinFuncion

Funcion align_const <- ALIGN_RIGHT
	Definir align_const Como Texto;
	align_const = "RIGHT";
FinFuncion

Funcion align_const <- ALIGN_CENTER
	Definir align_const Como Texto;
	align_const = "CENTER";
FinFuncion
//....[ STRUCT_TYPE_tcomponent ]...............................................................
Funcion SIMPLE_NAME <- tComponent_SIMPLENAME_BUTTON
	Definir SIMPLE_NAME Como Texto;
	SIMPLE_NAME = "tButton";
FinFuncion

Funcion SIMPLE_NAME <- tComponent_SIMPLENAME_LABEL
	Definir SIMPLE_NAME Como Texto;
	SIMPLE_NAME = "Tlabel";
FinFuncion

Funcion SIMPLE_NAME <- tComponent_SIMPLENAME_HORIZONTAL_RULER
	Definir SIMPLE_NAME Como Texto;
	SIMPLE_NAME = "THorizontalRuler";
FinFuncion

Funcion SIMPLE_NAME <- tComponent_SIMPLENAME_VERTICAL_RULER
	Definir SIMPLE_NAME Como Texto;
	SIMPLE_NAME = "TVerticalRuler";
FinFuncion

Funcion SIMPLE_NAME <- tComponent_SIMPLENAME_PANEL
	Definir SIMPLE_NAME Como Texto;
	SIMPLE_NAME = "TPanel";
FinFuncion

Funcion SIMPLE_NAME <- tComponent_SIMPLENAME_SPRITE_STRING
	Definir SIMPLE_NAME Como Texto;
	SIMPLE_NAME = "TspriteString";
FinFuncion
//----------------base:
Funcion TYPE <- STRUCT_TYPE_tcomponent
	Definir TYPE Como Texto;
	TYPE = "tcomponent";
FinFuncion
///%%%%%[NULL
//----------------------------------------------------------------------[#]
Funcion pixel <- pixel_Qr_plain
	Definir pixel Como Texto;
	pixel = "  ";
FinFuncion

Funcion pixel <- pixel_Qr_clear
	Definir pixel Como Texto;
	pixel = "ØØ";
FinFuncion

Funcion size_version <- canvas_getSizeVersionQr(version)
	Definir size_version Como Entero;
	size_version = math_sum(21, (math_decrement(version) * 4));
FinFuncion
//mascara: 111011111000100
//modo: 0100 -> ubicado seria
//00
//10
//modo mask: (fila % 2 == 0) invertir
//dando resultado
//11
//10
//antes de la version 7 no hay una zona de 18 bites de version
Funcion canvas_Qr <- Qr_getBase(version, outer_margin)
	Definir canvas_Qr Como Texto;
	Definir size_version, size_x, size_y, outer_margin_norm Como Entero;
	Definir start_draw_x, start_draw_y, pattern_width, pattern_height Como Entero;
	size_version    = canvas_getSizeVersionQr(version);
	outer_margin_norm = outer_margin * string_Length(pixel_Qr_plain());
	size_y          = math_sum(size_version, outer_margin_norm);
	size_x          = (size_y * string_Length(pixel_Qr_plain()));
	start_draw_x    = outer_margin_norm;
	start_draw_y    = outer_margin;
	pattern_width   = (string_Length(pixel_Qr_plain()) * 7);
	pattern_height  = (math_truncate(string_Length(pixel_Qr_plain()) / 2) * 7);
	canvas_Qr       = canvas_new_withPixel(size_x, size_y, pixel_Qr_clear());
	canvas_Qr 		= Qr_drawFinderPatterns(canvas_Qr, size_x, size_y, start_draw_x, start_draw_y, pattern_width, pattern_height);
	canvas_Qr 		= Qr_drawTimingPatterns(canvas_Qr, size_x, size_y, start_draw_x, start_draw_y, pattern_width, pattern_height);
FinFuncion

Funcion result_canvas <- Qr_drawFinderPatterns(canvas_Qr, size_x, size_y, start_draw_x, start_draw_y, pattern_width, pattern_height)
	Definir result_canvas, sprite_position Como Texto;
	Definir end_draw_x, end_draw_y, position_right_x, position_bottom_y, position_point Como Entero;
	end_draw_x        = math_minus(size_x, start_draw_x);
	end_draw_y        = math_minus(size_y, start_draw_y);
	sprite_position   = Qr_getSpritePositionPattern();
	position_right_x  = math_minus(end_draw_x, pattern_width);
	position_bottom_y = math_minus(end_draw_y, pattern_height);
	position_point = math_sum(math_sum(start_draw_x, pattern_width), string_Length(pixel_Qr_plain()));
	result_canvas = canvas_Qr;
	//result_canvas = canvas_drawspriteString(result_canvas, size_x, size_y, sprite_position, start_draw_x, start_draw_y);
	//result_canvas = canvas_drawspriteString(result_canvas, size_x, size_y, sprite_position, position_right_x, start_draw_y);
	//result_canvas = canvas_drawspriteString(result_canvas, size_x, size_y, sprite_position, start_draw_x, position_bottom_y);
	result_canvas = canvas_DrawPoint_withPixel(result_canvas, size_x, size_y, position_point, position_bottom_y, pixel_Qr_Plain());
FinFuncion

Funcion result_canvas <- Qr_drawTimingPatterns(canvas_Qr, size_x, size_y, start_draw_x, start_draw_y, pattern_width, pattern_height)
	Definir result_canvas, pixel_current Como Texto;
	Definir i, origin_timing_x, origin_timing_y, length_pixel, length_pixel_y, length_line Como Entero;
	length_pixel    = string_Length(pixel_Qr_plain());
	length_pixel_y  = math_truncate(length_pixel / 2);
	length_line     = math_minus(size_x, (pattern_width * 2));
	length_line     = math_minus(length_line, (length_pixel * 4));
	length_line     = math_truncate(length_line / length_pixel);
	origin_timing_x = math_sum(math_sum(start_draw_x, pattern_width), length_pixel);
	origin_timing_y = math_sum(math_sum(start_draw_y, pattern_height), length_pixel_y);
	result_canvas = canvas_Qr;
	i = 0;
	Mientras i < length_line Hacer
		Si math_module(i, 2) == 0 Entonces
			pixel_current = pixel_Qr_Plain();
		SiNo
			pixel_current = pixel_Qr_clear();
		FinSi
		result_canvas = canvas_DrawPoint_withPixel(result_canvas, size_x, size_y, math_sum(origin_timing_x, i * length_pixel), pattern_height, pixel_current);
		result_canvas = canvas_DrawPoint_withPixel(result_canvas, size_x, size_y, pattern_width, math_sum(origin_timing_y, i * length_pixel_y), pixel_current);
		i = math_increment(i);
	FinMientras
FinFuncion

Funcion sprite_position <- Qr_getSpritePositionPattern
    Definir row_border_solid, row_frame_inner, row_core_center, sprite_position Como Texto;
    row_border_solid = String_repeatText(pixel_Qr_plain(), 7);
    row_frame_inner  = String_append_withSeparator(pixel_Qr_plain(), pixel_Qr_plain(), String_repeatText(pixel_Qr_clear(), 5));
    row_core_center  = String_append(pixel_Qr_plain(), pixel_Qr_clear());
    row_core_center  = String_append(row_core_center, String_repeatText(pixel_Qr_plain(), 3));
    row_core_center  = String_append(row_core_center, String_append(pixel_Qr_clear(), pixel_Qr_plain()));
    sprite_position = spriteString_new();
    sprite_position = spriteString_addLine(sprite_position, row_border_solid);// 1
    sprite_position = spriteString_addLine(sprite_position, row_frame_inner);// 2
    sprite_position = spriteString_addLine(sprite_position, row_core_center);// 3
    sprite_position = spriteString_addLine(sprite_position, row_core_center);// 4
    sprite_position = spriteString_addLine(sprite_position, row_core_center);// 5
    sprite_position = spriteString_addLine(sprite_position, row_frame_inner);// 6
    sprite_position = spriteString_addLine(sprite_position, row_border_solid);// 7
FinFuncion
///%%%%%[ OBJECT.................. ]%%%%%%%[   #OBJ    ]%%%%%%%%%%%%%%%%%%%%
// hay una diferencia real entre object y table
// object es cada fila un tipado distinto
// table es cada columna un tipado distinto
// es decir una es fina para el tipado cada cosa individual
// pero table al ser una tabla seria cada fila(que mentalmente la representamos como columna)
// seria su propiio tipado es decir una table es simplemente una collection de table(key,column(type,value))
//1) object_ToString(object_str, TYPE) = Verifica si un objeto coincide con el tipo esperado;si es válido, lo devuelve tal cual, y si no, crea uno nuevo del tipo indicado y registra un error.
//2) object_Empty(type_Name) = Crea y devuelve un nuevo objeto vacío del tipo especificado.
//3) symbol_ObjectSeparator() = Devuelve el símbolo separador utilizado para acceder a propiedades anidadas de objetos (".").
//4) object_new(name_object) = Crea una nueva colección lineal estructurada como un objeto con su nombre y datos extra iniciales.
//5) object_Property_Add(struct_Object, property_name, TYPE) = Agrega una nueva propiedad nula de un tipo específico a un objeto existente.
//6) object_Property_Add_GiveValue(struct_Object, property_name, value, TYPE) = Añade una propiedad con un valor y tipo inicial a un objeto, validando primero que no exista previamente.
//7) object_Property_GetValue(struct_Object, property_name) = Obtiene el valor tipado (entero, real, lógico o texto) de una propiedad del objeto, soportando rutas anidadas.
//8) object_Property_GetValue_toString(struct_Object, property_name) = Recupera el valor de una propiedad en formato de texto puro desde el objeto o sus subobjetos anidados.
//9) __private_object_Property_GetData(struct_Object, property_name, index_innerObject) = Método interno para navegar y extraer los datos de un objeto anidado usan do rutas con separadores.
//10) object_Property_SetValue(struct_Object, property_name, property_Value) = Actualiza el valor de una propiedad en el objeto utilizando el separador estándar de objetos.
//11) object_Property_SetValue_ToSeparator(struct_Object, property_name, property_value, separator) = Modifica el valor de una propiedad permitiendo definir un separador personalizado para rutas anidadas.
//12) object_Property_ModifyOrDelete_ToSeparator(...) = Método centralizador que maneja de manera recursiva la modificación o eliminación de propiedades en estructuras y subobjetos.
//13) object_Property_Delete(struct_Object, property_name) = Elimina una propiedad específica de un objeto o subobjeto.
//14) object_InheritsFrom(object_Original, object_Hereditary) = Agrega a un objeto original las propiedades faltantes de otro objeto de referencia (herencia estructural).
//15) object_Delete_CommonPropertiesFrom(object_Original, object_Compartor) = Depura y elimina de un objeto original aquellas propiedades que comparte con otro objeto comparador.
//16) string_isObject(str_struct) = Comprueba si una cadena de texto cumple con la estructura y longitud válida para ser considerada un objeto.
//17) object_isType(object_Select, name) = Valida si un objeto es de un tipo específico consultando su nombre simplificado.
//18) object_getComponent_SIMPLENAME(struct_Object) = Extrae el nombre base o identificador simplificado del tipo de objeto.
//19) object_Property_Exist(struct_Object, property_name) = Devuelve un valor lógico indicando si una propiedad existe dentro del objeto.
//20) object_Property_GetIndex(struct_Object, property_name) = Busca y devuelve la posición en caracteres donde inicia una propiedad dentro del área de datos del objeto.
//21) __private_object_Property_GetIndex_AreaProperty(...) = Busca de forma interna la coincidencia exacta del nombre de una propiedad ignorando mayúsculas y validando sus delimitadores.
//22) object_Property_GetType(struct_Object, property_name) = Devuelve el tipo de dato asociado a una propiedad, soportando búsqueda en propiedades anidadas.
//23) __private_object_Property_GetType_IndexProperty(...) = Obtiene el tipo de dato de una propiedad a partir de su índice exacto dentro de la estructura de texto.
//24) __private_object_Property_GetInnerIndex_IndexProperty(...) = Calcula el índice interno o posición ordinal de una propiedad dentro de la colección de datos del objeto.
//25) object_Property_GetInnerIndex(struct_Object, property_name) = Obtiene el índice interno de una propiedad facilitando su nombre.
//26) object_getAreaProperty(struct_Object) = Extrae el segmento de texto que contiene exclusivamente la definición y metadatos de las propiedades del objeto.
//27) __private_object_process_AddOrDelete_general(...) = Genera y ejecuta las instrucciones en bloque para añadir o eliminar propiedades por comparación entre dos objetos.
//28) __private_object_GetInstructions_AccordingToProcess(...) = Compara dos objetos y genera una lista de instrucciones de propiedades a agregar o eliminar según el proceso solicitado.
///%%%%%[ SCHEME.................. ]%%%%%%%[   #SCH    ]%%%%%%%%%%%%%%%%%%%%
///%%%%%[ TUI..................... ]%%%%%%%[   #TUI    ]%%%%%%%%%%%%%%%%%%%%
// OPTIMIZACIÓN TUI:
// - reutilizar instancias ya creadas o tener plantillas.
// - los componentes tui ahora apuntaran a un nombre interno (parent) en vez de a un indice
// - los tReference son copias exactas de un componente pero con una ubicacion y parent distinta 
// - los contenedores a su vez tienen una lista ()
// ptt: si el rendimiento sigue siendo pobre 
// 1) verificar estas opciones: hacer que sea esamblado es decir en vez de un dictionary
//    una collection simple, deventaja es que ahora el orden importara demasiado variando 
//    segun el component
//TODO: HACER UN GET POR INDEX PARA DICTIONARY EN ROUTED Y EN UNIFORM
///%%%%%[ ASCII/HASH.............. ]%%%%%%%[   #ASC    ]%%%%%%%%%%%%%%%%%%%%
//----[ PARSE ]----------------------------------------------------[#]
Funcion char <- ascii_char(code)
	Definir i Como Entero;
	Definir char Como Texto;
	i=0;
	Mientras code >= ascii_getOffSet_Category(i+1) Hacer
		i = math_increment(i);
	FinMientras
	segun i Hacer
		0: char = char_At(ascii_GetControlSymbols(), code);
		1: char = char_At(ascii_GetBasicSymbols(), math_minus(code, 32));
		2: char = char_At(ascii_GetNumberSymbols(), math_minus(code, 48));
		3: char = char_At(ascii_GetOperatorSymbols(), math_minus(code, 58));
		4: char = char_At(ascii_GetLetters_UpperCase(), math_minus(code, 65));
		5: char = char_At(ascii_GetSpecialSymbols(), math_minus(code, 91));
		6: char = char_At(ascii_GetLetters_LowerCase(), math_minus(code, 97));
		7: char = char_At(ascii_GetExtraSymbols(), math_minus(code, 123));
		De Otro Modo: char = 'ñ';
	FinSegun
FinFuncion

Funcion ascii_codeCategory <- ascii_ord(char)
	Definir ascii_codeCategory, i Como Entero;
	i=0;
	Mientras !ascii_IsCategory_index(char, i) Hacer
		i = math_increment(i);
	FinMientras
	segun i Hacer
		0: ascii_codeCategory = string_indexOf(ascii_GetControlSymbols(), char);
		1: ascii_codeCategory = math_sum(string_indexOf(ascii_GetBasicSymbols(), char), 32);
		2: ascii_codeCategory = math_sum(string_indexOf(ascii_GetNumberSymbols(), char), 48);
		3: ascii_codeCategory = math_sum(string_indexOf(ascii_GetOperatorSymbols(), char), 58);
		4: ascii_codeCategory = math_sum(string_indexOf(ascii_GetLetters_UpperCase(), char), 65);
		5: ascii_codeCategory = math_sum(string_indexOf(ascii_GetSpecialSymbols(), char), 91);
		6: ascii_codeCategory = math_sum(string_indexOf(ascii_GetLetters_LowerCase(), char), 97);
		7: ascii_codeCategory = math_sum(string_indexOf(ascii_GetExtraSymbols(), char), 123);
		De Otro Modo: ascii_codeCategory = 164;
	FinSegun
FinFuncion
//----[ HASH ]----------------------------------------------------------------------[#]
Funcion hash <- ascii_hash_Mini_DBJ2(result_string)
	Definir hash, i, text_length, num_limited Como Entero;
	Definir key, left, Right, center, hash_str Como Texto;
	hash = 5381;
	num_limited = 100000000;
	text_length = string_Length(result_string);
	left = string_substring(result_string, math_max(math_minus(text_length, 3), 0), text_length);
	Right = string_substring(result_string, 0, math_min(2, text_length));
	center = string_substring(result_string, text_length/2 , math_min(text_length/2  + 2, text_length));
	key = string_append_withSeparator(left, Right, center );
	para i = 0 Hasta math_decrement(string_Length(key)) con paso 1 hacer
		hash = (hash * 33) + ascii_ord( char_At(key, i));
		Si hash > num_limited Entonces
			hash_str = integer_toString(hash);
			hash = number_parseNumber(string_substring_from(hash_str, string_Length(hash_str)/2));
		FinSi
	FinPara
FinFuncion

Funcion hash <- ascii_hash_DBJ2(result_string)
	Definir hash, i Como Entero;
	hash = 5381;
	para i = 0 Hasta math_decrement(string_Length(result_string)) con paso 1 hacer
		hash = (hash * 33) + ascii_ord( char_At(result_string, i) );
	FinPara
FinFuncion

Funcion value_StringHash <- ascii_hash_mini_toString(value_String)
	Definir value_StringHash Como Texto;
	value_StringHash = integer_toString(ascii_hash_Mini_DBJ2(value_String));
FinFuncion
//----[ GETTERS ]----------------------------------------------------[#]
Funcion ascii_codeCategory <- ascii_getOffSet_Category(index)
	Definir ascii_codeCategory Como Entero;
	segun index Hacer
		0: ascii_codeCategory = 0;
		1: ascii_codeCategory = 32;
		2: ascii_codeCategory = 48;
		3: ascii_codeCategory = 58;
		4: ascii_codeCategory = 65;
		5: ascii_codeCategory = 91;
		6: ascii_codeCategory = 97;
		7: ascii_codeCategory = 123;
		De Otro Modo: ascii_codeCategory = 164;
	FinSegun
FinFuncion
//001A
Funcion ControlSymbols <- ascii_GetControlSymbols
	Definir ControlSymbols Como Texto;
	ControlSymbols = "	";//TAP BL LF SUB
FinFuncion

Funcion BasicSymbols <- ascii_GetBasicSymbols
	Definir BasicSymbols Como Texto;
	BasicSymbols = " !!#+$%&!()*+,!-./";// !"#$%&'()*+, -./
FinFuncion

Funcion NumberSymbols <- ascii_GetNumberSymbols
	Definir NumberSymbols Como Texto;
	NumberSymbols = "0123456789";
FinFuncion

Funcion OperatorSymbols <- ascii_GetOperatorSymbols
	Definir OperatorSymbols Como Texto;
	OperatorSymbols = ":;<=>?@";
FinFuncion

Funcion Letters_UpperCase <- ascii_GetLetters_UpperCase
	Definir Letters_UpperCase Como Texto;
	Letters_UpperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
FinFuncion

Funcion SpecialSymbols <- ascii_GetSpecialSymbols
	Definir SpecialSymbols Como Texto;
	SpecialSymbols = "`[\]^_``";
FinFuncion

Funcion Letters_LowerCase <- ascii_GetLetters_LowerCase
	Definir Letters_LowerCase Como Texto;
	Letters_LowerCase = "abcdefghijklmnopqrstuvwxyz";
FinFuncion

Funcion ExtraSymbols <- ascii_GetExtraSymbols
	Definir ExtraSymbols Como Texto;
	ExtraSymbols = "{|}~";
FinFuncion
//----[ IS_CATEGORY ]----------------------------------------------------[#]
Funcion index_category <- ascii_getIndexCategory(ascii_category)
    Definir index_category Como Entero;
    Segun ascii_category Hacer
        ascii_CONTROL():
            index_category = 0;
        ascii_BASIC():
            index_category = 1;
        ascii_NUMBER():
            index_category = 2;
        ascii_OPERATOR():
            index_category = 3;
        ascii_ALPHABETIC_UPPER():
            index_category = 4;
        ascii_SPECIAL():
            index_category = 5;
        ascii_ALPHABETIC_LOWER():
            index_category = 6;
        ascii_EXTRA():
            index_category = 7;
        De Otro Modo:
            index_category = -1;
    FinSegun
FinFuncion

Funcion category_Check <- ascii_IsCategory(char, category_name)
    Definir category_Check Como Logico;
    Definir index_category Como Entero;
    index_category = ascii_getIndexCategory(category_name);
    category_Check = ascii_IsCategory_index(char, index_category);
	si string_isEquals(category_name, ascii_ALPHABETIC()) Entonces
		category_Check = ascii_IsLetters(char);
	FinSi
FinFuncion

Funcion category_Check <- ascii_IsCategory_index(char, index)
	Definir category_Check Como Logico;
	segun index Hacer
		0: category_Check  = ascii_IsControlSymbols(char);
		1: category_Check  = ascii_IsBasicSymbols(char);
		2: category_Check  = ascii_IsNumberSymbols(char);
		3: category_Check  = ascii_IsOperatorSymbols(char);
		4: category_Check  = ascii_IsLetters_UpperCase(char);
		5: category_Check  = ascii_IsSpecialSymbols(char);
		6: category_Check  = ascii_IsLetter_LowerCase(char);
		7: category_Check  = ascii_IsExtraSymbols(char);
		De Otro Modo: category_Check  = false();
	FinSegun
FinFuncion

Funcion isType <- ascii_IsLetters(char)
	Definir isType Como Logico;
	isType = ascii_IsLetters_UpperCase(char) | ascii_IsLetter_LowerCase(char);//65-90
FinFuncion

Funcion isType <- ascii_IsControlSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '', '');//0-31
FinFuncion

Funcion isType <- ascii_IsBasicSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, ' ', '/');//32-47
FinFuncion

Funcion isType <- ascii_IsNumberSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '0', '9');//48-57
FinFuncion

Funcion isType <- ascii_IsOperatorSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, ':', '@');//58-64
FinFuncion

Funcion isType <- ascii_IsLetters_UpperCase(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, 'A', 'Z');//65-90
FinFuncion

Funcion isType <- ascii_IsSpecialSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '`', '`');//91-96
FinFuncion

Funcion isType <- ascii_IsLetter_LowerCase(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, 'a', 'z');//97-122
FinFuncion

Funcion isType <- ascii_IsExtraSymbols(char)
	Definir isType Como Logico;
	isType = ascii_isInRangue(char, '{', '');//123-126
FinFuncion

Funcion iSinRangue <- ascii_isInRangue(char, char_start, char_end)
	Definir iSinRangue Como Logico;
	iSinRangue = (char_start <= char & char <= char_end);
FinFuncion
//----[ GETCONTENT ]----------------------------------------------------[#]
Funcion result_String <- ascii_substring_whileCategory(text_input, ascii_category)
	Definir result_String Como Texto;
	result_String = ascii_substring_whileCategory_fromIndex(text_input, ascii_category, 0);
FinFuncion

Funcion result_String <- ascii_substring_whileCategory_fromIndex(text_input, ascii_category, start_position)
    Definir result_String Como Texto;
    Definir end_position Como Entero;
	end_position = ascii_getIndex_endCategory_fromIndex(text_input, ascii_category, start_position);
	si number_isEquals(end_position, number_NULL()) Entonces
		result_String = string_NULL();
	SiNo
		result_String = string_substring(text_input, start_position, math_increment(end_position));
	FinSi
FinFuncion

Funcion result_String <- ascii_substring_untilCategory(text_input, ascii_category)
	Definir result_String Como Texto;
	result_String = ascii_substring_untilCategory_fromIndex(text_input, ascii_category, 0);
FinFuncion

Funcion result_String <- ascii_substring_untilCategory_fromIndex(text_input, ascii_category, start_position)
    Definir result_String Como Texto;
    Definir end_position Como Entero;
	end_position = ascii_getIndex_startCategory_fromIndex(text_input, ascii_category, start_position);
	si number_isEquals(end_position, number_NULL()) Entonces
		result_String = string_NULL();
	SiNo
		result_String = string_substring(text_input, start_position, end_position);
	FinSi
FinFuncion

Funcion result_String <- ascii_substring_whileCategory_last(text_input, ascii_category)
    Definir result_String Como Texto;
    result_String = ascii_substring_whileCategory_last_fromIndex(text_input, ascii_category, math_decrement(string_Length(text_input)));
FinFuncion

Funcion result_String <- ascii_substring_whileCategory_last_fromIndex(text_input, ascii_category, start_position)
    Definir result_String Como Texto;
    Definir last_index Como Entero;
    last_index = ascii_getLastIndex_endCategory_fromIndex(text_input, ascii_category, start_position);
    si number_isEquals(last_index, number_NULL()) Entonces
        result_String = string_NULL();
    SiNo
        result_String = string_substring(text_input, last_index, math_increment(start_position));
    FinSi
FinFuncion

Funcion result_String <- ascii_substring_untilCategory_last(text_input, ascii_category)
    Definir result_String Como Texto;
    result_String = ascii_substring_untilCategory_last_fromIndex(text_input, ascii_category, math_decrement(string_Length(text_input)));
FinFuncion

Funcion result_String <- ascii_substring_untilCategory_last_fromIndex(text_input, ascii_category, start_position)
    Definir result_String Como Texto;
    Definir last_index Como Entero;
    last_index = ascii_getLastIndex_startCategory_fromIndex(text_input, ascii_category, start_position);
    si number_isEquals(last_index, number_NULL()) Entonces
        result_String = string_NULL();
    SiNo
        result_String = string_substring(text_input, math_increment(last_index), math_increment(start_position));
    FinSi
FinFuncion
//...
Funcion end_position <- ascii_getIndex_startCategory(text_input, ascii_category)
    Definir end_position Como Entero;
    end_position = ascii_getIndex_startCategory_fromIndex(text_input, ascii_category, 0);
FinFuncion

Funcion end_position <- ascii_getIndex_endCategory(text_input, ascii_category)
    Definir end_position Como Entero;
    end_position = ascii_getIndex_endCategory_fromIndex(text_input, ascii_category, 0);
FinFuncion

Funcion last_index <- ascii_getLastIndex_startCategory(text_input, ascii_category)
    Definir last_index, last_pos Como Entero;
    last_pos = math_decrement(string_Length(text_input));
    last_index = ascii_getLastIndex_startCategory_fromIndex(text_input, ascii_category, last_pos);
FinFuncion

Funcion end_position <- ascii_getLastIndex_endCategory(text_input, ascii_category)
    Definir end_position, last_pos Como Entero;
    last_pos = math_decrement(string_Length(text_input));
    end_position = ascii_getLastIndex_endCategory_fromIndex(text_input, ascii_category, last_pos);
FinFuncion
// ...
Funcion end_position <- ascii_getIndex_endCategory_fromIndex(text_input, ascii_category, start_position)
    Definir end_position, i, length_Text Como Entero;
    Definir Char_Current Como Texto;
    Definir isCategoryValid Como Logico;
    i = start_position;
    end_position = number_NULL();
    isCategoryValid = true();
    length_Text = string_Length(text_input);
    Mientras i < length_Text & (isCategoryValid) Hacer
        Char_Current = char_At(text_input, i);
        isCategoryValid = ascii_IsCategory(Char_Current, ascii_category);
		si isCategoryValid Entonces
			end_position = i;
		FinSi
		i = math_increment(i);
    FinMientras
FinFuncion

Funcion end_position <- ascii_getLastIndex_endCategory_fromIndex(text_input, ascii_category, start_position)
    Definir end_position, i Como Entero;
    Definir Char_Current Como Texto;
    Definir isCategoryValid Como Logico;
    i = start_position;
    end_position = number_NULL();
    isCategoryValid = true();
    Mientras i >= 0 & (isCategoryValid) Hacer
        Char_Current = char_At(text_input, i);
        isCategoryValid = ascii_IsCategory(Char_Current, ascii_category);
		Si isCategoryValid Entonces
            end_position = i;
        FinSi
        i = math_decrement(i);
    FinMientras
FinFuncion

Funcion end_position <- ascii_getIndex_startCategory_fromIndex(text_input, ascii_category, start_position)
    Definir end_position, i, length_Text Como Entero;
    Definir char_Current Como Texto;
    Definir isCategoryValid Como Logico;
    i = start_position;
    end_position = number_NULL();
    isCategoryValid = false();
    length_Text = string_Length(text_input);
    Mientras i < length_Text & (!isCategoryValid) Hacer
        char_Current = char_At(text_input, i);
		isCategoryValid = ascii_IsCategory(Char_Current, ascii_category);
		si isCategoryValid Entonces
			end_position = i;
		FinSi
		i = math_increment(i);
    FinMientras
FinFuncion

Funcion last_index <- ascii_getLastIndex_startCategory_fromIndex(text_input, ascii_category, start_position)
    Definir last_index, i Como Entero;
    Definir Char_Current Como Texto;
    Definir isCategoryValid Como Logico;
    last_index = number_NULL();
    i = start_position;
    isCategoryValid = false();
    Mientras i >= 0 & (!isCategoryValid) Hacer
        Char_Current = char_At(text_input, i);
        isCategoryValid = ascii_IsCategory(Char_Current, ascii_category);
        Si isCategoryValid Entonces
            last_index = i;
        FinSi
		i = math_decrement(i);
    FinMientras
FinFuncion
//=====[ CONSTANTS/DEFINITIONS ]=====[  ///   ]=======================================
Funcion ascii_category <- ascii_CONTROL
    Definir ascii_category Como Texto;
    ascii_category = "CONTROL";
FinFuncion

Funcion ascii_category <- ascii_BASIC
    Definir ascii_category Como Texto;
    ascii_category = "BASIC";
FinFuncion

Funcion ascii_category <- ascii_NUMBER
    Definir ascii_category Como Texto;
    ascii_category = "NUMBER";
FinFuncion

Funcion ascii_category <- ascii_OPERATOR
    Definir ascii_category Como Texto;
    ascii_category = "OPERATOR";
FinFuncion

Funcion ascii_category <- ascii_ALPHABETIC_UPPER
    Definir ascii_category Como Texto;
    ascii_category = "ALPHABETIC_UPPER";
FinFuncion

Funcion ascii_category <- ascii_SPECIAL
    Definir ascii_category Como Texto;
    ascii_category = "SPECIAL";
FinFuncion

Funcion ascii_category <- ascii_ALPHABETIC_LOWER
    Definir ascii_category Como Texto;
    ascii_category = "ALPHABETIC_LOWER";
FinFuncion

Funcion ascii_category <- ascii_EXTRA
    Definir ascii_category Como Texto;
    ascii_category = "EXTRA";
FinFuncion

Funcion ascii_category <- ascii_ALPHABETIC
    Definir ascii_category Como Texto;
    ascii_category = "ALPHABETIC";
FinFuncion

Funcion ascii_category <- ascii_UNKNOWN_CATEGORY
    Definir ascii_category Como Texto;
    ascii_category = "UNKNOWN";
FinFuncion
///%%%%%[ VEC..................... ]%%%%%%%[   #VEC    ]%%%%%%%%%%%%%%%%%%%%
//,......null functions
///%%%%%[ CONSOLE................. ]%%%%%%%[   #CON    ]%%%%%%%%%%%%%%%%%%%%
Funcion color_asc <- console_command_graphicText(number_int)
	Definir color_asc Como Texto;
	color_asc = console_command_esc(native_number_toString(number_int), "m");
FinFuncion

Funcion esc <- console_command_esc(middle_command, end_command)
    Definir esc Como Texto;
    esc = native_string_append(native_string_append(console_prefix_Escape(), middle_command), end_command);
FinFuncion

Funcion result_string <- console_prefix_Escape
	Definir result_string Como Texto;
	result_string = "[";
FinFuncion

Funcion console_forceFocus
    native_print(console_command_esc("", "zr"));
FinFuncion

Funcion console_clear_force
	native_print(console_command_esc("2", "J"));
FinFuncion
//If the cursor moves outside the visible area while resizing the console, it will simply close without warning.
Funcion console_setCursor(pos_x, pos_y)
    Definir console_command_exe Como Texto;
	Definir pos_xNorm, pos_yNorm Como Entero;
	pos_xNorm   = math_increment(native_math_max(pos_x, 0));
	pos_yNorm   = math_increment(native_math_max(pos_Y, 0));
    console_command_exe = native_string_append(native_number_toString(pos_xNorm), native_string_append(";", native_number_toString(pos_yNorm)));
    native_print(console_command_esc(console_command_exe, "H"));
FinFuncion

Funcion console_setTitle(title_string)
    Definir console_command_setTitle, title_norm Como Texto;
	title_norm              = native_string_append("» ", native_string_append(title_string, " «"));
    console_command_setTitle = console_command_esc("zt", title_norm);
    native_println(console_command_setTitle);
FinFuncion

Funcion console_showLineInstruction(linea, instruccion, es_error)
	Definir p Como Texto;
	p = native_string_append(native_number_toString(linea), ":");
	p = native_string_append(p, native_number_toString(instruccion));
	p = native_string_append(p, ";");             
	Si es_error Entonces
		native_print(console_command_esc("ze", p));
	SiNo
		native_print(console_command_esc("zp", p));
	FinSi
FinFuncion

Funcion console_clear
	native_console_clear();
FinFuncion
///%%%%%[ END_CODE................ ]%%%%%%%[    ##1    ]%%%%%%%%%%%%%%%%%%%%
//Bmap: para reutilizar espacios sin referencia
//fileSystem();
//ya que en este las celdas crecen no puedo hacer que el espacio sea por realmente el espacio que ocupan sino por el numero de celdas que tengo y darles un espacio figticio
Funcion file_system
	Definir root_storage, call_directory, bitmat_struct Como Texto;
	Definir folder_root, file_name, folder_name Como Texto;
	bitmat_struct     = collectionUniform_new("BMap", TYPE_INT(), collection_getMinDataLength());
	root_storage      = storage_new();
	root_storage      = storage_addData(root_storage, folder_new());
	root_storage      = storage_addData(root_storage, file_new(EXTENSION_TXT()));
	call_directory    = directory_new();
	folder_name       = "folder_example";
	file_name         = "file_example";
	call_directory    = directory_addReference(call_directory, folder_name, 0);
	call_directory    = directory_addReference(call_directory, file_name, 1);
	run_file_system(root_storage, bitmat_struct, call_directory);
FinFuncion

Funcion run_file_system(root_storage, bitmat_struct, call_directory)
	Definir point_folder, point_file, n Como Entero;
	Definir size_store, color_target, color_complement Como Texto;
	canvas = canvas_new(20, 20);
	
FinFuncion

Funcion bar_graphic <- system_graphic_getBarSpace(root_storage)
	Definir size_byte, size_ocuppied, size_bar, size_kilobyte, percentage_flag, max_size_byte Como Entero;
	Definir percentage_occupied Como Real;
	Definir bar_color, border_color, bar_raw, bar_graphic Como Texto;
	Definir bar_line, border_open, border_close, bar_color_free, text_size_kb, text_max_kb, text_diff_kb Como Texto;
	size_byte           = storage_calculate_sizeByte(root_storage);
	max_size_byte       = storage_getMaxByte();
	percentage_occupied = storage_calculate_percentageOccupied(size_byte);
	size_bar            = 20;
	size_ocuppied       = math_min(size_bar, math_round(math_div(percentage_occupied, 100) * size_bar));
	percentage_flag     = math_ceil(percentage_occupied);
	Si percentage_flag < 50 Entonces
		bar_color = COLOR_GREEN();
	SiNo
		Si percentage_flag < 80 Entonces
			bar_color = COLOR_YELLOW();
		Sino
			bar_color = COLOR_RED();
		FinSi
	FinSi
	border_color        = string_append(COLOR_STYLE_BOLD(), COLOR_CYAN());
	bar_raw             = string_repeatText("=", size_bar);
	bar_color_free      = string_append(COLOR_STYLE_PLAIN(), bar_color);
	bar_line            = color_set(string_insert(bar_raw, bar_color_free, size_ocuppied), bar_color);
	border_open         = color_set("[", border_color);
	border_close        = color_set("]", border_color);
	text_size_kb        = storage_getFormat_sizeKiloByte(size_byte);
	text_max_kb         = storage_getFormat_sizeKiloByte(max_size_byte);
	text_diff_kb        = string_append(string_append(" (",string_append(string_append(text_size_kb," /"), text_max_kb))," )");
	bar_graphic         = string_append(string_append(string_append(border_open, bar_line), border_close), text_diff_kb);
FinFuncion

Funcion result_storage <- system_menu_folder(partition_storage)
	Definir result_storage, result_folder Como Texto;
	Definir input_target Como Entero;
	input_target  = number_NULL();
	Mientras input_target <> 0 Hacer
		input_target = system_display_menu_folder();
		Segun input_target Hacer
			1:
				// imprimir archivos con numero luego hacer un input con eso hasta size: intercambio de name y luego de file 
			2:	
				// new file es mas facil solo hacer un folder_Add_newFile
			3:
				// aqui se iria al sub menu de file y devolveria el file
			4:
				//se imrpimer archivo con un numero luego se hace un input hasta size: aqui simplemente se elimina del diccionario
			5:
				//se elimina en el diccionario y se agrega el nuevo con el valor actual (reutiliza target name modificado y  file )
		FinSegun
	FinMientras
FinFuncion

Funcion result_file <- system_menu_file(folder_target, file_target, file_name)
	Definir result_file Como Texto;
	Definir input_target Como Entero;
	input_target  = number_NULL();
	Mientras input_target <> 0 Hacer
		input_target = system_display_menu_file();
		Segun input_target Hacer
			1:
				// imprimir archivos con numero luego hacer un input con eso hasta size: intercambio de name y luego de file 
			2:	
				// new file es mas facil solo hacer un folder_Add_newFile
			3:
				// aqui se iria al sub menu de file y devolveria el file
			4:
				//se imrpimer archivo con un numero luego se hace un input hasta size: aqui simplemente se elimina del diccionario
		FinSegun
	FinMientras
FinFuncion

Funcion result_folder <- directory_new
	Definir result_folder Como Texto;
	result_folder = directory_new_byID("@");
FinFuncion

Funcion result_folder <- directory_new_byID(id)
	Definir result_folder Como Texto;
	result_folder = collectionDictionary_new(id, TYPE_STRING(), TYPE_INT());
FinFuncion

Funcion result_name <- data_asureName(struct_directory, data_name)
	Definir result_name, num_text, name_diff Como Texto;
	Definir number_file, len, index_start Como Entero;
	result_name = data_name;
	Mientras collectionDictionary_containsKey(struct_directory, result_name) Hacer 
		len = string_length(result_name);
		number_file = 1;
		Si string_isEquals(")", char_At(result_name, len)) Entonces
			index_start = string_lastIndexOf(result_name, "(");
			Si index_start > 0 Entonces
				num_text = string_substring(result_name, math_increment(index_start), math_decrement(len));
				number_file = math_increment(integer_parseInt(num_text));
				result_name = string_substring(result_name, 1, math_decrement(index_start));
			FinSi
		FinSi
		name_diff   = string_append_withSeparator("(", ")", integer_toString(number_file));
		result_name = string_append(result_name, name_diff);
	FinMientras
FinFuncion

Funcion result_directory <- directory_addReference(directory_target, data_name, number_cell)
	Definir result_directory, result_name Como Texto;
	result_name      = data_asureName(directory_target, data_name);
	result_directory = collectionDictionary_put(directory_target, result_name, number_cell);
FinFuncion

Funcion result_storage <- storage_new
	Definir result_storage Como Texto;
	result_storage = collectionUniform_new("/", TYPE_STRING(), 1);
FinFuncion

Funcion result_storage <- storage_addData(storage_target, data_target)
	Definir result_storage Como Texto;
	result_storage = collectionUniform_addDynamic_ToRight(storage_target, data_target);
FinFuncion

Funcion result_format <- storage_getFormat_sizeKiloByte(size_byte)
	Definir result_format, str_float, unit_suffix Como Texto;
	Definir index_point, text_len, decimal_limit Como Entero;
	Definir result_size, base_divisor, scale_factor Como Real;
	base_divisor  = 1024;
	unit_suffix   = " kb";
	result_size   = math_div(size_byte, base_divisor);
	str_float     = float_toString(result_size);
	index_point   = math_sum(string_indexOf(str_float, "."), 3);
	text_len      = string_length(str_float);
	Si text_len > index_point Entonces
		str_float = string_substring(str_float, 0, index_point);
	FinSi
	result_format = string_append(" ",string_append(str_float, unit_suffix));
FinFuncion

Funcion result_format <- storage_getFormat_sizeByte(data_target)
	Definir result_format Como Texto;
	Definir result_size Como Entero;
	result_size   = storage_calculate_sizeByte(data_target);
	result_format = string_append(integer_toString(result_size), " B");
FinFuncion

Funcion size_result <- BYTE_VALUE
	Definir size_result Como Entero;
	size_result = 2;//UTF_8(use:1,2,3,4) 
FinFuncion

Funcion result_size <- storage_calculate_percentageOccupied(size_target)
	Definir result_size Como Real;
	result_size = (size_target/storage_getMaxByte()) * 100;
FinFuncion

Funcion result_size <- storage_getMaxByte
	Definir result_size Como Entero;
	result_size = BYTE_VALUE() * 1024;
FinFuncion

Funcion result_size <- storage_calculate_sizeByte(data_target)
	Definir result_size, data_size  Como Entero;
	data_size   = string_length(data_target);
	result_size = BYTE_VALUE() * data_size;
FinFuncion

Funcion result_input <- system_display_menu_folder
	Definir result_input Como Entero;
	Definir menu_disp, options_text Como Texto;
	options_text = "0,1,2,3,4,5";
	menu_disp    = "/--== FOLDER MENU ==--\ \n 1. seleccionar archivo\n 2. crear archivo\n 3. abrir archivo\n 4. eliminar archivo\n 5. cambiar nombre archivo\n 0. apagar";
	result_input = system_input_provider(menu_disp, options_text);
FinFuncion

Funcion result_input <- system_display_menu_file
	Definir result_input Como Entero;
	Definir menu_disp, options_text Como Texto;
	options_text = "0,1,2,3,4";
	menu_disp = "/--== FILE MENU ==--\ \n 1. avanzar linea \n 2. retroceder linea \n 3. modificar linea \n 4. eliminar linea \n 0. salir de archivo";
	result_input = system_input_provider(menu_disp, options_text);
FinFuncion

Funcion result_input <- system_input_provider(menu_disp, options_text)
	Definir result_input, value_invalid Como Entero;
	value_invalid = number_NULL();
	result_input  = value_invalid;
	Mientras result_input == value_invalid Hacer
		println(menu_disp);
		result_input = user_input_options(options_text, TYPE_INT());
		console_clear();
		Si result_input == value_invalid Entonces
			log_error_message(string_append("option no valid use: ", options_text));
		FinSi
	FinMientras
FinFuncion

Funcion result_folder <- folder_new
	Definir result_folder Como Texto;
	result_folder = directory_new_byID("?");
FinFuncion

Funcion folder_displayFiles(folder_target)
	collectionUniform_println_toLeft(folder_target);
FinFuncion

funcion extension <- EXTENSION_TXT
	Definir extension Como Texto;
	extension = "TXT";
FinFuncion

Funcion result_separator <- file_separator
	Definir result_separator Como Texto;
	result_separator = ".";
FinFuncion

Funcion result_file <- file_new(extension)
	Definir result_file Como Texto;
	result_file = collectionRouted_new(extension, TYPE_STRING());
FinFuncion

///..............................................................................end
Funcion message_duration(struct_localTime)
	Definir time_Total, time_message Como Texto;
	time_Total 	  = color_set(localTime_ToString(struct_localTime), COLOR_CYAN());
	time_message  = color_set("::: execution time ::: format(hh:mm:ss) ::: ", COLOR_BLUE());
	println(string_append(time_message, time_Total));
FinFuncion

Algoritmo run_code
	Definir duration_Timer, localTime_Start, localTime_End Como Texto;
	console_setTitle("Pseudo Lib");
	localTime_Start = localTime_Now();
	console_clear();
	sandbox_development();
	//main();
	localTime_End = localTime_now();
	duration_Timer = duration_between(localTime_Start, localTime_End);
	message_duration(duration_Timer);
FinAlgoritmo
///%%%%%[ ........................ ]%%%%%%%[    ---    ]%%%%%%%%%%%%%%%%%%%%