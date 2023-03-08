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
    global $Test__t_TestException;
    class TestException extends \Ice\UserException
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::Test::TestException';
        }

        public function __toString(): string
        {
            global $Test__t_TestException;
            return IcePHP_stringifyException($this, $Test__t_TestException);
        }
    }

    $Test__t_TestException = IcePHP_defineException('::Test::TestException', '\\Test\\TestException', false, null, null);
}

namespace Test
{
    global $Test__t_TestIntf;
    global $Test__t_TestIntfPrx;

    class TestIntfPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::TestIntf', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::TestIntf', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::TestIntf';
        }
    }
    $Test__t_TestIntf = IcePHP_defineClass('::Test::TestIntf', '\\Test\\TestIntf', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_TestIntfPrx = IcePHP_defineProxy('::Test::TestIntf', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_int;
    global $Test__t_TestIntfPrx;
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'op', 0, 0, 0, null, null, array($IcePHP__t_int), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'callOpOn', 0, 0, 0, array(array($Test__t_TestIntfPrx)), null, array($IcePHP__t_int), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'throwUserException1', 0, 0, 0, null, null, null, array($Test__t_TestException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'throwUserException2', 0, 0, 0, null, null, null, array($Test__t_TestException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'throwUnhandledException1', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'throwUnhandledException2', 0, 0, 0, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'sleep', 0, 0, 0, array(array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'shutdown', 0, 0, 0, null, null, null, null);
}
?>
