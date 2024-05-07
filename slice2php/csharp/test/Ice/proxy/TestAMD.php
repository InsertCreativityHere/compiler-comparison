<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `TestAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once 'Ice/Context.php';
}

namespace Test
{
    global $Test__t_MyClass;
    global $Test__t_MyClassPrx;

    class MyClassPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MyClass', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MyClass', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MyClass';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_MyClassPrx = IcePHP_defineProxy('::Test::MyClass', $Ice__t_ObjectPrx, null);

    global $Ice__t_Context;
    IcePHP_defineOperation($Test__t_MyClassPrx, 'shutdown', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'getContext', 0, 0, null, null, array($Ice__t_Context), null);
}

namespace Test
{
    global $Test__t_MyDerivedClass;
    global $Test__t_MyDerivedClassPrx;

    class MyDerivedClassPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MyDerivedClass', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MyDerivedClass', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MyDerivedClass';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_MyDerivedClassPrx = IcePHP_defineProxy('::Test::MyDerivedClass', $Ice__t_ObjectPrx, array($Test__t_MyClassPrx));

    global $Ice__t_ObjectPrx;
    IcePHP_defineOperation($Test__t_MyDerivedClassPrx, 'echo', 0, 0, array(array($Ice__t_ObjectPrx)), null, array($Ice__t_ObjectPrx), null);
}
?>
