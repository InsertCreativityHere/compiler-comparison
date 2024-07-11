<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Namespace.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace WithNamespace
{
    global $WithNamespace__t_C1;
    class C1 extends \Ice\Value
    {
        public function __construct($i=0)
        {
            $this->i = $i;
        }

        public function ice_id()
        {
            return '::WithNamespace::C1';
        }

        public static function ice_staticId()
        {
            return '::WithNamespace::C1';
        }

        public function __toString(): string
        {
            global $WithNamespace__t_C1;
            return IcePHP_stringify($this, $WithNamespace__t_C1);
        }

        public $i;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $WithNamespace__t_C1 = IcePHP_defineClass('::WithNamespace::C1', '\\WithNamespace\\C1', -1, false, $Ice__t_Value, array(
        array('i', $IcePHP__t_int, false, 0)));
}

namespace WithNamespace
{
    global $WithNamespace__t_C2;
    class C2 extends \WithNamespace\C1
    {
        public function __construct($i=0, $l=0)
        {
            parent::__construct($i);
            $this->l = $l;
        }

        public function ice_id()
        {
            return '::WithNamespace::C2';
        }

        public static function ice_staticId()
        {
            return '::WithNamespace::C2';
        }

        public function __toString(): string
        {
            global $WithNamespace__t_C2;
            return IcePHP_stringify($this, $WithNamespace__t_C2);
        }

        public $l;
    }

    global $WithNamespace__t_C1;
    global $IcePHP__t_long;
    $WithNamespace__t_C2 = IcePHP_defineClass('::WithNamespace::C2', '\\WithNamespace\\C2', -1, false, $WithNamespace__t_C1, array(
        array('l', $IcePHP__t_long, false, 0)));
}

namespace WithNamespace
{
    global $WithNamespace__t_E1;
    class E1 extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::WithNamespace::E1';
        }

        public function __toString(): string
        {
            global $WithNamespace__t_E1;
            return IcePHP_stringifyException($this, $WithNamespace__t_E1);
        }

        public $i;
    }
    global $IcePHP__t_int;

    $WithNamespace__t_E1 = IcePHP_defineException('::WithNamespace::E1', '\\WithNamespace\\E1', null, array(
        array('i', $IcePHP__t_int, false, 0)));
}

namespace WithNamespace
{
    global $WithNamespace__t_E2;
    class E2 extends \WithNamespace\E1
    {
        public function ice_id()
        {
            return '::WithNamespace::E2';
        }

        public function __toString(): string
        {
            global $WithNamespace__t_E2;
            return IcePHP_stringifyException($this, $WithNamespace__t_E2);
        }

        public $l;
    }
    global $IcePHP__t_long;

    $WithNamespace__t_E2 = IcePHP_defineException('::WithNamespace::E2', '\\WithNamespace\\E2', $WithNamespace__t_E1, array(
        array('l', $IcePHP__t_long, false, 0)));
}
?>
