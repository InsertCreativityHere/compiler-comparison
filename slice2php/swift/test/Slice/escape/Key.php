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


namespace _and
{
    global $and__t_continue;
    class _continue
    {
        const let = 0;
        const _var = 1;
    }

    $and__t_continue = IcePHP_defineEnum('::and::continue', array('let', 0, 'var', 1));
}

namespace _and
{
    global $and__t_guard;
    class guard
    {
        public function __construct($_default=0)
        {
            $this->_default = $_default;
        }

        public function __toString(): string
        {
            global $and__t_guard;
            return IcePHP_stringify($this, $and__t_guard);
        }

        public $_default;
    }

    global $IcePHP__t_int;
    $and__t_guard = IcePHP_defineStruct('::and::guard', '\\_and\\guard', array(
        array('_default', $IcePHP__t_int)));
}

namespace _and
{
    global $and__t_defer;
    class defer
    {
        public function __construct($_else='')
        {
            $this->_else = $_else;
        }

        public function __toString(): string
        {
            global $and__t_defer;
            return IcePHP_stringify($this, $and__t_defer);
        }

        public $_else;
    }

    global $IcePHP__t_string;
    $and__t_defer = IcePHP_defineStruct('::and::defer', '\\_and\\defer', array(
        array('_else', $IcePHP__t_string)));
}

namespace _and
{
    global $and__t_break;
    global $and__t_breakPrx;
    $and__t_breakPrx = IcePHP_declareProxy('::and::break');
}

namespace _and
{
    global $and__t_break;
    global $and__t_breakPrx;

    class breakPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::and::break');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::and::break', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::and::break', $facet);
        }

        public static function ice_staticId()
        {
            return '::and::break';
        }
    }

    global $Ice__t_ObjectPrx;
    $and__t_breakPrx = IcePHP_defineProxy('::and::break', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_int;
    IcePHP_defineOperation($and__t_breakPrx, 'case', 0, -1, array(array($IcePHP__t_int)), array(array($IcePHP__t_int)), null, null);
}

namespace _and
{
    global $and__t_func;
    global $and__t_funcPrx;
    $and__t_funcPrx = IcePHP_declareProxy('::and::func');
}

namespace _and
{
    global $and__t_func;
    global $and__t_funcPrx;

    class funcPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::and::func');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::and::func', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::and::func', $facet);
        }

        public static function ice_staticId()
        {
            return '::and::func';
        }
    }

    global $Ice__t_ObjectPrx;
    $and__t_funcPrx = IcePHP_defineProxy('::and::func', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($and__t_funcPrx, 'public', 0, -1, null, null, null, null);
}

namespace _and
{
    global $and__t_switch;
    $and__t_switch = IcePHP_declareClass('::and::switch');
}

namespace _and
{
    global $and__t_switch;
    class _switch extends \Ice\Value
    {
        public function __construct($_if=0, $export=null, $volatile=0)
        {
            $this->_if = $_if;
            $this->export = $export;
            $this->volatile = $volatile;
        }

        public function ice_id()
        {
            return '::and::switch';
        }

        public static function ice_staticId()
        {
            return '::and::switch';
        }

        public function __toString(): string
        {
            global $and__t_switch;
            return IcePHP_stringify($this, $and__t_switch);
        }

        public $_if;
        public $export;
        public $volatile;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    global $and__t_funcPrx;
    $and__t_switch = IcePHP_defineClass('::and::switch', '\\_and\\_switch', -1, false, $Ice__t_Value, array(
        array('_if', $IcePHP__t_int, false, 0),
        array('export', $and__t_funcPrx, false, 0),
        array('volatile', $IcePHP__t_int, false, 0)));
}

namespace _and
{
    global $and__t_do;
    global $and__t_doPrx;
    $and__t_doPrx = IcePHP_declareProxy('::and::do');
}

namespace _and
{
    global $and__t_do;
    global $and__t_doPrx;

    class doPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::and::do');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::and::do', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::and::do', $facet);
        }

        public static function ice_staticId()
        {
            return '::and::do';
        }
    }

    global $Ice__t_ObjectPrx;
    $and__t_doPrx = IcePHP_defineProxy('::and::do', $Ice__t_ObjectPrx, array($and__t_funcPrx, $and__t_breakPrx));
}

namespace _and
{
    global $and__t_fileprivate;

    if(!isset($and__t_fileprivate))
    {
        global $and__t_guard;
        $and__t_fileprivate = IcePHP_defineSequence('::and::fileprivate', $and__t_guard);
    }
}

namespace _and
{
    global $and__t_for;

    if(!isset($and__t_for))
    {
        global $IcePHP__t_string;
        global $and__t_guard;
        $and__t_for = IcePHP_defineDictionary('::and::for', $IcePHP__t_string, $and__t_guard);
    }
}

namespace _and
{
    global $and__t_return;
    class _return extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::and::return';
        }

        public function __toString(): string
        {
            global $and__t_return;
            return IcePHP_stringifyException($this, $and__t_return);
        }

        public $Int32;
    }
    global $IcePHP__t_int;

    $and__t_return = IcePHP_defineException('::and::return', '\\_and\\_return', null, array(
        array('Int32', $IcePHP__t_int, false, 0)));
}

namespace _and
{
    global $and__t_as;
    class _as extends \_and\_return
    {
        public function ice_id()
        {
            return '::and::as';
        }

        public function __toString(): string
        {
            global $and__t_as;
            return IcePHP_stringifyException($this, $and__t_as);
        }

        public $_static;
        public $_switch;
    }
    global $IcePHP__t_int;

    $and__t_as = IcePHP_defineException('::and::as', '\\_and\\_as', $and__t_return, array(
        array('_static', $IcePHP__t_int, false, 0),
        array('_switch', $IcePHP__t_int, false, 0)));
}

namespace _and
{
    global $and__t_friend;
    global $and__t_friendPrx;
    $and__t_friendPrx = IcePHP_declareProxy('::and::friend');
}

namespace _and
{
    global $and__t_friend;
    global $and__t_friendPrx;

    class friendPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::and::friend');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::and::friend', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::and::friend', $facet);
        }

        public static function ice_staticId()
        {
            return '::and::friend';
        }
    }

    global $Ice__t_ObjectPrx;
    $and__t_friendPrx = IcePHP_defineProxy('::and::friend', $Ice__t_ObjectPrx, null);

    global $and__t_continue;
    global $and__t_guard;
    global $and__t_defer;
    global $and__t_switch;
    global $and__t_doPrx;
    global $and__t_breakPrx;
    global $and__t_funcPrx;
    global $IcePHP__t_int;
    IcePHP_defineOperation($and__t_friendPrx, 'goto', 0, -1, array(array($and__t_continue), array($and__t_guard), array($and__t_defer), array($and__t_switch), array($and__t_doPrx), array($and__t_breakPrx), array($and__t_funcPrx), array($and__t_switch), array($and__t_doPrx), array($IcePHP__t_int), array($IcePHP__t_int), array($IcePHP__t_int), array($IcePHP__t_int)), null, array($and__t_guard), array($and__t_return, $and__t_as));
}

namespace _and
{
    if(!defined('\\_and\\is'))
    {
        define(__NAMESPACE__ . '\\is', 0);
    }
}

namespace _and
{
    if(!defined('\\_and\\self'))
    {
        define(__NAMESPACE__ . '\\self', 0);
    }
}

namespace _and
{
    if(!defined('\\_and\\_throw'))
    {
        define(__NAMESPACE__ . '\\_throw', 0);
    }
}

namespace _and
{
    if(!defined('\\_and\\typealias'))
    {
        define(__NAMESPACE__ . '\\typealias', 0);
    }
}

namespace _and
{
    if(!defined('\\_and\\internal'))
    {
        define(__NAMESPACE__ . '\\internal', 0);
    }
}

namespace _and
{
    if(!defined('\\_and\\_while'))
    {
        define(__NAMESPACE__ . '\\_while', 0);
    }
}

namespace _and
{
    if(!defined('\\_and\\import'))
    {
        define(__NAMESPACE__ . '\\import', 0);
    }
}
?>
