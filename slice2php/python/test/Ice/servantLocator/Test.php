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
    global $Test__t_TestIntfUserException;
    class TestIntfUserException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::Test::TestIntfUserException';
        }

        public function __toString(): string
        {
            global $Test__t_TestIntfUserException;
            return IcePHP_stringifyException($this, $Test__t_TestIntfUserException);
        }
    }

    $Test__t_TestIntfUserException = IcePHP_defineException('::Test::TestIntfUserException', '\\Test\\TestIntfUserException', null, null);
}

namespace Test
{
    global $Test__t_TestImpossibleException;
    class TestImpossibleException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::Test::TestImpossibleException';
        }

        public function __toString(): string
        {
            global $Test__t_TestImpossibleException;
            return IcePHP_stringifyException($this, $Test__t_TestImpossibleException);
        }
    }

    $Test__t_TestImpossibleException = IcePHP_defineException('::Test::TestImpossibleException', '\\Test\\TestImpossibleException', null, null);
}

namespace Test
{
    global $Test__t_TestIntf;
    global $Test__t_TestIntfPrx;
    $Test__t_TestIntfPrx = IcePHP_declareProxy('::Test::TestIntf');
}

namespace Test
{
    global $Test__t_TestIntf;
    global $Test__t_TestIntfPrx;

    class TestIntfPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::TestIntf');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::TestIntf', ...$args);
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

    global $IcePHP__t_bool;
    global $IcePHP__t_string;
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'requestFailedException', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownUserException', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownLocalException', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownException', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'localException', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'userException', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'pythonException', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'unknownExceptionWithServantException', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'impossibleException', 0, -1, array(array($IcePHP__t_bool)), null, array($IcePHP__t_string), array($Test__t_TestImpossibleException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'intfUserException', 0, -1, array(array($IcePHP__t_bool)), null, array($IcePHP__t_string), array($Test__t_TestIntfUserException, $Test__t_TestImpossibleException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'asyncResponse', 0, -1, null, null, null, array($Test__t_TestIntfUserException, $Test__t_TestImpossibleException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'asyncException', 0, -1, null, null, null, array($Test__t_TestIntfUserException, $Test__t_TestImpossibleException));
    IcePHP_defineOperation($Test__t_TestIntfPrx, 'shutdown', 0, -1, null, null, null, null);
}

namespace Test
{
    global $Test__t_TestActivation;
    global $Test__t_TestActivationPrx;
    $Test__t_TestActivationPrx = IcePHP_declareProxy('::Test::TestActivation');
}

namespace Test
{
    global $Test__t_TestActivation;
    global $Test__t_TestActivationPrx;

    class TestActivationPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::TestActivation');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::TestActivation', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test::TestActivation', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test::TestActivation';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test__t_TestActivationPrx = IcePHP_defineProxy('::Test::TestActivation', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_bool;
    IcePHP_defineOperation($Test__t_TestActivationPrx, 'activateServantLocator', 0, -1, array(array($IcePHP__t_bool)), null, null, null);
}
?>
