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
    global $Test__t_ByteSeq;

    if(!isset($Test__t_ByteSeq))
    {
        global $IcePHP__t_byte;
        $Test__t_ByteSeq = IcePHP_defineSequence('::Test::ByteSeq', $IcePHP__t_byte);
    }
}

namespace Test
{
    global $Test__t_ShortSeq;

    if(!isset($Test__t_ShortSeq))
    {
        global $IcePHP__t_short;
        $Test__t_ShortSeq = IcePHP_defineSequence('::Test::ShortSeq', $IcePHP__t_short);
    }
}

namespace Test
{
    global $Test__t_StringSeq;

    if(!isset($Test__t_StringSeq))
    {
        global $IcePHP__t_string;
        $Test__t_StringSeq = IcePHP_defineSequence('::Test::StringSeq', $IcePHP__t_string);
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

    global $Ice__t_ObjectPrx;
    $Test__t_TestIntfPrx = IcePHP_defineProxy('::Test::TestIntf', $Ice__t_ObjectPrx, null);

    global $Test__t_ByteSeq;
    global $Test__t_ShortSeq;
    global $Test__t_StringSeq;
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opByteSpan', 0, 0, array(array($Test__t_ByteSeq)), array(array($Test__t_ByteSeq)), array($Test__t_ByteSeq), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opShortSpan', 0, 0, array(array($Test__t_ShortSeq)), array(array($Test__t_ShortSeq)), array($Test__t_ShortSeq), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opStringSpan', 0, 0, array(array($Test__t_StringSeq)), array(array($Test__t_StringSeq)), array($Test__t_StringSeq), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opOptionalByteSpan', 0, 0, array(array($Test__t_ByteSeq, 1)), array(array($Test__t_ByteSeq, 11)), array($Test__t_ByteSeq, 10), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opOptionalShortSpan', 0, 0, array(array($Test__t_ShortSeq, 1)), array(array($Test__t_ShortSeq, 11)), array($Test__t_ShortSeq, 10), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'opOptionalStringSpan', 0, 0, array(array($Test__t_StringSeq, 1)), array(array($Test__t_StringSeq, 11)), array($Test__t_StringSeq, 10), null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'shutdown', 0, 0, null, null, null, null);
}
?>
