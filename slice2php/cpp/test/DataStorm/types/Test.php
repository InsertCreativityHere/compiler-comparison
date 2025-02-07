<?php
// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>


namespace Test
{
    global $Test__t_StructValue;
    class StructValue
    {
        public function __construct($firstName='', $lastName='', $age=0)
        {
            $this->firstName = $firstName;
            $this->lastName = $lastName;
            $this->age = $age;
        }

        public function __toString(): string
        {
            global $Test__t_StructValue;
            return IcePHP_stringify($this, $Test__t_StructValue);
        }

        public $firstName;
        public $lastName;
        public $age;
    }

    global $IcePHP__t_string;
    global $IcePHP__t_int;
    $Test__t_StructValue = IcePHP_defineStruct('::Test::StructValue', '\\Test\\StructValue', array(
        array('firstName', $IcePHP__t_string),
        array('lastName', $IcePHP__t_string),
        array('age', $IcePHP__t_int)));
}

namespace Test
{
    global $Test__t_Base;
    $Test__t_Base = IcePHP_declareClass('::Test::Base');
}

namespace Test
{
    global $Test__t_Base;
    class Base extends \Ice\Value
    {
        public function __construct($b='')
        {
            $this->b = $b;
        }

        public function ice_id()
        {
            return '::Test::Base';
        }

        public static function ice_staticId()
        {
            return '::Test::Base';
        }

        public function __toString(): string
        {
            global $Test__t_Base;
            return IcePHP_stringify($this, $Test__t_Base);
        }

        public $b;
    }

    global $Ice__t_Value;
    global $IcePHP__t_string;
    $Test__t_Base = IcePHP_defineClass('::Test::Base', '\\Test\\Base', -1, false, $Ice__t_Value, array(
        array('b', $IcePHP__t_string, false, 0)));
}

namespace Test
{
    global $Test__t_Extended;
    $Test__t_Extended = IcePHP_declareClass('::Test::Extended');
}

namespace Test
{
    global $Test__t_Extended;
    class Extended extends \Test\Base
    {
        public function __construct($b='', $e=0)
        {
            parent::__construct($b);
            $this->e = $e;
        }

        public function ice_id()
        {
            return '::Test::Extended';
        }

        public static function ice_staticId()
        {
            return '::Test::Extended';
        }

        public function __toString(): string
        {
            global $Test__t_Extended;
            return IcePHP_stringify($this, $Test__t_Extended);
        }

        public $e;
    }

    global $Test__t_Base;
    global $IcePHP__t_int;
    $Test__t_Extended = IcePHP_defineClass('::Test::Extended', '\\Test\\Extended', -1, false, $Test__t_Base, array(
        array('e', $IcePHP__t_int, false, 0)));
}
?>
