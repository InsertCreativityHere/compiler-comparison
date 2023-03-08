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


namespace Test\MA
{
    global $Test_MA__t_IA;
    global $Test_MA__t_IAPrx;

    class IAPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MA::IA', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MA::IA', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MA::IA';
        }
    }
    $Test_MA__t_IA = IcePHP_defineClass('::Test::MA::IA', '\\Test\\MA\\IA', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test_MA__t_IAPrx = IcePHP_defineProxy('::Test::MA::IA', $Ice__t_ObjectPrx, null);

    global $Test_MA__t_IAPrx;
    IcePHP_defineOperation($Test_MA__t_IAPrx, 'iaop', 0, 0, 0, array(array($Test_MA__t_IAPrx)), null, array($Test_MA__t_IAPrx), null);
}

namespace Test\MA
{
    global $Test_MA__t_CA;
    global $Test_MA__t_CAPrx;
    class CA extends \Ice\Value
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::Test::MA::CA';
        }

        public static function ice_staticId()
        {
            return '::Test::MA::CA';
        }

        public function __toString(): string
        {
            global $Test_MA__t_CA;
            return IcePHP_stringify($this, $Test_MA__t_CA);
        }
    }

    class CAPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MA::CA', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MA::CA', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MA::CA';
        }
    }

    global $Ice__t_Value;
    $Test_MA__t_CA = IcePHP_defineClass('::Test::MA::CA', '\\Test\\MA\\CA', -1, false, false, $Ice__t_Value, null);

    global $Ice__t_ObjectPrx;
    $Test_MA__t_CAPrx = IcePHP_defineProxy('::Test::MA::CA', $Ice__t_ObjectPrx, null);

    global $Test_MA__t_CAPrx;
    IcePHP_defineOperation($Test_MA__t_CAPrx, 'caop', 0, 0, 0, array(array($Test_MA__t_CAPrx)), null, array($Test_MA__t_CAPrx), null);
}

namespace Test\MB
{
    global $Test_MB__t_IB1;
    global $Test_MB__t_IB1Prx;

    class IB1PrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MB::IB1', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MB::IB1', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MB::IB1';
        }
    }
    $Test_MB__t_IB1 = IcePHP_defineClass('::Test::MB::IB1', '\\Test\\MB\\IB1', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test_MB__t_IB1Prx = IcePHP_defineProxy('::Test::MB::IB1', $Ice__t_ObjectPrx, array($Test_MA__t_IAPrx));

    global $Test_MB__t_IB1Prx;
    IcePHP_defineOperation($Test_MB__t_IB1Prx, 'ib1op', 0, 0, 0, array(array($Test_MB__t_IB1Prx)), null, array($Test_MB__t_IB1Prx), null);
}

namespace Test\MB
{
    global $Test_MB__t_IB2;
    global $Test_MB__t_IB2Prx;

    class IB2PrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MB::IB2', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MB::IB2', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MB::IB2';
        }
    }
    $Test_MB__t_IB2 = IcePHP_defineClass('::Test::MB::IB2', '\\Test\\MB\\IB2', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test_MB__t_IB2Prx = IcePHP_defineProxy('::Test::MB::IB2', $Ice__t_ObjectPrx, array($Test_MA__t_IAPrx));

    global $Test_MB__t_IB2Prx;
    IcePHP_defineOperation($Test_MB__t_IB2Prx, 'ib2op', 0, 0, 0, array(array($Test_MB__t_IB2Prx)), null, array($Test_MB__t_IB2Prx), null);
}

namespace Test\MB
{
    global $Test_MB__t_CB;
    global $Test_MB__t_CBPrx;
    class CB extends \Test\MA\CA
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function ice_id()
        {
            return '::Test::MB::CB';
        }

        public static function ice_staticId()
        {
            return '::Test::MB::CB';
        }

        public function __toString(): string
        {
            global $Test_MB__t_CB;
            return IcePHP_stringify($this, $Test_MB__t_CB);
        }
    }

    class CBPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MB::CB', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MB::CB', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MB::CB';
        }
    }

    global $Test_MA__t_CA;
    $Test_MB__t_CB = IcePHP_defineClass('::Test::MB::CB', '\\Test\\MB\\CB', -1, false, false, $Test_MA__t_CA, null);

    global $Test_MA__t_CAPrx;
    $Test_MB__t_CBPrx = IcePHP_defineProxy('::Test::MB::CB', $Test_MA__t_CAPrx, null);

    global $Test_MB__t_CBPrx;
    IcePHP_defineOperation($Test_MB__t_CBPrx, 'cbop', 0, 0, 0, array(array($Test_MB__t_CBPrx)), null, array($Test_MB__t_CBPrx), null);
}

namespace Test\MA
{
    global $Test_MA__t_IC;
    global $Test_MA__t_ICPrx;

    class ICPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MA::IC', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MA::IC', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MA::IC';
        }
    }
    $Test_MA__t_IC = IcePHP_defineClass('::Test::MA::IC', '\\Test\\MA\\IC', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test_MA__t_ICPrx = IcePHP_defineProxy('::Test::MA::IC', $Ice__t_ObjectPrx, array($Test_MB__t_IB1Prx, $Test_MB__t_IB2Prx));

    global $Test_MA__t_ICPrx;
    IcePHP_defineOperation($Test_MA__t_ICPrx, 'icop', 0, 0, 0, array(array($Test_MA__t_ICPrx)), null, array($Test_MA__t_ICPrx), null);
}

namespace Test\MA
{
    global $Test_MA__t_CC;
    global $Test_MA__t_CCPrx;
    class CC extends \Test\MB\CB
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function ice_id()
        {
            return '::Test::MA::CC';
        }

        public static function ice_staticId()
        {
            return '::Test::MA::CC';
        }

        public function __toString(): string
        {
            global $Test_MA__t_CC;
            return IcePHP_stringify($this, $Test_MA__t_CC);
        }
    }

    class CCPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MA::CC', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MA::CC', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MA::CC';
        }
    }

    global $Test_MB__t_CB;
    $Test_MA__t_CC = IcePHP_defineClass('::Test::MA::CC', '\\Test\\MA\\CC', -1, false, false, $Test_MB__t_CB, null);

    global $Test_MB__t_CBPrx;
    $Test_MA__t_CCPrx = IcePHP_defineProxy('::Test::MA::CC', $Test_MB__t_CBPrx, null);

    global $Test_MA__t_CCPrx;
    IcePHP_defineOperation($Test_MA__t_CCPrx, 'ccop', 0, 0, 0, array(array($Test_MA__t_CCPrx)), null, array($Test_MA__t_CCPrx), null);
}

namespace Test\MA
{
    global $Test_MA__t_CD;
    global $Test_MA__t_CDPrx;
    class CD extends \Test\MA\CC
    {
        public function __construct()
        {
            parent::__construct();
        }

        public function ice_id()
        {
            return '::Test::MA::CD';
        }

        public static function ice_staticId()
        {
            return '::Test::MA::CD';
        }

        public function __toString(): string
        {
            global $Test_MA__t_CD;
            return IcePHP_stringify($this, $Test_MA__t_CD);
        }
    }

    class CDPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::MA::CD', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::MA::CD', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::MA::CD';
        }
    }

    global $Test_MA__t_CC;
    $Test_MA__t_CD = IcePHP_defineClass('::Test::MA::CD', '\\Test\\MA\\CD', -1, false, false, $Test_MA__t_CC, null);

    global $Test_MA__t_CCPrx;
    $Test_MA__t_CDPrx = IcePHP_defineProxy('::Test::MA::CD', $Test_MA__t_CCPrx, array($Test_MB__t_IB1Prx, $Test_MB__t_IB2Prx));

    global $Test_MA__t_CDPrx;
    IcePHP_defineOperation($Test_MA__t_CDPrx, 'cdop', 0, 0, 0, array(array($Test_MA__t_CDPrx)), null, array($Test_MA__t_CDPrx), null);
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
    $Test__t_Initial = IcePHP_defineClass('::Test::Initial', '\\Test\\Initial', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_InitialPrx = IcePHP_defineProxy('::Test::Initial', $Ice__t_ObjectPrx, null);

    global $Test_MA__t_CAPrx;
    global $Test_MB__t_CBPrx;
    global $Test_MA__t_CCPrx;
    global $Test_MA__t_CDPrx;
    global $Test_MA__t_IAPrx;
    global $Test_MB__t_IB1Prx;
    global $Test_MB__t_IB2Prx;
    global $Test_MA__t_ICPrx;
    IcePHP_defineOperation($Test__t_InitialPrx, 'shutdown', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'caop', 0, 0, 0, null, null, array($Test_MA__t_CAPrx), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'cbop', 0, 0, 0, null, null, array($Test_MB__t_CBPrx), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'ccop', 0, 0, 0, null, null, array($Test_MA__t_CCPrx), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'cdop', 0, 0, 0, null, null, array($Test_MA__t_CDPrx), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'iaop', 0, 0, 0, null, null, array($Test_MA__t_IAPrx), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'ib1op', 0, 0, 0, null, null, array($Test_MB__t_IB1Prx), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'ib2op', 0, 0, 0, null, null, array($Test_MB__t_IB2Prx), null);
    IcePHP_defineOperation($Test__t_InitialPrx, 'icop', 0, 0, 0, null, null, array($Test_MA__t_ICPrx), null);
}
?>
