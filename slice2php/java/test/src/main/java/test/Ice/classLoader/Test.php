<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
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
    global $Test__t_ConcreteClass;
    class ConcreteClass extends \Ice\Value
    {
        public function __construct($i=0)
        {
            $this->i = $i;
        }

        public function ice_id()
        {
            return '::Test::ConcreteClass';
        }

        public static function ice_staticId()
        {
            return '::Test::ConcreteClass';
        }

        public function __toString(): string
        {
            global $Test__t_ConcreteClass;
            return IcePHP_stringify($this, $Test__t_ConcreteClass);
        }

        public $i;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $Test__t_ConcreteClass = IcePHP_defineClass('::Test::ConcreteClass', '\\Test\\ConcreteClass', -1, false, $Ice__t_Value, array(
        array('i', $IcePHP__t_int, false, 0)));
}

namespace Test
{
    global $Test__t_E;
    class E extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::Test::E';
        }

        public function __toString(): string
        {
            global $Test__t_E;
            return IcePHP_stringifyException($this, $Test__t_E);
        }
    }

    $Test__t_E = IcePHP_defineException('::Test::E', '\\Test\\E', null, null);
}

namespace Test
{
    global $Test__t_Initial;
    global $Test__t_InitialPrx;

    class InitialPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Initial', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Initial', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Initial';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_InitialPrx = IcePHP_defineProxy('::Test::Initial', $Ice__t_ObjectPrx, null);

    global $Test__t_ConcreteClass;
    IcePHP_defineOperation($Test__t_InitialPrx, 'getConcreteClass', 0, 0, null, null, array($Test__t_ConcreteClass), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'throwException', 0, 0, null, null, null, array($Test__t_E));
    IcePHP_defineOperation($Test__t_InitialPrx, 'shutdown', 0, 0, null, null, null, null);
}
?>
