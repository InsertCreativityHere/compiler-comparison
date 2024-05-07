<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `WstringAMD.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace Test1
{
    global $Test1__t_WstringSeq;

    if(!isset($Test1__t_WstringSeq))
    {
        global $IcePHP__t_string;
        $Test1__t_WstringSeq = IcePHP_defineSequence('::Test1::WstringSeq', $IcePHP__t_string);
    }
}

namespace Test1
{
    global $Test1__t_WstringWStringDict;

    if(!isset($Test1__t_WstringWStringDict))
    {
        global $IcePHP__t_string;
        global $IcePHP__t_string;
        $Test1__t_WstringWStringDict = IcePHP_defineDictionary('::Test1::WstringWStringDict', $IcePHP__t_string, $IcePHP__t_string);
    }
}

namespace Test1
{
    global $Test1__t_WstringStruct;
    class WstringStruct
    {
        public function __construct($s='')
        {
            $this->s = $s;
        }

        public function __toString(): string
        {
            global $Test1__t_WstringStruct;
            return IcePHP_stringify($this, $Test1__t_WstringStruct);
        }

        public $s;
    }

    global $IcePHP__t_string;
    $Test1__t_WstringStruct = IcePHP_defineStruct('::Test1::WstringStruct', '\\Test1\\WstringStruct', array(
        array('s', $IcePHP__t_string)));
}

namespace Test1
{
    global $Test1__t_WstringException;
    class WstringException extends \Ice\UserException
    {
        public function __construct($reason='')
        {
            $this->reason = $reason;
        }

        public function ice_id()
        {
            return '::Test1::WstringException';
        }

        public function __toString(): string
        {
            global $Test1__t_WstringException;
            return IcePHP_stringifyException($this, $Test1__t_WstringException);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $Test1__t_WstringException = IcePHP_defineException('::Test1::WstringException', '\\Test1\\WstringException', null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace Test1
{
    global $Test1__t_WstringClass;
    global $Test1__t_WstringClassPrx;

    class WstringClassPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test1::WstringClass', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test1::WstringClass', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test1::WstringClass';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test1__t_WstringClassPrx = IcePHP_defineProxy('::Test1::WstringClass', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $Test1__t_WstringStruct;
    IcePHP_defineOperation($Test1__t_WstringClassPrx, 'opString', 0, 0, array(array($IcePHP__t_string)), array(array($IcePHP__t_string)), array($IcePHP__t_string), null);
    IcePHP_defineOperation($Test1__t_WstringClassPrx, 'opStruct', 0, 0, array(array($Test1__t_WstringStruct)), array(array($Test1__t_WstringStruct)), array($Test1__t_WstringStruct), null);
    IcePHP_defineOperation($Test1__t_WstringClassPrx, 'throwExcept', 0, 0, array(array($IcePHP__t_string)), null, null, array($Test1__t_WstringException));
}

namespace Test2
{
    global $Test2__t_WstringSeq;

    if(!isset($Test2__t_WstringSeq))
    {
        global $IcePHP__t_string;
        $Test2__t_WstringSeq = IcePHP_defineSequence('::Test2::WstringSeq', $IcePHP__t_string);
    }
}

namespace Test2
{
    global $Test2__t_WstringWStringDict;

    if(!isset($Test2__t_WstringWStringDict))
    {
        global $IcePHP__t_string;
        global $IcePHP__t_string;
        $Test2__t_WstringWStringDict = IcePHP_defineDictionary('::Test2::WstringWStringDict', $IcePHP__t_string, $IcePHP__t_string);
    }
}

namespace Test2
{
    global $Test2__t_WstringStruct;
    class WstringStruct
    {
        public function __construct($s='')
        {
            $this->s = $s;
        }

        public function __toString(): string
        {
            global $Test2__t_WstringStruct;
            return IcePHP_stringify($this, $Test2__t_WstringStruct);
        }

        public $s;
    }

    global $IcePHP__t_string;
    $Test2__t_WstringStruct = IcePHP_defineStruct('::Test2::WstringStruct', '\\Test2\\WstringStruct', array(
        array('s', $IcePHP__t_string)));
}

namespace Test2
{
    global $Test2__t_WstringException;
    class WstringException extends \Ice\UserException
    {
        public function __construct($reason='')
        {
            $this->reason = $reason;
        }

        public function ice_id()
        {
            return '::Test2::WstringException';
        }

        public function __toString(): string
        {
            global $Test2__t_WstringException;
            return IcePHP_stringifyException($this, $Test2__t_WstringException);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $Test2__t_WstringException = IcePHP_defineException('::Test2::WstringException', '\\Test2\\WstringException', null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace Test2
{
    global $Test2__t_WstringClass;
    global $Test2__t_WstringClassPrx;

    class WstringClassPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Test2::WstringClass', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Test2::WstringClass', $facet);
        }

        public static function ice_staticId()
        {
            return '::Test2::WstringClass';
        }
    }

    global $Ice__t_ObjectPrx;
    $Test2__t_WstringClassPrx = IcePHP_defineProxy('::Test2::WstringClass', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $Test2__t_WstringStruct;
    IcePHP_defineOperation($Test2__t_WstringClassPrx, 'opString', 0, 0, array(array($IcePHP__t_string)), array(array($IcePHP__t_string)), array($IcePHP__t_string), null);
    IcePHP_defineOperation($Test2__t_WstringClassPrx, 'opStruct', 0, 0, array(array($Test2__t_WstringStruct)), array(array($Test2__t_WstringStruct)), array($Test2__t_WstringStruct), null);
    IcePHP_defineOperation($Test2__t_WstringClassPrx, 'throwExcept', 0, 0, array(array($IcePHP__t_string)), null, null, array($Test2__t_WstringException));
}
?>
