<?php
// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>


namespace BEGIN
{
    global $BEGIN__t_END;
    class END
    {
        const alias = 0;
    }

    $BEGIN__t_END = IcePHP_defineEnum('::BEGIN::END', array('alias', 0));
}

namespace BEGIN
{
    global $BEGIN__t_and;
    class _and
    {
        public function __construct($begin=0)
        {
            $this->begin = $begin;
        }

        public function __toString(): string
        {
            global $BEGIN__t_and;
            return IcePHP_stringify($this, $BEGIN__t_and);
        }

        public $begin;
    }

    global $IcePHP__t_int;
    $BEGIN__t_and = IcePHP_defineStruct('::BEGIN::and', '\\BEGIN\\_and', array(
        array('begin', $IcePHP__t_int)));
}

namespace BEGIN
{
    global $BEGIN__t_break;
    global $BEGIN__t_breakPrx;
    $BEGIN__t_breakPrx = IcePHP_declareProxy('::BEGIN::break');
}

namespace BEGIN
{
    global $BEGIN__t_break;
    global $BEGIN__t_breakPrx;

    class breakPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::BEGIN::break');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::BEGIN::break', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::BEGIN::break', $facet);
        }

        public static function ice_staticId()
        {
            return '::BEGIN::break';
        }
    }

    global $Ice__t_ObjectPrx;
    $BEGIN__t_breakPrx = IcePHP_defineProxy('::BEGIN::break', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_int;
    IcePHP_defineOperation($BEGIN__t_breakPrx, 'case', 0, -1, array(array($IcePHP__t_int), array($IcePHP__t_int)), null, null, null);
    IcePHP_defineOperation($BEGIN__t_breakPrx, 'to_a', 0, -1, null, null, null, null);
    IcePHP_defineOperation($BEGIN__t_breakPrx, 'instance_variable_set', 0, -1, null, null, null, null);
    IcePHP_defineOperation($BEGIN__t_breakPrx, 'instance_variables', 0, -1, null, null, null, null);
}

namespace BEGIN
{
    global $BEGIN__t_display;
    $BEGIN__t_display = IcePHP_declareClass('::BEGIN::display');
}

namespace BEGIN
{
    global $BEGIN__t_display;
    class display extends \Ice\Value
    {
        public function __construct($when=0, $_do=0, $dup=null, $_else=0)
        {
            $this->when = $when;
            $this->_do = $_do;
            $this->dup = $dup;
            $this->_else = $_else;
        }

        public function ice_id()
        {
            return '::BEGIN::display';
        }

        public static function ice_staticId()
        {
            return '::BEGIN::display';
        }

        public function __toString(): string
        {
            global $BEGIN__t_display;
            return IcePHP_stringify($this, $BEGIN__t_display);
        }

        public $when;
        public $_do;
        public $dup;
        public $_else;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    global $BEGIN__t_breakPrx;
    $BEGIN__t_display = IcePHP_defineClass('::BEGIN::display', '\\BEGIN\\display', -1, false, $Ice__t_Value, array(
        array('when', $IcePHP__t_int, false, 0),
        array('_do', $IcePHP__t_int, false, 0),
        array('dup', $BEGIN__t_breakPrx, false, 0),
        array('_else', $IcePHP__t_int, false, 0)));
}

namespace BEGIN
{
    global $BEGIN__t_elsif;
    global $BEGIN__t_elsifPrx;
    $BEGIN__t_elsifPrx = IcePHP_declareProxy('::BEGIN::elsif');
}

namespace BEGIN
{
    global $BEGIN__t_elsif;
    global $BEGIN__t_elsifPrx;

    class elsifPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::BEGIN::elsif');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::BEGIN::elsif', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::BEGIN::elsif', $facet);
        }

        public static function ice_staticId()
        {
            return '::BEGIN::elsif';
        }
    }

    global $Ice__t_ObjectPrx;
    $BEGIN__t_elsifPrx = IcePHP_defineProxy('::BEGIN::elsif', $Ice__t_ObjectPrx, array($BEGIN__t_breakPrx));
}

namespace BEGIN
{
    global $BEGIN__t_rescue;

    if(!isset($BEGIN__t_rescue))
    {
        global $BEGIN__t_END;
        $BEGIN__t_rescue = IcePHP_defineSequence('::BEGIN::rescue', $BEGIN__t_END);
    }
}

namespace BEGIN
{
    global $BEGIN__t_ensure;

    if(!isset($BEGIN__t_ensure))
    {
        global $IcePHP__t_string;
        global $BEGIN__t_END;
        $BEGIN__t_ensure = IcePHP_defineDictionary('::BEGIN::ensure', $IcePHP__t_string, $BEGIN__t_END);
    }
}

namespace BEGIN
{
    global $BEGIN__t_next;
    class next extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::BEGIN::next';
        }

        public function __toString(): string
        {
            global $BEGIN__t_next;
            return IcePHP_stringifyException($this, $BEGIN__t_next);
        }

        public $_new;
    }
    global $IcePHP__t_int;

    $BEGIN__t_next = IcePHP_defineException('::BEGIN::next', '\\BEGIN\\next', null, array(
        array('_new', $IcePHP__t_int, false, 0)));
}

namespace BEGIN
{
    global $BEGIN__t_nil;
    class nil extends \BEGIN\next
    {
        public function ice_id()
        {
            return '::BEGIN::nil';
        }

        public function __toString(): string
        {
            global $BEGIN__t_nil;
            return IcePHP_stringifyException($this, $BEGIN__t_nil);
        }

        public $not;
        public $_or;
    }
    global $IcePHP__t_int;

    $BEGIN__t_nil = IcePHP_defineException('::BEGIN::nil', '\\BEGIN\\nil', $BEGIN__t_next, array(
        array('not', $IcePHP__t_int, false, 0),
        array('_or', $IcePHP__t_int, false, 0)));
}

namespace BEGIN
{
    global $BEGIN__t_extend;
    global $BEGIN__t_extendPrx;
    $BEGIN__t_extendPrx = IcePHP_declareProxy('::BEGIN::extend');
}

namespace BEGIN
{
    global $BEGIN__t_extend;
    global $BEGIN__t_extendPrx;

    class extendPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::BEGIN::extend');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::BEGIN::extend', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::BEGIN::extend', $facet);
        }

        public static function ice_staticId()
        {
            return '::BEGIN::extend';
        }
    }

    global $Ice__t_ObjectPrx;
    $BEGIN__t_extendPrx = IcePHP_defineProxy('::BEGIN::extend', $Ice__t_ObjectPrx, null);

    global $BEGIN__t_display;
    global $BEGIN__t_elsifPrx;
    global $BEGIN__t_breakPrx;
    global $IcePHP__t_int;
    global $BEGIN__t_END;
    IcePHP_defineOperation($BEGIN__t_extendPrx, 'for', 0, -1, array(array($BEGIN__t_display), array($BEGIN__t_elsifPrx), array($BEGIN__t_breakPrx), array($BEGIN__t_display), array($BEGIN__t_elsifPrx), array($IcePHP__t_int)), null, array($BEGIN__t_END), array($BEGIN__t_nil));
}

namespace BEGIN
{
    if(!defined('\\BEGIN\\redo'))
    {
        define(__NAMESPACE__ . '\\redo', 1);
    }
}
?>
