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
    global $abstract__t_as;
    class _as
    {
        const base = 0;
    }

    $abstract__t_as = IcePHP_defineEnum('::abstract::as', array('base', 0));
}

namespace _abstract
{
    global $abstract__t_break;
    class _break
    {
        public function __construct($readonly=0)
        {
            $this->readonly = $readonly;
        }

        public function __toString(): string
        {
            global $abstract__t_break;
            return IcePHP_stringify($this, $abstract__t_break);
        }

        public $readonly;
    }

    global $IcePHP__t_int;
    $abstract__t_break = IcePHP_defineStruct('::abstract::break', '\\_abstract\\_break', array(
        array('readonly', $IcePHP__t_int)));
}

namespace _abstract
{
    global $abstract__t_case;
    global $abstract__t_casePrx;

    class casePrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::abstract::case', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::abstract::case', $facet);
        }

        public static function ice_staticId()
        {
            return '::abstract::case';
        }
    }

    global $Ice__t_ObjectPrx;
    $abstract__t_casePrx = IcePHP_defineProxy('::abstract::case', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_int;
    IcePHP_defineOperation($abstract__t_casePrx, 'catch', 0, 0, array(array($IcePHP__t_int)), array(array($IcePHP__t_int)), null, null);
}

namespace _abstract
{
    global $abstract__t_decimal;
    global $abstract__t_decimalPrx;

    class decimalPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::abstract::decimal', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::abstract::decimal', $facet);
        }

        public static function ice_staticId()
        {
            return '::abstract::decimal';
        }
    }

    global $Ice__t_ObjectPrx;
    $abstract__t_decimalPrx = IcePHP_defineProxy('::abstract::decimal', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($abstract__t_decimalPrx, 'default', 0, 0, null, null, null, null);
}

namespace _abstract
{
    global $abstract__t_delegate;
    class delegate extends \Ice\Value
    {
        public function __construct($_if=0, $_else=null, $event=0)
        {
            $this->_if = $_if;
            $this->_else = $_else;
            $this->event = $event;
        }

        public function ice_id()
        {
            return '::abstract::delegate';
        }

        public static function ice_staticId()
        {
            return '::abstract::delegate';
        }

        public function __toString(): string
        {
            global $abstract__t_delegate;
            return IcePHP_stringify($this, $abstract__t_delegate);
        }

        public $_if;
        public $_else;
        public $event;
    }

    global $Ice__t_Value;
    global $IcePHP__t_int;
    global $abstract__t_casePrx;
    $abstract__t_delegate = IcePHP_defineClass('::abstract::delegate', '\\_abstract\\delegate', -1, false, $Ice__t_Value, array(
        array('_if', $IcePHP__t_int, false, 0),
        array('_else', $abstract__t_casePrx, false, 0),
        array('event', $IcePHP__t_int, false, 0)));
}

namespace _abstract
{
    global $abstract__t_explicit;
    global $abstract__t_explicitPrx;

    class explicitPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::abstract::explicit', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::abstract::explicit', $facet);
        }

        public static function ice_staticId()
        {
            return '::abstract::explicit';
        }
    }

    global $Ice__t_ObjectPrx;
    $abstract__t_explicitPrx = IcePHP_defineProxy('::abstract::explicit', $Ice__t_ObjectPrx, array($abstract__t_decimalPrx, $abstract__t_casePrx));
}

namespace _abstract
{
    global $abstract__t_while;

    if(!isset($abstract__t_while))
    {
        global $IcePHP__t_string;
        global $abstract__t_break;
        $abstract__t_while = IcePHP_defineDictionary('::abstract::while', $IcePHP__t_string, $abstract__t_break);
    }
}

namespace _abstract
{
    global $abstract__t_optionalMembers;
    class optionalMembers extends \Ice\Value
    {
        public function __construct($_for=\Ice\None, $_goto=\Ice\None, $_if=\Ice\None, $internal=\Ice\None, $_namespace=\Ice\None)
        {
            $this->_for = is_null($_for) ? new \_abstract\_break : $_for;
            $this->_goto = $_goto;
            $this->_if = $_if;
            $this->internal = $internal;
            $this->_namespace = $_namespace;
        }

        public function ice_id()
        {
            return '::abstract::optionalMembers';
        }

        public static function ice_staticId()
        {
            return '::abstract::optionalMembers';
        }

        public function __toString(): string
        {
            global $abstract__t_optionalMembers;
            return IcePHP_stringify($this, $abstract__t_optionalMembers);
        }

        public $_for;
        public $_goto;
        public $_if;
        public $internal;
        public $_namespace;
    }

    global $Ice__t_Value;
    global $abstract__t_break;
    global $abstract__t_as;
    global $abstract__t_explicitPrx;
    global $abstract__t_while;
    global $IcePHP__t_string;
    $abstract__t_optionalMembers = IcePHP_defineClass('::abstract::optionalMembers', '\\_abstract\\optionalMembers', -1, false, $Ice__t_Value, array(
        array('_for', $abstract__t_break, true, 1),
        array('_goto', $abstract__t_as, true, 2),
        array('_if', $abstract__t_explicitPrx, true, 3),
        array('internal', $abstract__t_while, true, 5),
        array('_namespace', $IcePHP__t_string, true, 7)));
}

namespace _abstract
{
    global $abstract__t_optionalParams;
    global $abstract__t_optionalParamsPrx;

    class optionalParamsPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::abstract::optionalParams', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::abstract::optionalParams', $facet);
        }

        public static function ice_staticId()
        {
            return '::abstract::optionalParams';
        }
    }

    global $Ice__t_ObjectPrx;
    $abstract__t_optionalParamsPrx = IcePHP_defineProxy('::abstract::optionalParams', $Ice__t_ObjectPrx, null);

    global $abstract__t_as;
    global $abstract__t_explicitPrx;
    global $abstract__t_while;
    global $IcePHP__t_string;
    global $abstract__t_break;
    IcePHP_defineOperation($abstract__t_optionalParamsPrx, 'for', 0, 0, array(array($abstract__t_as, 2), array($abstract__t_explicitPrx, 3), array($abstract__t_while, 5), array($IcePHP__t_string, 7)), null, array($abstract__t_break, 1), null);
    IcePHP_defineOperation($abstract__t_optionalParamsPrx, 'continue', 0, 0, array(array($abstract__t_as, 2), array($abstract__t_explicitPrx, 3), array($abstract__t_while, 5), array($IcePHP__t_string, 7)), null, array($abstract__t_break, 1), null);
    IcePHP_defineOperation($abstract__t_optionalParamsPrx, 'in', 0, 0, null, array(array($abstract__t_as, 2), array($abstract__t_explicitPrx, 3), array($abstract__t_while, 5), array($IcePHP__t_string, 7)), array($abstract__t_break, 1), null);
    IcePHP_defineOperation($abstract__t_optionalParamsPrx, 'foreach', 0, 0, null, array(array($abstract__t_as, 2), array($abstract__t_explicitPrx, 3), array($abstract__t_while, 5), array($IcePHP__t_string, 7)), array($abstract__t_break, 1), null);
}

namespace _abstract
{
    global $abstract__t_fixed;
    class fixed extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::abstract::fixed';
        }

        public function __toString(): string
        {
            global $abstract__t_fixed;
            return IcePHP_stringifyException($this, $abstract__t_fixed);
        }

        public $_for;
    }
    global $IcePHP__t_int;

    $abstract__t_fixed = IcePHP_defineException('::abstract::fixed', '\\_abstract\\fixed', null, array(
        array('_for', $IcePHP__t_int, false, 0)));
}

namespace _abstract
{
    global $abstract__t_foreach;
    class _foreach extends \_abstract\fixed
    {
        public function ice_id()
        {
            return '::abstract::foreach';
        }

        public function __toString(): string
        {
            global $abstract__t_foreach;
            return IcePHP_stringifyException($this, $abstract__t_foreach);
        }

        public $_goto;
        public $_if;
    }
    global $IcePHP__t_int;

    $abstract__t_foreach = IcePHP_defineException('::abstract::foreach', '\\_abstract\\_foreach', $abstract__t_fixed, array(
        array('_goto', $IcePHP__t_int, false, 0),
        array('_if', $IcePHP__t_int, false, 0)));
}

namespace _abstract
{
    global $abstract__t_BaseMethods;
    class BaseMethods extends \Ice\UserException
    {
        public function ice_id()
        {
            return '::abstract::BaseMethods';
        }

        public function __toString(): string
        {
            global $abstract__t_BaseMethods;
            return IcePHP_stringifyException($this, $abstract__t_BaseMethods);
        }

        public $Data;
        public $HelpLink;
        public $InnerException;
        public $Message;
        public $Source;
        public $StackTrace;
        public $TargetSite;
        public $HResult;
        public $Equals;
        public $GetBaseException;
        public $GetHashCode;
        public $GetObjectData;
        public $GetType;
        public $ReferenceEquals;
        public $ToString;
    }
    global $IcePHP__t_int;

    $abstract__t_BaseMethods = IcePHP_defineException('::abstract::BaseMethods', '\\_abstract\\BaseMethods', null, array(
        array('Data', $IcePHP__t_int, false, 0),
        array('HelpLink', $IcePHP__t_int, false, 0),
        array('InnerException', $IcePHP__t_int, false, 0),
        array('Message', $IcePHP__t_int, false, 0),
        array('Source', $IcePHP__t_int, false, 0),
        array('StackTrace', $IcePHP__t_int, false, 0),
        array('TargetSite', $IcePHP__t_int, false, 0),
        array('HResult', $IcePHP__t_int, false, 0),
        array('Equals', $IcePHP__t_int, false, 0),
        array('GetBaseException', $IcePHP__t_int, false, 0),
        array('GetHashCode', $IcePHP__t_int, false, 0),
        array('GetObjectData', $IcePHP__t_int, false, 0),
        array('GetType', $IcePHP__t_int, false, 0),
        array('ReferenceEquals', $IcePHP__t_int, false, 0),
        array('ToString', $IcePHP__t_int, false, 0)));
}

namespace _abstract
{
    global $abstract__t_implicit;
    global $abstract__t_implicitPrx;

    class implicitPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::abstract::implicit', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::abstract::implicit', $facet);
        }

        public static function ice_staticId()
        {
            return '::abstract::implicit';
        }
    }

    global $Ice__t_ObjectPrx;
    $abstract__t_implicitPrx = IcePHP_defineProxy('::abstract::implicit', $Ice__t_ObjectPrx, null);

    global $abstract__t_break;
    global $abstract__t_delegate;
    global $abstract__t_explicitPrx;
    global $abstract__t_casePrx;
    global $abstract__t_decimalPrx;
    global $IcePHP__t_int;
    global $abstract__t_as;
    IcePHP_defineOperation($abstract__t_implicitPrx, 'in', 0, 0, array(array($abstract__t_break), array($abstract__t_delegate), array($abstract__t_explicitPrx), array($abstract__t_casePrx), array($abstract__t_decimalPrx), array($abstract__t_delegate), array($IcePHP__t_int), array($IcePHP__t_int), array($IcePHP__t_int)), null, array($abstract__t_as), array($abstract__t_fixed, $abstract__t_foreach));
}

namespace _abstract
{
    if(!defined('\\_abstract\\_protected'))
    {
        define(__NAMESPACE__ . '\\_protected', 0);
    }
}

namespace _abstract
{
    if(!defined('\\_abstract\\_public'))
    {
        define(__NAMESPACE__ . '\\_public', 0);
    }
}

namespace abstract\System
{
    global $abstract_System__t_Test;
    global $abstract_System__t_TestPrx;

    class TestPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::abstract::System::Test', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::abstract::System::Test', $facet);
        }

        public static function ice_staticId()
        {
            return '::abstract::System::Test';
        }
    }

    global $Ice__t_ObjectPrx;
    $abstract_System__t_TestPrx = IcePHP_defineProxy('::abstract::System::Test', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($abstract_System__t_TestPrx, 'op', 0, 0, null, null, null, null);
}

namespace System
{
    global $System__t_Test;
    global $System__t_TestPrx;

    class TestPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::System::Test', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::System::Test', $facet);
        }

        public static function ice_staticId()
        {
            return '::System::Test';
        }
    }

    global $Ice__t_ObjectPrx;
    $System__t_TestPrx = IcePHP_defineProxy('::System::Test', $Ice__t_ObjectPrx, null);

    IcePHP_defineOperation($System__t_TestPrx, 'op', 0, 0, null, null, null, null);
}
?>
