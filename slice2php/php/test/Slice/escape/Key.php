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
    global $and__t_array;
    class _array
    {
        const _as = 0;
    }

    $and__t_array = IcePHP_defineEnum('::and::array', array('as', 0));
}

namespace _and
{
    global $and__t_xor;
    class _xor
    {
        public function __construct($_abstract=0, $_clone=0, $_private=0, $_protected=0, $_public=0, $_this=0, $_throw=0, $_use=0, $_var=0)
        {
            $this->_abstract = $_abstract;
            $this->_clone = $_clone;
            $this->_private = $_private;
            $this->_protected = $_protected;
            $this->_public = $_public;
            $this->_this = $_this;
            $this->_throw = $_throw;
            $this->_use = $_use;
            $this->_var = $_var;
        }

        public function __toString(): string
        {
            global $and__t_xor;
            return IcePHP_stringify($this, $and__t_xor);
        }

        public $_abstract;
        public $_clone;
        public $_private;
        public $_protected;
        public $_public;
        public $_this;
        public $_throw;
        public $_use;
        public $_var;
    }

    global $IcePHP__t_int;
    $and__t_xor = IcePHP_defineStruct('::and::xor', '\\_and\\_xor', array(
        array('_abstract', $IcePHP__t_int),
        array('_clone', $IcePHP__t_int),
        array('_private', $IcePHP__t_int),
        array('_protected', $IcePHP__t_int),
        array('_public', $IcePHP__t_int),
        array('_this', $IcePHP__t_int),
        array('_throw', $IcePHP__t_int),
        array('_use', $IcePHP__t_int),
        array('_var', $IcePHP__t_int)));
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
    global $and__t_function;
    global $and__t_functionPrx;
    $and__t_functionPrx = IcePHP_declareProxy('::and::function');
}

namespace _and
{
    global $and__t_function;
    global $and__t_functionPrx;

    class functionPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::and::function');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::and::function', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::and::function', $facet);
        }

        public static function ice_staticId()
        {
            return '::and::function';
        }
    }

    global $Ice__t_ObjectPrx;
    $and__t_functionPrx = IcePHP_defineProxy('::and::function', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_int;
    IcePHP_defineOperation($and__t_functionPrx, 'continue', 0, -1, array(array($IcePHP__t_int), array($IcePHP__t_int)), null, null, null);
}

namespace _and
{
    global $and__t_die;
    global $and__t_diePrx;
    $and__t_diePrx = IcePHP_declareProxy('::and::die');
}

namespace _and
{
    global $and__t_die;
    global $and__t_diePrx;

    class diePrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::and::die');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::and::die', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::and::die', $facet);
        }

        public static function ice_staticId()
        {
            return '::and::die';
        }
    }

    global $Ice__t_ObjectPrx;
    $and__t_diePrx = IcePHP_defineProxy('::and::die', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($and__t_diePrx, 'do', 0, -1, null, null, null, null);
}

namespace _and
{
    global $and__t_echo;
    $and__t_echo = IcePHP_declareClass('::and::echo');
}

namespace _and
{
    global $and__t_echo;
    class _echo extends \Ice\Value
    {
        public function __construct($_if=0, $_else=0, $_elseif=null, $_empty=0)
        {
            $this->_if = $_if;
            $this->_else = $_else;
            $this->_elseif = $_elseif;
            $this->_empty = $_empty;
        }

        public function ice_id()
        {
            return '::and::echo';
        }

        public static function ice_staticId()
        {
            return '::and::echo';
        }

        public function __toString(): string
        {
            global $and__t_echo;
            return IcePHP_stringify($this, $and__t_echo);
        }

        public $_if;
        public $_else;
        public $_elseif;
        public $_empty;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    global $and__t_diePrx;
    $and__t_echo = IcePHP_defineClass('::and::echo', '\\_and\\_echo', -1, false, $Ice__t_Value, array(
        array('_if', $IcePHP__t_int, false, 0),
        array('_else', $IcePHP__t_int, false, 0),
        array('_elseif', $and__t_diePrx, false, 0),
        array('_empty', $IcePHP__t_int, false, 0)));
}

namespace _and
{
    global $and__t_enddeclare;
    global $and__t_enddeclarePrx;
    $and__t_enddeclarePrx = IcePHP_declareProxy('::and::enddeclare');
}

namespace _and
{
    global $and__t_enddeclare;
    global $and__t_enddeclarePrx;

    class enddeclarePrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::and::enddeclare');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::and::enddeclare', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::and::enddeclare', $facet);
        }

        public static function ice_staticId()
        {
            return '::and::enddeclare';
        }
    }

    global $Ice__t_ObjectPrx;
    $and__t_enddeclarePrx = IcePHP_defineProxy('::and::enddeclare', $Ice__t_ObjectPrx, array($and__t_diePrx, $and__t_functionPrx));
}

namespace _and
{
    global $and__t_endfor;

    if(!isset($and__t_endfor))
    {
        global $and__t_array;
        $and__t_endfor = IcePHP_defineSequence('::and::endfor', $and__t_array);
    }
}

namespace _and
{
    global $and__t_endforeach;

    if(!isset($and__t_endforeach))
    {
        global $IcePHP__t_string;
        global $and__t_array;
        $and__t_endforeach = IcePHP_defineDictionary('::and::endforeach', $IcePHP__t_string, $and__t_array);
    }
}

namespace _and
{
    global $and__t_endif;
    class _endif extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::and::endif';
        }

        public function __toString(): string
        {
            global $and__t_endif;
            return IcePHP_stringifyException($this, $and__t_endif);
        }

        public $_endswitch;
    }
    global $IcePHP__t_int;

    $and__t_endif = IcePHP_defineException('::and::endif', '\\_and\\_endif', null, array(
        array('_endswitch', $IcePHP__t_int, false, 0)));
}

namespace _and
{
    global $and__t_endwhile;
    class _endwhile extends \_and\_endif
    {
        public function ice_id()
        {
            return '::and::endwhile';
        }

        public function __toString(): string
        {
            global $and__t_endwhile;
            return IcePHP_stringifyException($this, $and__t_endwhile);
        }

        public $_eval;
        public $_exit;
    }
    global $IcePHP__t_int;

    $and__t_endwhile = IcePHP_defineException('::and::endwhile', '\\_and\\_endwhile', $and__t_endif, array(
        array('_eval', $IcePHP__t_int, false, 0),
        array('_exit', $IcePHP__t_int, false, 0)));
}

namespace _and
{
    global $and__t_for;
    global $and__t_forPrx;
    $and__t_forPrx = IcePHP_declareProxy('::and::for');
}

namespace _and
{
    global $and__t_for;
    global $and__t_forPrx;

    class forPrxHelper
    {
        public static function createProxy($communicator, $proxyString)
        {
            return  $communicator->stringToProxy($proxyString, '::and::for');
        }

        public static function checkedCast($proxy, ...$args)
        {
            return $proxy->ice_checkedCast('::and::for', ...$args);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::and::for', $facet);
        }

        public static function ice_staticId()
        {
            return '::and::for';
        }
    }

    global $Ice__t_ObjectPrx;
    $and__t_forPrx = IcePHP_defineProxy('::and::for', $Ice__t_ObjectPrx, null);

    global $and__t_breakPrx;
    global $and__t_echo;
    global $and__t_functionPrx;
    global $and__t_diePrx;
    global $and__t_enddeclarePrx;
    global $IcePHP__t_int;
    global $and__t_array;
    IcePHP_defineOperation($and__t_forPrx, 'foreach', 0, -1, array(array($and__t_breakPrx), array($and__t_echo), array($and__t_functionPrx), array($and__t_diePrx), array($and__t_enddeclarePrx), array($IcePHP__t_int), array($IcePHP__t_int)), null, array($and__t_array), array($and__t_endif, $and__t_endwhile));
}

namespace _and
{
    if(!defined('\\_and\\_or'))
    {
        define(__NAMESPACE__ . '\\_or', 0);
    }
}

namespace _and
{
    if(!defined('\\_and\\_print'))
    {
        define(__NAMESPACE__ . '\\_print', 0);
    }
}

namespace _and
{
    if(!defined('\\_and\\_require_once'))
    {
        define(__NAMESPACE__ . '\\_require_once', 0);
    }
}
?>
