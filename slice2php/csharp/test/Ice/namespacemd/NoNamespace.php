<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `NoNamespace.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace NoNamespace
{
    global $NoNamespace__t_C1;
    class C1 extends \Ice\Value
    {
        public function __construct($i=0)
        {
            $this->i = $i;
        }

        public function ice_id()
        {
            return '::NoNamespace::C1';
        }

        public static function ice_staticId()
        {
            return '::NoNamespace::C1';
        }

        public function __toString(): string
        {
            global $NoNamespace__t_C1;
            return IcePHP_stringify($this, $NoNamespace__t_C1);
        }

        public $i;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $NoNamespace__t_C1 = IcePHP_defineClass('::NoNamespace::C1', '\\NoNamespace\\C1', -1, false, false, $Ice__t_Value, array(
        array('i', $IcePHP__t_int, false, 0)));
}

namespace NoNamespace
{
    global $NoNamespace__t_C2;
    class C2 extends \NoNamespace\C1
    {
        public function __construct($i=0, $l=0)
        {
            parent::__construct($i);
            $this->l = $l;
        }

        public function ice_id()
        {
            return '::NoNamespace::C2';
        }

        public static function ice_staticId()
        {
            return '::NoNamespace::C2';
        }

        public function __toString(): string
        {
            global $NoNamespace__t_C2;
            return IcePHP_stringify($this, $NoNamespace__t_C2);
        }

        public $l;
    }

    global $NoNamespace__t_C1;
    global $IcePHP__t_long;
    $NoNamespace__t_C2 = IcePHP_defineClass('::NoNamespace::C2', '\\NoNamespace\\C2', -1, false, false, $NoNamespace__t_C1, array(
        array('l', $IcePHP__t_long, false, 0)));
}

namespace NoNamespace
{
    global $NoNamespace__t_E1;
    class E1 extends \Ice\UserException
    {
        public function __construct($i=0)
        {
            $this->i = $i;
        }

        public function ice_id()
        {
            return '::NoNamespace::E1';
        }

        public function __toString(): string
        {
            global $NoNamespace__t_E1;
            return IcePHP_stringifyException($this, $NoNamespace__t_E1);
        }

        public $i;
    }
    global $IcePHP__t_int;

    $NoNamespace__t_E1 = IcePHP_defineException('::NoNamespace::E1', '\\NoNamespace\\E1', false, null, array(
        array('i', $IcePHP__t_int, false, 0)));
}

namespace NoNamespace
{
    global $NoNamespace__t_E2;
    class E2 extends \NoNamespace\E1
    {
        public function __construct($i=0, $l=0)
        {
            parent::__construct($i);
            $this->l = $l;
        }

        public function ice_id()
        {
            return '::NoNamespace::E2';
        }

        public function __toString(): string
        {
            global $NoNamespace__t_E2;
            return IcePHP_stringifyException($this, $NoNamespace__t_E2);
        }

        public $l;
    }
    global $IcePHP__t_long;

    $NoNamespace__t_E2 = IcePHP_defineException('::NoNamespace::E2', '\\NoNamespace\\E2', false, $NoNamespace__t_E1, array(
        array('l', $IcePHP__t_long, false, 0)));
}

namespace NoNamespace
{
    global $NoNamespace__t_notify;
    class notify extends \Ice\UserException
    {
        public function __construct($i=0)
        {
            $this->i = $i;
        }

        public function ice_id()
        {
            return '::NoNamespace::notify';
        }

        public function __toString(): string
        {
            global $NoNamespace__t_notify;
            return IcePHP_stringifyException($this, $NoNamespace__t_notify);
        }

        public $i;
    }
    global $IcePHP__t_int;

    $NoNamespace__t_notify = IcePHP_defineException('::NoNamespace::notify', '\\NoNamespace\\notify', false, null, array(
        array('i', $IcePHP__t_int, false, 0)));
}
?>
