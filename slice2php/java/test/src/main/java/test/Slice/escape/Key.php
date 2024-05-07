<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Key.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace _abstract
{
    global $abstract__t_assert;
    class assert
    {
        const boolean = 0;
    }

    $abstract__t_assert = IcePHP_defineEnum('::abstract::assert', array('boolean', 0));
}

namespace _abstract
{
    global $abstract__t_break;
    class _break
    {
        public function __construct($_case=0)
        {
            $this->_case = $_case;
        }

        public function __toString(): string
        {
            global $abstract__t_break;
            return IcePHP_stringify($this, $abstract__t_break);
        }

        public $_case;
    }

    global $IcePHP__t_int;
    $abstract__t_break = IcePHP_defineStruct('::abstract::break', '\\_abstract\\_break', array(
        array('_case', $IcePHP__t_int)));
}

namespace _abstract
{
    global $abstract__t_catch;
    global $abstract__t_catchPrx;

    class catchPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::abstract::catch', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::abstract::catch', $facet);
        }

        public static function ice_staticId()
        {
            return '::abstract::catch';
        }
    }

    global $Ice__t_ObjectPrx;
    $abstract__t_catchPrx = IcePHP_defineProxy('::abstract::catch', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_int;
    IcePHP_defineOperation($abstract__t_catchPrx, 'checkedCast', 0, 0, array(array($IcePHP__t_int)), array(array($IcePHP__t_int)), null, null);
}

namespace _abstract
{
    global $abstract__t_default;
    global $abstract__t_defaultPrx;

    class defaultPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::abstract::default', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::abstract::default', $facet);
        }

        public static function ice_staticId()
        {
            return '::abstract::default';
        }
    }

    global $Ice__t_ObjectPrx;
    $abstract__t_defaultPrx = IcePHP_defineProxy('::abstract::default', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($abstract__t_defaultPrx, 'do', 0, 0, null, null, null, null);
}

namespace _abstract
{
    global $abstract__t_else;
    class _else extends \Ice\Value
    {
        public function __construct($_if=0, $equals=null, $_final=0)
        {
            $this->_if = $_if;
            $this->equals = $equals;
            $this->_final = $_final;
        }

        public function ice_id()
        {
            return '::abstract::else';
        }

        public static function ice_staticId()
        {
            return '::abstract::else';
        }

        public function __toString(): string
        {
            global $abstract__t_else;
            return IcePHP_stringify($this, $abstract__t_else);
        }

        public $_if;
        public $equals;
        public $_final;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    global $abstract__t_defaultPrx;
    $abstract__t_else = IcePHP_defineClass('::abstract::else', '\\_abstract\\_else', -1, false, $Ice__t_Value, array(
        array('_if', $IcePHP__t_int, false, 0),
        array('equals', $abstract__t_defaultPrx, false, 0),
        array('_final', $IcePHP__t_int, false, 0)));
}

namespace _abstract
{
    global $abstract__t_finalize;
    global $abstract__t_finalizePrx;

    class finalizePrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::abstract::finalize', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::abstract::finalize', $facet);
        }

        public static function ice_staticId()
        {
            return '::abstract::finalize';
        }
    }

    global $Ice__t_ObjectPrx;
    $abstract__t_finalizePrx = IcePHP_defineProxy('::abstract::finalize', $Ice__t_ObjectPrx, array($abstract__t_defaultPrx, $abstract__t_catchPrx));
}

namespace _abstract
{
    global $abstract__t_for;

    if(!isset($abstract__t_for))
    {
        global $abstract__t_assert;
        $abstract__t_for = IcePHP_defineSequence('::abstract::for', $abstract__t_assert);
    }
}

namespace _abstract
{
    global $abstract__t_goto;

    if(!isset($abstract__t_goto))
    {
        global $IcePHP__t_string;
        global $abstract__t_assert;
        $abstract__t_goto = IcePHP_defineDictionary('::abstract::goto', $IcePHP__t_string, $abstract__t_assert);
    }
}

namespace _abstract
{
    global $abstract__t_hashCode;
    class hashCode extends \Ice\UserException
    {
        public function __construct($_if=0)
        {
            $this->_if = $_if;
        }

        public function ice_id()
        {
            return '::abstract::hashCode';
        }

        public function __toString(): string
        {
            global $abstract__t_hashCode;
            return IcePHP_stringifyException($this, $abstract__t_hashCode);
        }

        public $_if;
    }
    global $IcePHP__t_int;

    $abstract__t_hashCode = IcePHP_defineException('::abstract::hashCode', '\\_abstract\\hashCode', null, array(
        array('_if', $IcePHP__t_int, false, 0)));
}

namespace _abstract
{
    global $abstract__t_import;
    class import extends \_abstract\hashCode
    {
        public function __construct($_if=0, $_instanceof=0, $native=0)
        {
            parent::__construct($_if);
            $this->_instanceof = $_instanceof;
            $this->native = $native;
        }

        public function ice_id()
        {
            return '::abstract::import';
        }

        public function __toString(): string
        {
            global $abstract__t_import;
            return IcePHP_stringifyException($this, $abstract__t_import);
        }

        public $_instanceof;
        public $native;
    }
    global $IcePHP__t_int;

    $abstract__t_import = IcePHP_defineException('::abstract::import', '\\_abstract\\import', $abstract__t_hashCode, array(
        array('_instanceof', $IcePHP__t_int, false, 0),
        array('native', $IcePHP__t_int, false, 0)));
}

namespace _abstract
{
    global $abstract__t_new;
    global $abstract__t_newPrx;

    class newPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::abstract::new', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::abstract::new', $facet);
        }

        public static function ice_staticId()
        {
            return '::abstract::new';
        }
    }

    global $Ice__t_ObjectPrx;
    $abstract__t_newPrx = IcePHP_defineProxy('::abstract::new', $Ice__t_ObjectPrx, null);

    global $abstract__t_break;
    global $abstract__t_else;
    global $abstract__t_finalizePrx;
    global $abstract__t_catchPrx;
    global $abstract__t_defaultPrx;
    global $IcePHP__t_int;
    global $abstract__t_assert;
    IcePHP_defineOperation($abstract__t_newPrx, 'notify', 0, 0, array(array($abstract__t_break), array($abstract__t_else), array($abstract__t_finalizePrx), array($abstract__t_catchPrx), array($abstract__t_defaultPrx), array($IcePHP__t_int), array($IcePHP__t_int), array($IcePHP__t_int)), null, array($abstract__t_assert), array($abstract__t_hashCode, $abstract__t_import));
}

namespace _abstract
{
    if(!defined('\\_abstract\\_switch'))
    {
        define(__NAMESPACE__ . '\\_switch', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\synchronized'))
    {
        define(__NAMESPACE__ . '\\synchronized', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\_this'))
    {
        define(__NAMESPACE__ . '\\_this', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\_throw'))
    {
        define(__NAMESPACE__ . '\\_throw', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\toString'))
    {
        define(__NAMESPACE__ . '\\toString', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\_try'))
    {
        define(__NAMESPACE__ . '\\_try', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\uncheckedCast'))
    {
        define(__NAMESPACE__ . '\\uncheckedCast', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\volatile'))
    {
        define(__NAMESPACE__ . '\\volatile', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\wait'))
    {
        define(__NAMESPACE__ . '\\wait', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\_while'))
    {
        define(__NAMESPACE__ . '\\_while', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\_finally'))
    {
        define(__NAMESPACE__ . '\\_finally', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\getClass'))
    {
        define(__NAMESPACE__ . '\\getClass', 0);
    }
}
?>
