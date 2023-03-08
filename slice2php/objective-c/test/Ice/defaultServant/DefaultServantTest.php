<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `DefaultServantTest.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace Test
{
    global $Test__t_MyObject;
    global $Test__t_MyObjectPrx;

    class MyObjectPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MyObject', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MyObject', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MyObject';
        }
    }
    $Test__t_MyObject = IcePHP_defineClass('::Test::MyObject', '\\Test\\MyObject', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_MyObjectPrx = IcePHP_defineProxy('::Test::MyObject', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    IcePHP_defineOperation($Test__t_MyObjectPrx, 'getName', 0, 0, 0, null, null, array($IcePHP__t_string), null);
}
?>
