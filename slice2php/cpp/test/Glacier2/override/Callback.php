<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Callback.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once 'Ice/BuiltinSequences.php';
}

namespace Test
{
    global $Test__t_CallbackReceiver;
    global $Test__t_CallbackReceiverPrx;

    class CallbackReceiverPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::CallbackReceiver', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::CallbackReceiver', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::CallbackReceiver';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_CallbackReceiverPrx = IcePHP_defineProxy('::Test::CallbackReceiver', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_int;
    global $Ice__t_ByteSeq;
    IcePHP_defineOperation($Test__t_CallbackReceiverPrx, 'callback', 0, 0, array(array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($Test__t_CallbackReceiverPrx, 'callbackWithPayload', 0, 0, array(array($Ice__t_ByteSeq)), null, null, null);
}

namespace Test
{
    global $Test__t_Callback;
    global $Test__t_CallbackPrx;

    class CallbackPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test::Callback', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::Callback', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::Callback';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_CallbackPrx = IcePHP_defineProxy('::Test::Callback', $Ice__t_ObjectPrx, null);

    global $Test__t_CallbackReceiverPrx;
    global $IcePHP__t_int;
    IcePHP_defineOperation($Test__t_CallbackPrx, 'initiateCallback', 0, 0, array(array($Test__t_CallbackReceiverPrx), array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($Test__t_CallbackPrx, 'initiateCallbackWithPayload', 0, 0, array(array($Test__t_CallbackReceiverPrx)), null, null, null);
    IcePHP_defineOperation($Test__t_CallbackPrx, 'shutdown', 0, 0, null, null, null, null);
}
?>
