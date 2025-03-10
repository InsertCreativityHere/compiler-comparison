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
    global $Test__t_MyException;
    class MyException extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::Test::MyException';
        }

        public function __toString(): string
        {
            global $Test__t_MyException;
            return IcePHP_stringifyException($this, $Test__t_MyException);
        }
    }

    $Test__t_MyException = IcePHP_defineException('::Test::MyException', '\\Test\\MyException', null, null);
}

namespace Test
{
    global $Test__t_MyClass;
    global $Test__t_MyClassPrx;
    $Test__t_MyClassPrx = IcePHP_declareProxy('::Test::MyClass');
}

namespace Test
{
    global $Test__t_MyClass;
    global $Test__t_MyClassPrx;

    class MyClassPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::Test::MyClass');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::Test::MyClass', ...$args);
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

    global $IcePHP__t_string;
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opOneway', 0, -1, null, null, null, null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opString', 0, -1, array(array($IcePHP__t_string)), array(array($IcePHP__t_string)), array($IcePHP__t_string), null);
    IcePHP_defineOperation($Test__t_MyClassPrx, 'opException', 0, -1, null, null, null, array($Test__t_MyException));
    IcePHP_defineOperation($Test__t_MyClassPrx, 'shutdown', 0, -1, null, null, null, null);
}
?>
