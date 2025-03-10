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


namespace classdef\break
{
    global $classdef_break__t_bitand;
    class bitand
    {
        const _break = 0;
        const _case = 1;
        const _catch = 2;
        const classdef = 3;
        const _continue = 4;
        const _else = 5;
        const _elseif = 6;
        const end = 7;
        const enumeration = 8;
        const events = 9;
        const _for = 10;
        const _function = 11;
        const _global = 12;
        const _if = 13;
        const methods = 14;
        const otherwise = 15;
        const parfor = 16;
        const persistent = 17;
        const properties = 18;
        const _return = 19;
        const spmd = 20;
        const _switch = 21;
        const _try = 22;
        const _while = 23;
        const abs = 24;
        const _and = 25;
        const char = 26;
        const eq = 27;
        const length = 28;
        const size = 29;
        const _xor = 30;
        const LAST = 31;
    }

    $classdef_break__t_bitand = IcePHP_defineEnum('::classdef::break::bitand', array('break', 0, 'case', 1, 'catch', 2, 'classdef', 3, 'continue', 4, 'else', 5, 'elseif', 6, 'end', 7, 'enumeration', 8, 'events', 9, 'for', 10, 'function', 11, 'global', 12, 'if', 13, 'methods', 14, 'otherwise', 15, 'parfor', 16, 'persistent', 17, 'properties', 18, 'return', 19, 'spmd', 20, 'switch', 21, 'try', 22, 'while', 23, 'abs', 24, 'and', 25, 'char', 26, 'eq', 27, 'length', 28, 'size', 29, 'xor', 30, 'LAST', 31));
}

namespace classdef\break
{
    global $classdef_break__t_bitor;
    class bitor
    {
        public function __construct($_case=\classdef\_break\bitand::_catch, $_continue=1, $eq=2, $ne=3)
        {
            $this->_case = $_case;
            $this->_continue = $_continue;
            $this->eq = $eq;
            $this->ne = $ne;
        }

        public function __toString(): string
        {
            global $classdef_break__t_bitor;
            return IcePHP_stringify($this, $classdef_break__t_bitor);
        }

        public $_case;
        public $_continue;
        public $eq;
        public $ne;
    }

    global $classdef_break__t_bitand;
    global $IcePHP__t_int;
    $classdef_break__t_bitor = IcePHP_defineStruct('::classdef::break::bitor', '\\classdef\\_break\\bitor', array(
        array('_case', $classdef_break__t_bitand),
        array('_continue', $IcePHP__t_int),
        array('eq', $IcePHP__t_int),
        array('ne', $IcePHP__t_int)));
}

namespace classdef\break
{
    global $classdef_break__t_logical;
    $classdef_break__t_logical = IcePHP_declareClass('::classdef::break::logical');
}

namespace classdef\break
{
    global $classdef_break__t_logical;
    class logical extends \Ice\Value
    {
        public function __construct($_else=\classdef\_break\bitand::enumeration, $_for=null, $int64=true)
        {
            $this->_else = $_else;
            $this->_for = is_null($_for) ? new \classdef\_break\bitor : $_for;
            $this->int64 = $int64;
        }

        public function ice_id()
        {
            return '::classdef::break::logical';
        }

        public static function ice_staticId()
        {
            return '::classdef::break::logical';
        }

        public function __toString(): string
        {
            global $classdef_break__t_logical;
            return IcePHP_stringify($this, $classdef_break__t_logical);
        }

        public $_else;
        public $_for;
        public $int64;
    }

    global $Ice__t_Value;
    global $classdef_break__t_bitand;
    global $classdef_break__t_bitor;
    global $IcePHP__t_bool;
    $classdef_break__t_logical = IcePHP_defineClass('::classdef::break::logical', '\\classdef\\_break\\logical', -1, false, $Ice__t_Value, array(
        array('_else', $classdef_break__t_bitand, false, 0),
        array('_for', $classdef_break__t_bitor, false, 0),
        array('int64', $IcePHP__t_bool, false, 0)));
}

namespace classdef\break
{
    global $classdef_break__t_xor;
    $classdef_break__t_xor = IcePHP_declareClass('::classdef::break::xor');
}

namespace classdef\break
{
    global $classdef_break__t_xor;
    class _xor extends \classdef\_break\logical
    {
        public function __construct($_else=\classdef\_break\bitand::enumeration, $_for=null, $int64=true, $_return=1)
        {
            parent::__construct($_else, $_for, $int64);
            $this->_return = $_return;
        }

        public function ice_id()
        {
            return '::classdef::break::xor';
        }

        public static function ice_staticId()
        {
            return '::classdef::break::xor';
        }

        public function __toString(): string
        {
            global $classdef_break__t_xor;
            return IcePHP_stringify($this, $classdef_break__t_xor);
        }

        public $_return;
    }

    global $classdef_break__t_logical;
    global $IcePHP__t_int;
    $classdef_break__t_xor = IcePHP_defineClass('::classdef::break::xor', '\\classdef\\_break\\_xor', -1, false, $classdef_break__t_logical, array(
        array('_return', $IcePHP__t_int, false, 0)));
}

namespace classdef\break
{
    global $classdef_break__t_parfor;

    if(!isset($classdef_break__t_parfor))
    {
        global $classdef_break__t_bitor;
        $classdef_break__t_parfor = IcePHP_defineSequence('::classdef::break::parfor', $classdef_break__t_bitor);
    }
}

namespace classdef\break
{
    global $classdef_break__t_switch;

    if(!isset($classdef_break__t_switch))
    {
        global $IcePHP__t_int;
        global $classdef_break__t_bitor;
        $classdef_break__t_switch = IcePHP_defineDictionary('::classdef::break::switch', $IcePHP__t_int, $classdef_break__t_bitor);
    }
}

namespace classdef\break
{
    global $classdef_break__t_try;
    $classdef_break__t_try = IcePHP_declareClass('::classdef::break::try');
}

namespace classdef\break
{
    global $classdef_break__t_try;
    class _try extends \Ice\Value
    {
        public function __construct($_while=1, $delete=2)
        {
            $this->_while = $_while;
            $this->delete = $delete;
        }

        public function ice_id()
        {
            return '::classdef::break::try';
        }

        public static function ice_staticId()
        {
            return '::classdef::break::try';
        }

        public function __toString(): string
        {
            global $classdef_break__t_try;
            return IcePHP_stringify($this, $classdef_break__t_try);
        }

        public $_while;
        public $delete;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    $classdef_break__t_try = IcePHP_defineClass('::classdef::break::try', '\\classdef\\_break\\_try', -1, false, $Ice__t_Value, array(
        array('_while', $IcePHP__t_int, false, 0),
        array('delete', $IcePHP__t_int, false, 0)));
}

namespace classdef\break
{
    global $classdef_break__t_properties;
    $classdef_break__t_properties = IcePHP_declareClass('::classdef::break::properties');
}

namespace classdef\break
{
    global $classdef_break__t_properties;
    class properties extends \classdef\_break\_try
    {
        public function __construct($_while=1, $delete=2, $_if=2, $_catch=null, $spmd=null, $otherwise=null)
        {
            parent::__construct($_while, $delete);
            $this->_if = $_if;
            $this->_catch = $_catch;
            $this->spmd = $spmd;
            $this->otherwise = $otherwise;
        }

        public function ice_id()
        {
            return '::classdef::break::properties';
        }

        public static function ice_staticId()
        {
            return '::classdef::break::properties';
        }

        public function __toString(): string
        {
            global $classdef_break__t_properties;
            return IcePHP_stringify($this, $classdef_break__t_properties);
        }

        public $_if;
        public $_catch;
        public $spmd;
        public $otherwise;
    }

    global $classdef_break__t_try;
    global $IcePHP__t_int;
    global $classdef_break__t_xor;
    global $classdef_break__t_parfor;
    global $classdef_break__t_switch;
    $classdef_break__t_properties = IcePHP_defineClass('::classdef::break::properties', '\\classdef\\_break\\properties', -1, false, $classdef_break__t_try, array(
        array('_if', $IcePHP__t_int, false, 0),
        array('_catch', $classdef_break__t_xor, false, 0),
        array('spmd', $classdef_break__t_parfor, false, 0),
        array('otherwise', $classdef_break__t_switch, false, 0)));
}

namespace classdef\break
{
    global $classdef_break__t_persistent;
    class persistent extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::classdef::break::persistent';
        }

        public function __toString(): string
        {
            global $classdef_break__t_persistent;
            return IcePHP_stringifyException($this, $classdef_break__t_persistent);
        }

        public $identifier;
        public $message;
        public $stack;
        public $cause;
        public $type;
        public $end;
    }
    global $IcePHP__t_string;
    global $classdef_break__t_logical;

    $classdef_break__t_persistent = IcePHP_defineException('::classdef::break::persistent', '\\classdef\\_break\\persistent', null, array(
        array('identifier', $IcePHP__t_string, false, 0),
        array('message', $IcePHP__t_string, false, 0),
        array('stack', $IcePHP__t_string, false, 0),
        array('cause', $IcePHP__t_string, false, 0),
        array('type', $IcePHP__t_string, false, 0),
        array('end', $classdef_break__t_logical, false, 0)));
}

namespace classdef\break
{
    global $classdef_break__t_global;
    class _global extends \classdef\_break\persistent
    {
        public function ice_id()
        {
            return '::classdef::break::global';
        }

        public function __toString(): string
        {
            global $classdef_break__t_global;
            return IcePHP_stringifyException($this, $classdef_break__t_global);
        }

        public $enumeration;
    }
    global $IcePHP__t_int;

    $classdef_break__t_global = IcePHP_defineException('::classdef::break::global', '\\classdef\\_break\\_global', $classdef_break__t_persistent, array(
        array('enumeration', $IcePHP__t_int, false, 0)));
}

namespace classdef\break
{
    global $classdef_break__t_elseif;
    global $classdef_break__t_elseifPrx;
    $classdef_break__t_elseifPrx = IcePHP_declareProxy('::classdef::break::elseif');
}

namespace classdef\break
{
    global $classdef_break__t_elseif;
    global $classdef_break__t_elseifPrx;

    class elseifPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::classdef::break::elseif');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::classdef::break::elseif', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::classdef::break::elseif', $facet);
        }

        public static function ice_staticId()
        {
            return '::classdef::break::elseif';
        }
    }

    global $Ice__t_ObjectPrx;
    $classdef_break__t_elseifPrx = IcePHP_defineProxy('::classdef::break::elseif', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($classdef_break__t_elseifPrx, 'events', 0, -1, null, null, null, null);
    IcePHP_defineOperation($classdef_break__t_elseifPrx, 'function', 0, -1, null, null, null, null);
    IcePHP_defineOperation($classdef_break__t_elseifPrx, 'delete', 0, -1, null, null, null, null);
    IcePHP_defineOperation($classdef_break__t_elseifPrx, 'checkedCast', 0, -1, null, null, null, null);
}

namespace classdef\break
{
    if(!defined('\\classdef\\_break\\methods'))
    {
        define(__NAMESPACE__ . '\\methods', 1);
    }
}
?>
