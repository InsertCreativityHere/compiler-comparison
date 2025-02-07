<?php
// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Package.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>


namespace Test2
{
    global $Test2__t_C1;
    $Test2__t_C1 = IcePHP_declareClass('::Test2::C1');
}

namespace Test2
{
    global $Test2__t_C1;
    class C1 extends \Ice\Value
    {
        public function __construct($i=0)
        {
            $this->i = $i;
        }

        public function ice_id()
        {
            return '::Test2::C1';
        }

        public static function ice_staticId()
        {
            return '::Test2::C1';
        }

        public function __toString(): string
        {
            global $Test2__t_C1;
            return IcePHP_stringify($this, $Test2__t_C1);
        }

        public $i;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $Test2__t_C1 = IcePHP_defineClass('::Test2::C1', '\\Test2\\C1', -1, false, $Ice__t_Value, array(
        array('i', $IcePHP__t_int, false, 0)));
}

namespace Test2
{
    global $Test2__t_C2;
    $Test2__t_C2 = IcePHP_declareClass('::Test2::C2');
}

namespace Test2
{
    global $Test2__t_C2;
    class C2 extends \Test2\C1
    {
        public function __construct($i=0, $l=0)
        {
            parent::__construct($i);
            $this->l = $l;
        }

        public function ice_id()
        {
            return '::Test2::C2';
        }

        public static function ice_staticId()
        {
            return '::Test2::C2';
        }

        public function __toString(): string
        {
            global $Test2__t_C2;
            return IcePHP_stringify($this, $Test2__t_C2);
        }

        public $l;
    }

    global $Test2__t_C1;
    global $IcePHP__t_long;
    $Test2__t_C2 = IcePHP_defineClass('::Test2::C2', '\\Test2\\C2', -1, false, $Test2__t_C1, array(
        array('l', $IcePHP__t_long, false, 0)));
}

namespace Test2
{
    global $Test2__t_E1;
    class E1 extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::Test2::E1';
        }

        public function __toString(): string
        {
            global $Test2__t_E1;
            return IcePHP_stringifyException($this, $Test2__t_E1);
        }

        public $i;
    }
    global $IcePHP__t_int;

    $Test2__t_E1 = IcePHP_defineException('::Test2::E1', '\\Test2\\E1', null, array(
        array('i', $IcePHP__t_int, false, 0)));
}

namespace Test2
{
    global $Test2__t_E2;
    class E2 extends \Test2\E1
    {
        public function ice_id()
        {
            return '::Test2::E2';
        }

        public function __toString(): string
        {
            global $Test2__t_E2;
            return IcePHP_stringifyException($this, $Test2__t_E2);
        }

        public $l;
    }
    global $IcePHP__t_long;

    $Test2__t_E2 = IcePHP_defineException('::Test2::E2', '\\Test2\\E2', $Test2__t_E1, array(
        array('l', $IcePHP__t_long, false, 0)));
}

namespace Test3
{
    global $Test3__t_C1;
    $Test3__t_C1 = IcePHP_declareClass('::Test3::C1');
}

namespace Test3
{
    global $Test3__t_C1;
    class C1 extends \Ice\Value
    {
        public function __construct($i=0)
        {
            $this->i = $i;
        }

        public function ice_id()
        {
            return '::Test3::C1';
        }

        public static function ice_staticId()
        {
            return '::Test3::C1';
        }

        public function __toString(): string
        {
            global $Test3__t_C1;
            return IcePHP_stringify($this, $Test3__t_C1);
        }

        public $i;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $Test3__t_C1 = IcePHP_defineClass('::Test3::C1', '\\Test3\\C1', -1, false, $Ice__t_Value, array(
        array('i', $IcePHP__t_int, false, 0)));
}

namespace Test3
{
    global $Test3__t_C2;
    $Test3__t_C2 = IcePHP_declareClass('::Test3::C2');
}

namespace Test3
{
    global $Test3__t_C2;
    class C2 extends \Test3\C1
    {
        public function __construct($i=0, $l=0)
        {
            parent::__construct($i);
            $this->l = $l;
        }

        public function ice_id()
        {
            return '::Test3::C2';
        }

        public static function ice_staticId()
        {
            return '::Test3::C2';
        }

        public function __toString(): string
        {
            global $Test3__t_C2;
            return IcePHP_stringify($this, $Test3__t_C2);
        }

        public $l;
    }

    global $Test3__t_C1;
    global $IcePHP__t_long;
    $Test3__t_C2 = IcePHP_defineClass('::Test3::C2', '\\Test3\\C2', -1, false, $Test3__t_C1, array(
        array('l', $IcePHP__t_long, false, 0)));
}

namespace Test3
{
    global $Test3__t_E1;
    class E1 extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::Test3::E1';
        }

        public function __toString(): string
        {
            global $Test3__t_E1;
            return IcePHP_stringifyException($this, $Test3__t_E1);
        }

        public $i;
    }
    global $IcePHP__t_int;

    $Test3__t_E1 = IcePHP_defineException('::Test3::E1', '\\Test3\\E1', null, array(
        array('i', $IcePHP__t_int, false, 0)));
}

namespace Test3
{
    global $Test3__t_E2;
    class E2 extends \Test3\E1
    {
        public function ice_id()
        {
            return '::Test3::E2';
        }

        public function __toString(): string
        {
            global $Test3__t_E2;
            return IcePHP_stringifyException($this, $Test3__t_E2);
        }

        public $l;
    }
    global $IcePHP__t_long;

    $Test3__t_E2 = IcePHP_defineException('::Test3::E2', '\\Test3\\E2', $Test3__t_E1, array(
        array('l', $IcePHP__t_long, false, 0)));
}
?>
