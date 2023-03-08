<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace Test
{
    global $Test__t_Default;
    class _Default extends \Ice\Value
    {
        public function __construct($x=10, $y=10)
        {
            $this->x = $x;
            $this->y = $y;
        }

        public function ice_id()
        {
            return '::Test::Default';
        }

        public static function ice_staticId()
        {
            return '::Test::Default';
        }

        public function __toString(): string
        {
            global $Test__t_Default;
            return IcePHP_stringify($this, $Test__t_Default);
        }

        public $x;
        public $y;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $Test__t_Default = IcePHP_defineClass('::Test::Default', '\\Test\\_Default', -1, false, false, $Ice__t_Value, array(
        array('x', $IcePHP__t_int, false, 0),
        array('y', $IcePHP__t_int, false, 0)));
}

namespace Test
{
    global $Test__t_NoDefault;
    class NoDefault extends \Ice\Value
    {
        public function __construct($x=0, $y=0)
        {
            $this->x = $x;
            $this->y = $y;
        }

        public function ice_id()
        {
            return '::Test::NoDefault';
        }

        public static function ice_staticId()
        {
            return '::Test::NoDefault';
        }

        public function __toString(): string
        {
            global $Test__t_NoDefault;
            return IcePHP_stringify($this, $Test__t_NoDefault);
        }

        public $x;
        public $y;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $Test__t_NoDefault = IcePHP_defineClass('::Test::NoDefault', '\\Test\\NoDefault', -1, false, false, $Ice__t_Value, array(
        array('x', $IcePHP__t_int, false, 0),
        array('y', $IcePHP__t_int, false, 0)));
}

namespace Test
{
    global $Test__t_PhpOnly;
    class PhpOnly extends \Ice\Value
    {
        public function __construct($lang="php", $version=30709)
        {
            $this->lang = $lang;
            $this->version = $version;
        }

        public function ice_id()
        {
            return '::Test::PhpOnly';
        }

        public static function ice_staticId()
        {
            return '::Test::PhpOnly';
        }

        public function __toString(): string
        {
            global $Test__t_PhpOnly;
            return IcePHP_stringify($this, $Test__t_PhpOnly);
        }

        public $lang;
        public $version;
    }

    global $Ice__t_Value;
    global $IcePHP__t_string;
    global $IcePHP__t_int;
    $Test__t_PhpOnly = IcePHP_defineClass('::Test::PhpOnly', '\\Test\\PhpOnly', -1, false, false, $Ice__t_Value, array(
        array('lang', $IcePHP__t_string, false, 0),
        array('version', $IcePHP__t_int, false, 0)));
}
?>
