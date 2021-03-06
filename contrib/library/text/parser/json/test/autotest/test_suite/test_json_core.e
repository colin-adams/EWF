class TEST_JSON_CORE

inherit
    SHARED_EJSON
	  	rename default_create as shared_default_create end
	EQA_TEST_SET
		select default_create end

feature -- Test

    test_json_number_and_integer
        local
            i: INTEGER
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            i := 42
            -- Eiffel value -> JSON value -> JSON representation
            create jn.make_integer (i)
            assert ("jn.representation.same_string (%"42%")", jn.representation.same_string ("42"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            if attached {JSON_NUMBER} json.value (i) as l_jn then
	            assert ("l_jn.representation.same_string (%"42%")", jn.representation.same_string ("42"))
			else
				assert ("json.value (i) is a JSON_NUMBER", False)
            end

            -- JSON representation-> JSON value -> Eiffel value
            -- Note: The JSON_FACTORY will return the smallest INTEGER_* object
            -- that can represent the value of the JSON number, in this case
            -- we know it is INTEGER_8 since the value is 42
            jrep := "42"
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
            	if attached {INTEGER_8} json.object (jn, Void) as l_i8 then
					assert ("l_i8 = 42", l_i8 = 42)
				else
					assert ("json.object (jn, Void) is a INTEGER_8", False)
				end
			else
				assert ("parser.parse is a JSON_NUMBER", False)
			end
        end

    test_json_number_and_integer_8
        local
            i8: INTEGER_8
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            i8 := 42
            -- Eiffel value -> JSON value -> JSON representation
            create jn.make_integer (i8)
            assert ("jn.representation.same_string (%"42%")", jn.representation.same_string ("42"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            if attached {JSON_NUMBER} json.value (i8) as l_jn then
            	assert ("l_jn.representation.same_string (%"42%")", jn.representation.same_string ("42"))
			else
				assert ("json.value (i8) is a JSON_NUMBER", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            -- Note: The JSON_FACTORY will return the smallest INTEGER_* object
            -- that can represent the value of the JSON number, in this case
            -- we know it is INTEGER_8 since the value is 42
            jrep := "42"
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
            	if attached {INTEGER_8} json.object (jn, Void) as l_i8 then
					assert ("l_i8 = 42", l_i8 = 42)
				else
					assert ("json.object (jn, Void) is a INTEGER_8", False)
				end
			else
				assert ("parser.parse is a JSON_NUMBER", False)
			end
        end

    test_json_number_and_integer_16
        local
            i16: INTEGER_16
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            i16 := 300
            -- Eiffel value -> JSON value -> JSON representation
            create jn.make_integer (i16)
            assert ("jn.representation.same_string (%"300%")", jn.representation.same_string ("300"))
            -- Eiffel value -> JSON with factory
            if attached {JSON_NUMBER} json.value (i16) as l_jn then
            	assert ("l_jn.representation.same_string (%"300%")", l_jn.representation.same_string ("300"))
			else
				assert ("json.value (i16) is a JSON_NUMBER", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            -- Note: The JSON_FACTORY will return the smallest INTEGER_* object
            -- that can represent the value of the JSON number, in this case
            -- we know it is INTEGER_16 since the value is 300
            jrep := "300"
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
            	if attached {INTEGER_16} json.object (jn, Void) as l_i16 then
					assert ("l_i16 = 300", l_i16 = 300)
				else
					assert ("json.object (jn, Void) is a INTEGER_16", False)
				end
			else
				assert ("parser.parse is a JSON_NUMBER", False)
			end
        end

    test_json_number_and_integer_32
        local
            i32: INTEGER_32
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            i32 := 100000
            -- Eiffel value -> JSON representation -> JSON value
            create jn.make_integer (i32)
            assert ("jn.representation.same_string (%"100000%")", jn.representation.same_string ("100000"))
            -- Eiffel value -> JSON representation -> JSON value with factory
            if attached {JSON_NUMBER} json.value (i32) as l_jn then
     	       assert ("l_jn.representation.same_string (%"100000%")", l_jn.representation.same_string ("100000"))
			else
				assert ("json.value (i32) is a JSON_NUMBER", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            -- Note: The JSON_FACTORY will return the smallest INTEGER_* object
            -- that can represent the value of the JSON number, in this case
            -- we know it is INTEGER_32 since the value is 100000
            jrep := "100000"
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
            	if attached {INTEGER_32} json.object (jn, Void) as l_i32 then
					assert ("l_i32 = 100000", l_i32 = 100000)
				else
					assert ("json.object (jn, Void) is a INTEGER_32", False)
				end
			else
				assert ("parser.parse is a JSON_NUMBER", False)
			end
        end

    test_json_number_and_integer_64
        local
            i64: INTEGER_64
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            i64 := 42949672960
            -- Eiffel value -> JSON value -> JSON representation
            create jn.make_integer (i64)
            assert ("jn.representation.same_string (%"42949672960%")", jn.representation.same_string ("42949672960"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            if attached {JSON_NUMBER} json.value (i64) as l_jn then
	            assert ("l_jn.representation.same_string (%"42949672960%")", l_jn.representation.same_string ("42949672960"))
			else
				assert ("json.value (i64) is a JSON_NUMBER", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            -- Note: The JSON_FACTORY will return the smallest INTEGER_* object
            -- that can represent the value of the JSON number, in this case
            -- we know it is INTEGER_32 since the value is 42949672960
            jrep := "42949672960"
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
            	if attached {INTEGER_64} json.object (jn, Void) as l_i64 then
					assert ("l_i64 = 42949672960", l_i64 = 42949672960)
				else
					assert ("json.object (jn, Void) is a INTEGER_64", False)
				end
			else
				assert ("parser.parse is a JSON_NUMBER", False)
			end
        end

    test_json_number_and_natural_8
        local
            n8: NATURAL_8
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            n8 := 200
            -- Eiffel value -> JSON value -> JSON representation
            create jn.make_natural (n8)
            assert ("jn.representation.same_string (%"200%")", jn.representation.same_string ("200"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            if attached {JSON_NUMBER} json.value (n8) as l_jn then
	            assert ("l_jn.representation.same_string (%"200%")", l_jn.representation.same_string ("200"))
	        else
	        	assert ("json.value (n8) is a JSON_NUMBER}", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            -- Note: The JSON_FACTORY will return the smallest INTEGER_* object
            -- that can represent the value of the JSON number, in this case
            -- we know it is INTEGER_16 since the value is 200
            jrep := "200"
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
	            if attached {INTEGER_16} json.object (jn, Void) as i16 then
	            	assert ("i16 = 200", i16 = 200)
	            else
	            	assert ("json.object (jn, Void) is an INTEGER_16", False)
	            end
			else
				assert ("parser.parse is a JSON_NUMBER", False)
            end
        end

    test_json_number_and_natural_16
        local
            n16: NATURAL_16
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            n16 := 32768
            -- Eiffel value -> JSON value -> JSON representation
            create jn.make_natural (n16)
            assert ("jn.representation.same_string (%"32768%")", jn.representation.same_string ("32768"))
            -- Eiffel value -> JSON value -> JSON representation with factory
			if attached {JSON_NUMBER} json.value (n16) as l_jn then
	            assert ("l_jn.representation.same_string (%"32768%")", l_jn.representation.same_string ("32768"))
	        else
	        	assert  ("json.value (n16) is a JSON_NUMBER", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            -- Note: The JSON_FACTORY will return the smallest INTEGER_* object
            -- that can represent the value of the JSON number, in this case
            -- we know it is INTEGER_32 since the value is 32768
            jrep := "32768"
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
	            if attached {INTEGER_32} json.object (jn, Void) as i32 then
					assert ("i32 = 32768", i32 = 32768)
				else
					assert ("json.object (jn, Void) is a INTEGER_32", False)
				end
			else
				assert ("parser.parse is a JSON_NUMBER", False)
			end
        end

    test_json_number_and_natural_32
        local
            n32: NATURAL_32
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            n32 := 2147483648
            -- Eiffel value -> JSON value -> JSON representation
            create jn.make_natural (n32)
            assert ("jn.representation.same_string (%"2147483648%")", jn.representation.same_string ("2147483648"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            if attached json.value (n32) as l_jn then
	            assert ("l_jn.representation.same_string (%"2147483648%")", l_jn.representation.same_string ("2147483648"))
	        else
	        	assert ("json.value (n32) is a JSON_NUMBER", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            -- Note: The JSON_FACTORY will return the smallest INTEGER_* object
            -- that can represent the value of the JSON number, in this case
            -- we know it is INTEGER_64 since the value is 2147483648
            jrep := "2147483648"
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
	            if attached {INTEGER_64} json.object (jn, Void) as i64 then
	            	assert ("i64 = 2147483648", i64 = 2147483648)
	            else
	            	assert ("json.object (jn, Void) is a INTEGER_64", False)
	            end
	        else
	        	assert ("parser.parse is a JSON_NUMBER", False)
	        end
        end

    test_json_number_and_large_integers
        local
            jrep: STRING
            n64: NATURAL_64
            jn: JSON_NUMBER
            parser: JSON_PARSER
        do
            n64 := 9223372036854775808
            -- Eiffel value -> JSON value -> JSON representation
            create jn.make_natural (n64)
            assert ("jn.representation.same_string (%"9223372036854775808%")", jn.representation.same_string ("9223372036854775808"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            if attached {JSON_NUMBER} json.value (n64) as l_jn then
	            assert ("l_jn.representation.same_string (%"9223372036854775808%")", l_jn.representation.same_string ("9223372036854775808"))
	        else
	        	assert ("json.value (n64) is a JSON_NUMBER", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            -- Note: The JSON_FACTORY will return the smallest INTEGER_* object
            -- that can represent the value of the JSON number, in this case
            -- we know it is INTEGER_32 since the value is 42949672960
            jrep := "9223372036854775808" -- 1 higher than largest positive number that can be represented by INTEGER 64
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
	            if attached {NATURAL_64} json.object (jn, Void) as l_n64 then
	            	assert ("l_n64 = 9223372036854775808", l_n64 = 9223372036854775808)
	            else
	            	assert ("json.object (jn, Void) is a NATURAL_64", False)
	            end
	        else
	        	assert ("parser.parse is a JSON_NUMBER", False)
	        end
        end

    test_json_number_and_eiffel_real
        local
            r: REAL
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            r := 3.14
            -- Eiffel value -> JSON value -> JSON representation
            create jn.make_real (r)
            assert ("jn.representation.same_string (%"3.1400001049041748%")", jn.representation.same_string ("3.1400001049041748"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            if attached {JSON_NUMBER} json.value (r) as l_jn then
	            assert ("l_jn.representation.same_string (%"3.1400001049041748%")", l_jn.representation.same_string ("3.1400001049041748"))
	        else
	        	assert ("json.value (r) is a JSON_NUMBER", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            -- Note: The JSON_FACTORY will always return a REAL_64 if the value
            -- of the JSON number is a floating point number
            jrep := "3.14"
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
	            if attached {REAL_64} json.object (jn, Void) as r64 then
	            	assert ("3.14 <= r64 and r64 <= 3.141", 3.14 <= r64 and r64 <= 3.141)
	            else
	            	assert ("json.object (jn, Void) is a REAL_64", False)
	            end
	        else
	       		assert ("parser.parse is a JSON_NUMBER", False)
	        end
        end

    test_json_number_and_eiffel_real_32
        local
            r32: REAL_32
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            r32 := 3.14
            -- Eiffel value -> JSON value -> JSON representation
            create jn.make_real (r32)
            assert ("jn.representation.same_string (%"3.1400001049041748%")", jn.representation.same_string ("3.1400001049041748"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            if attached {JSON_NUMBER} json.value (r32) as l_jn then
 	           assert ("l_jn.representation.same_string (%"3.1400001049041748%")", l_jn.representation.same_string ("3.1400001049041748"))
			else
				assert ("json.value (r32) is a JSON_NUMBER", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            jrep := "3.1400001049041748"
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
	            if attached {REAL_64} json.object (l_jn, Void) as r64 then
	            	assert ("r64 = 3.1400001049041748", r64 = 3.1400001049041748)
	            else
	            	assert ("json.object (l_jn, Void) is a REAL_64", False)
	            end
			else
				assert ("parser.parse is a JSON_NUMBER", False)
            end
        end

    test_json_number_and_eiffel_real_64
        local
            r64: REAL_64
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            r64 := 3.1415926535897931
            -- Eiffel value -> JSON value -> JSON representation
            create jn.make_real (r64)
            assert ("jn.representation.same_string (%"3.1415926535897931%")", jn.representation.same_string ("3.1415926535897931"))

            -- Eiffel value -> JSON value -> JSON representation with factory
            if attached {JSON_NUMBER} json.value (r64) as l_jn then
				assert ("l_jn.representation.same_string (%"3.1415926535897931%")", l_jn.representation.same_string ("3.1415926535897931"))
    		else
	            assert ("json.value (r64) is a JSON_NUMBER", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            jrep := "3.1415926535897931"
            create parser.make_parser (jrep)
            if attached {JSON_NUMBER} parser.parse as l_jn then
	            if attached {REAL_64} json.object (jn, Void) as l_r64 then
	            	assert ("l_r64 = 3.1415926535897931", l_r64 = 3.1415926535897931)
	            else
	            	assert ("json.object (jn, Void) is a REAL_64", False)
	            end
	        else
	            assert ("parser.parse is a JSON_NUMBER", False)
            end
        end

    test_json_boolean
        local
            parser: JSON_PARSER
            jb: JSON_BOOLEAN
            b: BOOLEAN
        do
            -- Eiffel value -> JSON value -> JSON representation
            b := True
            create jb.make_boolean (b)
            assert ("jb.representation.is_equal (%"true%")", jb.representation.is_equal ("true"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            if attached {JSON_BOOLEAN} json.value (b) as l_jb then
            	assert ("l_jb.representation.same_string (%"true%")", l_jb.representation.same_string ("true"))
	        else
	        	assert ("l_jb /= Void", False)
	        end

            -- JSON representation -> JSON value -> Eiffel value
            create parser.make_parser ("true")
            if attached {JSON_BOOLEAN} parser.parse as l_jb then
	            if attached {BOOLEAN} json.object (l_jb, Void) as l_b then
	            	assert ("l_b = True", l_b = True)
	            else
		            assert ("json.object (l_jb, Void) is BOOLEAN", False)
	            end
			else
	        	assert ("parser.parse is a JSON_BOOLEAN", False)
            end

            -- Eiffel value -> JSON value -> JSON representation
            b := False
            create jb.make_boolean (b)
            assert ("jb.representation.same_string (%"false%")", jb.representation.same_string ("false"))
            -- Eiffel value -> JSON value  -> JSON representation with factory
            if attached {JSON_BOOLEAN} json.value (b) as l_jb then
	            assert ("l_jb.representation.same_string (%"false%")", l_jb.representation.same_string ("false"))
            else
            	assert ("json.value (b) is a JSON_BOOLEAN", False)
            end

            -- JSON representation -> JSON value -> Eiffel value
            create parser.make_parser ("false")
            if attached {JSON_BOOLEAN} parser.parse as l_jb then
	            if attached {BOOLEAN} json.object (l_jb, Void) as l_b then
		            assert ("l_b = False", l_b = False)
				else
					assert ("json.object (l_jb, Void) is a BOOLEAN", False)
				end
            else
	            assert ("parser.parse is a JSON_BOOLEAN", False)
            end
        end

    test_json_null
        local
            a: detachable ANY
            dummy_object: STRING
            jn: detachable JSON_NULL
            jrep: STRING
            parser: JSON_PARSER
        do
            -- Eiffel value -> JSON value -> JSON representation
            create jn
            assert ("jn /= Void", jn /= Void)
            assert ("jn.representation.is_equal (%"%"null%"%")", jn.representation.is_equal ("null"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            jn ?= json.value (Void)
            assert ("jn /= Void", jn /= Void)
            if attached jn as l_jn then
				assert ("jn.representation.is_equal (%"null%")", l_jn.representation.is_equal ("null"))
            end

            -- JSON representation -> JSON value -> Eiffel value
            jrep := "null"
            create parser.make_parser (jrep)
            jn := Void
            jn ?= parser.parse
            assert ("jn /= Void", jn /= Void)
            create dummy_object.make_empty
            a := dummy_object
            a ?= json.object (jn, Void)
            assert ("a = Void", a = Void)
        end

    test_json_string_and_character
        local
            c: CHARACTER
            js: detachable JSON_STRING
            jrep: STRING
            parser: JSON_PARSER
        do
            c := 'a'
            -- Eiffel value -> JSON value -> JSON representation
            create js.make_json (c.out)
            assert ("js /= Void", js /= Void)
            assert ("js.representation.is_equal (%"%"a%"%")", js.representation.is_equal ("%"a%""))
            -- Eiffel value -> JSON value -> JSON representation with factory
            js ?= json.value (c)
            assert ("js /= Void", js /= Void)
            if attached js as l_js then
				assert ("js.representation.is_equal (%"%"a%"%")", l_js.representation.is_equal ("%"a%""))
            end

            -- JSON representation -> JSON value -> Eiffel value
            jrep := "%"a%""
            create parser.make_parser (jrep)
            js := Void
            js ?= parser.parse
            assert ("js /= Void", js /= Void)
            if attached {STRING_32} json.object (js, Void) as ucs then
				assert ("ucs.string.is_equal (%"a%")", ucs.string.is_equal ("a"))
            end

        end

    test_json_string_and_string
        local
            s: STRING
            js: detachable JSON_STRING
            jrep: STRING
            parser: JSON_PARSER
        do
            s := "foobar"
            -- Eiffel value -> JSON value -> JSON representation
            create js.make_json (s)
            assert ("js /= Void", js /= Void)
            assert ("js.representation.is_equal (%"%"foobar%"%")", js.representation.is_equal ("%"foobar%""))
            -- Eiffel value -> JSON value -> JSON representation with factory
            js ?= json.value (s)
            assert ("js /= Void", js /= Void)
            if attached js as l_js then
				assert ("js.representation.is_equal (%"%"foobar%"%")", js.representation.is_equal ("%"foobar%""))
            end

            -- JSON representation -> JSON value -> Eiffel value
            jrep := "%"foobar%""
            create parser.make_parser (jrep)
            js := Void
            js ?= parser.parse
            assert ("js /= Void", js /= Void)
            if attached {STRING_32} json.object (js, Void) as l_ucs then
            	assert ("ucs.string.is_equal (%"foobar%")", l_ucs.string.is_equal ("foobar"))
            end
        end

    test_json_string_and_uc_string
        local
            js: detachable JSON_STRING
            ucs: detachable STRING_32
            jrep: STRING
            parser: JSON_PARSER
        do
            create ucs.make_from_string ("foobar")
            -- Eiffel value -> JSON value -> JSON representation
            create js.make_json (ucs)
            assert ("js /= Void", js /= Void)
            assert ("js.representation.is_equal (%"%"foobar%"%")", js.representation.is_equal ("%"foobar%""))
            -- Eiffel value -> JSON value -> JSON representation with factory
            js ?= json.value (ucs)
            assert ("js /= Void", js /= Void)
            if attached js as l_js then
	            assert ("js.representation.is_equal (%"%"foobar%"%")", l_js.representation.is_equal ("%"foobar%""))
            end

            -- JSON representation -> JSON value -> Eiffel value
            jrep := "%"foobar%""
            create parser.make_parser (jrep)
            js := Void
            js ?= parser.parse
            assert ("js /= Void", js /= Void)
            ucs := Void
            ucs ?= json.object (js, Void)
            if attached ucs as l_ucs then
				assert ("ucs.string.is_equal (%"foobar%")", l_ucs.string.is_equal ("foobar"))
            end
        end

    test_json_string_and_special_characters
        local
            js: detachable JSON_STRING
            s: detachable STRING_8
            ucs: detachable STRING_32
            jrep: STRING
            parser: JSON_PARSER
        do
            create s.make_from_string ("foo\bar")
            create js.make_json (s)

            assert ("js.representation.same_string (%"%"foo\\bar%"%")", js.representation.same_string ("%"foo\\bar%""))

            -- Eiffel value -> JSON value -> JSON representation with factory
            js ?= json.value (s)
            assert ("js /= Void", js /= Void)
            if js /= Void then
	            assert ("js.representation.is_equal (%"%"foobar%"%")", js.representation.same_string ("%"foo\\bar%""))
            end

            -- JSON representation -> JSON value -> Eiffel value
            jrep := "%"foo\\bar%""
            create parser.make_parser (jrep)
            js ?= parser.parse
            assert ("js /= Void", js /= Void)
            ucs ?= json.object (js, Void)
            if ucs /= Void then
				assert ("ucs.same_string (%"foo\bar%")", ucs.same_string ("foo\bar"))
            end

            jrep := "%"foo\\bar%""
			create parser.make_parser (jrep)
			if attached {JSON_STRING} parser.parse as jstring then
				assert ("unescaped string %"foo\\bar%" to %"foo\bar%"", jstring.unescaped_string_8.same_string ("foo\bar"))
			end

            create js.make_json_from_string_32 ({STRING_32}"%/20320/%/22909/")
            assert ("escaping unicode string32 %"%%/20320/%%/22909/%" %"\u4F60\u597D%"", js.item.same_string ("\u4F60\u597D"))

            jrep := "%"\u4F60\u597D%""  --| Ni hao
			create parser.make_parser (jrep)
			if attached {JSON_STRING} parser.parse as jstring then
				assert ("same unicode string32 %"%%/20320/%%/22909/%"", jstring.unescaped_string_32.same_string ({STRING_32}"%/20320/%/22909/"))
			end
        end

    test_json_array
        local
            ll: LINKED_LIST [INTEGER_8]
            ll2: detachable LINKED_LIST [detachable ANY]
            ja: detachable JSON_ARRAY
            jn: JSON_NUMBER
            jrep: STRING
            parser: JSON_PARSER
        do
            -- Eiffel value -> JSON value -> JSON representation
            create ll.make
            ll.extend (0)
            ll.extend (1)
            ll.extend (1)
            ll.extend (2)
            ll.extend (3)
            ll.extend (5)
            -- Note: Currently there is no simple way of creating a JSON_ARRAY
            -- from an LINKED_LIST.
            create ja.make_array
            from
                ll.start
            until
                ll.after
            loop
                create jn.make_integer (ll.item)
                ja.add (jn)
                ll.forth
            end
            assert ("ja /= Void", ja /= Void)
            assert ("ja.representation.is_equal (%"[0,1,1,2,3,5]%")", ja.representation.is_equal ("[0,1,1,2,3,5]"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            ja := Void
            ja ?= json.value (ll)
            assert ("ja /= Void", ja /= Void)
            if attached ja as l_ja then
            	assert ("ja.representation.is_equal (%"[0,1,1,2,3,5]%")", l_ja.representation.is_equal ("[0,1,1,2,3,5]"))
            end

            -- JSON representation -> JSON value -> Eiffel value
            -- Note: The JSON_FACTORY will return the smallest INTEGER_* object
            -- that can represent the value of the JSON number, in this case
            -- it means we will get an LINKED_LIST [ANY] containing the INTEGER_8
            -- values 0, 1, 1, 2, 3, 5
            jrep := "[0,1,1,2,3,5]"
            create parser.make_parser (jrep)
            ja := Void
            ja ?= parser.parse
            assert ("ja /= Void", ja /= Void)
            ll2 ?= json.object (ja, Void)
            assert ("ll2 /= Void", ll2 /= Void)
            --ll.compare_objects
            --ll2.compare_objects
            if attached ll2 as l_ll2 then
				assert ("ll2.is_equal (ll)", l_ll2.is_equal (ll))
            end

        end

    test_json_object
        local
            t, t2: detachable HASH_TABLE [detachable ANY, STRING_GENERAL]
            i: INTEGER
            ucs_key, ucs: STRING_32
            a: ARRAY [INTEGER]
            jo: detachable JSON_OBJECT
            jn: JSON_NUMBER
            js_key, js: JSON_STRING
            ja: JSON_ARRAY
            jrep: STRING
            parser: JSON_PARSER
        do
            -- Eiffel value -> JSON value -> JSON representation
            -- Note: Currently there is now way of creating a JSON_OBJECT from
            -- a HASH_TABLE, so we do it manually.
            -- t = {"name": "foobar", "size": 42, "contents", [0, 1, 1, 2, 3, 5]}
            create jo.make
            create js_key.make_json ("name")
            create js.make_json ("foobar")
            jo.put (js, js_key)
            create js_key.make_json ("size")
            create jn.make_integer (42)
            jo.put (jn, js_key)
            create js_key.make_json ("contents")
            create ja.make_array
            create jn.make_integer (0)
            ja.add (jn)
            create jn.make_integer (1)
            ja.add (jn)
            create jn.make_integer (1)
            ja.add (jn)
            create jn.make_integer (2)
            ja.add (jn)
            create jn.make_integer (3)
            ja.add (jn)
            create jn.make_integer (5)
            ja.add (jn)
            jo.put (ja, js_key)
            assert ("jo /= Void", jo /= Void)
            assert ("jo.representation.is_equal (%"{%"name%":%"foobar%",%"size%":42,%"contents%":[0,1,1,2,3,5]}%")", jo.representation.is_equal ("{%"name%":%"foobar%",%"size%":42,%"contents%":[0,1,1,2,3,5]}"))
            -- Eiffel value -> JSON value -> JSON representation with factory
            create t.make (3)
            create ucs_key.make_from_string ("name")
            create ucs.make_from_string ("foobar")
            t.put (ucs, ucs_key)
            create ucs_key.make_from_string ("size")
            i := 42
            t.put (i, ucs_key)
            create ucs_key.make_from_string ("contents")
            a := <<0, 1, 1, 2, 3, 5>>
            t.put (a, ucs_key)
            jo := Void
            jo ?= json.value (t)
            assert ("jo /= Void", jo /= Void)
            if attached jo as l_jo then
				assert ("jo.representation.is_equal (%"{%"name%":%"foobar%",%"size%":42,%"contents%":[0,1,1,2,3,5]}%")", l_jo.representation.is_equal ("{%"name%":%"foobar%",%"size%":42,%"contents%":[0,1,1,2,3,5]}"))
            end
            -- JSON representation -> JSON value -> Eiffel value -> JSON value -> JSON representation
            jrep := "{%"name%":%"foobar%",%"size%":42,%"contents%":[0,1,1,2,3,5]}"
            create parser.make_parser (jrep)
            jo := Void
            jo ?= parser.parse
            assert ("jo /= Void", jo /= Void)
            t2 ?= json.object (jo, Void)
            assert ("t2 /= Void", t2 /= Void)
            jo ?= json.value (t2)
            assert ("jo /= Void", jo /= Void)
            if attached jo as l_jo then
            	assert ("jrep.is_equal (jo.representation)", jrep.is_equal (jo.representation))
            end

        end

    test_json_object_hash_code
        local
            ht: HASH_TABLE [ANY, JSON_VALUE]
            jo: JSON_OBJECT
        do
            create ht.make (1)
            create jo.make
            ht.force ("", jo)
            assert ("ht.has_key (jo)", ht.has_key (jo))
        end

    test_json_failed_json_conversion
            -- Test converting an Eiffel object to JSON that is based on a class
            -- for which no JSON converter has been registered.
        local
            gv: OPERATING_ENVIRONMENT
            jv: detachable JSON_VALUE
            exception: BOOLEAN
        do
            if not exception then
                create gv
                jv := json.value (gv)
            else
                assert ("exceptions.is_developer_exception", json.is_developer_exception)
--                assert ("exceptions.is_developer_exception_of_name", json.is_developer_exception_of_name ("eJSON exception: Failed to convert Eiffel object to a JSON_VALUE: OPERATING_ENVIRONMENT"))
            end
        rescue
            exception := True
            retry
        end

    test_json_failed_eiffel_conversion
            -- Test converting from a JSON value to an Eiffel object based on a
            -- class for which no JSON converter has been registered.
        local
        	gv : detachable OPERATING_ENVIRONMENT
            jo: JSON_OBJECT
            exception: BOOLEAN
        do
            if not exception then
                create jo.make
                gv ?= json.object (jo, "OPERATING_ENVIRONMENT")
            else
                assert ("exceptions.is_developer_exception", json.is_developer_exception)
--                assert ("exceptions.is_developer_exception_of_name", json.is_developer_exception_of_name ("eJSON exception: Failed to convert JSON_VALUE to an Eiffel object: JSON_OBJECT -> OPERATING_ENVIRONMENT"))

            end
        rescue
            exception := True
            retry
        end

end -- class TEST_JSON_CORE
