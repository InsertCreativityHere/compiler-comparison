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


namespace
{
    require_once 'Ice/Identity.php';
}

namespace Test
{
    global $Test__t_PingReply;
    global $Test__t_PingReplyPrx;

    class PingReplyPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::PingReply', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::PingReply', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::PingReply';
        }
    }
    $Test__t_PingReply = IcePHP_defineClass('::Test::PingReply', '\\Test\\PingReply', -1, false, true, null, null);

    global $Ice__t_ObjectPrx;
    $Test__t_PingReplyPrx = IcePHP_defineProxy('::Test::PingReply', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($Test__t_PingReplyPrx, 'reply', 0, 0, 0, null, null, null, null);
}

namespace Test
{
    global $Test__t_ByteSeq;

    if(!isset($Test__t_ByteSeq))
    {
        global $IcePHP__t_byte;
        $Test__t_ByteSeq = IcePHP_defineSequence('::Test::ByteSeq', $IcePHP__t_byte);
    }
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

    global $Test__t_PingReplyPrx;
    global $Test__t_ByteSeq;
    global $Ice__t_Identity;
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'ping', 0, 0, 0, array(array($Test__t_PingReplyPrx)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'sendByteSeq', 0, 0, 0, array(array($Test__t_ByteSeq), array($Test__t_PingReplyPrx)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'pingBiDir', 0, 0, 0, array(array($Ice__t_Identity)), null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'shutdown', 0, 0, 0, null, null, null, null);
}
?>
