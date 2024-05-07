<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `Clash.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace Clash
{
    global $Clash__t_Intf;
    global $Clash__t_IntfPrx;

    class IntfPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::Clash::Intf', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::Clash::Intf', $facet);
        }

        public static function ice_staticId()
        {
            return '::Clash::Intf';
        }
    }

    global $Ice__t_ObjectPrx;
    $Clash__t_IntfPrx = IcePHP_defineProxy('::Clash::Intf', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $IcePHP__t_int;
    IcePHP_defineOperation($Clash__t_IntfPrx, 'context', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Clash__t_IntfPrx, 'current', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Clash__t_IntfPrx, 'response', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Clash__t_IntfPrx, 'typeId', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Clash__t_IntfPrx, 'del', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Clash__t_IntfPrx, 'cookie', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Clash__t_IntfPrx, 'sync', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Clash__t_IntfPrx, 'inS', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Clash__t_IntfPrx, 'istr', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Clash__t_IntfPrx, 'obj', 0, 0, null, null, null, null);
    IcePHP_defineOperation($Clash__t_IntfPrx, 'op', 0, 0, array(array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string, 1), array($IcePHP__t_int, 2)), null, null, null);
    IcePHP_defineOperation($Clash__t_IntfPrx, 'opOut', 0, 0, null, array(array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string), array($IcePHP__t_string, 1), array($IcePHP__t_int, 2)), null, null);
}

namespace Clash
{
    global $Clash__t_Cls;
    class Cls extends \Ice\Value
    {
        public function __construct($s=null, $context='', $current=0, $response=0, $typeId=0, $del=0, $cookie=\Ice\None, $ex='', $result=0, $istr='', $ostr='', $inS='', $in='', $proxy='', $obj=0, $getCookie=0, $_clone='')
        {
            $this->s = $s;
            $this->context = $context;
            $this->current = $current;
            $this->response = $response;
            $this->typeId = $typeId;
            $this->del = $del;
            $this->cookie = $cookie;
            $this->ex = $ex;
            $this->result = $result;
            $this->istr = $istr;
            $this->ostr = $ostr;
            $this->inS = $inS;
            $this->in = $in;
            $this->proxy = $proxy;
            $this->obj = $obj;
            $this->getCookie = $getCookie;
            $this->_clone = $_clone;
        }

        public function ice_id()
        {
            return '::Clash::Cls';
        }

        public static function ice_staticId()
        {
            return '::Clash::Cls';
        }

        public function __toString(): string
        {
            global $Clash__t_Cls;
            return IcePHP_stringify($this, $Clash__t_Cls);
        }

        public $s;
        public $context;
        public $current;
        public $response;
        public $typeId;
        public $del;
        public $cookie;
        public $ex;
        public $result;
        public $istr;
        public $ostr;
        public $inS;
        public $in;
        public $proxy;
        public $obj;
        public $getCookie;
        public $_clone;
    }

    global $Ice__t_Value;
    global $Clash__t_IntfPrx;
    global $IcePHP__t_string;
    global $IcePHP__t_int;
    global $IcePHP__t_short;
    $Clash__t_Cls = IcePHP_defineClass('::Clash::Cls', '\\Clash\\Cls', -1, false, $Ice__t_Value, array(
        array('s', $Clash__t_IntfPrx, false, 0),
        array('context', $IcePHP__t_string, false, 0),
        array('current', $IcePHP__t_int, false, 0),
        array('response', $IcePHP__t_short, false, 0),
        array('typeId', $IcePHP__t_int, false, 0),
        array('del', $IcePHP__t_short, false, 0),
        array('cookie', $IcePHP__t_short, true, 1),
        array('ex', $IcePHP__t_string, false, 0),
        array('result', $IcePHP__t_int, false, 0),
        array('istr', $IcePHP__t_string, false, 0),
        array('ostr', $IcePHP__t_string, false, 0),
        array('inS', $IcePHP__t_string, false, 0),
        array('in', $IcePHP__t_string, false, 0),
        array('proxy', $IcePHP__t_string, false, 0),
        array('obj', $IcePHP__t_int, false, 0),
        array('getCookie', $IcePHP__t_int, false, 0),
        array('_clone', $IcePHP__t_string, false, 0)));
}

namespace Clash
{
    global $Clash__t_St;
    class St
    {
        public function __construct($v='', $istr=0, $ostr=0, $rhs=0, $hashCode='', $_clone=0)
        {
            $this->v = $v;
            $this->istr = $istr;
            $this->ostr = $ostr;
            $this->rhs = $rhs;
            $this->hashCode = $hashCode;
            $this->_clone = $_clone;
        }

        public function __toString(): string
        {
            global $Clash__t_St;
            return IcePHP_stringify($this, $Clash__t_St);
        }

        public $v;
        public $istr;
        public $ostr;
        public $rhs;
        public $hashCode;
        public $_clone;
    }

    global $IcePHP__t_string;
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    $Clash__t_St = IcePHP_defineStruct('::Clash::St', '\\Clash\\St', array(
        array('v', $IcePHP__t_string),
        array('istr', $IcePHP__t_short),
        array('ostr', $IcePHP__t_int),
        array('rhs', $IcePHP__t_int),
        array('hashCode', $IcePHP__t_string),
        array('_clone', $IcePHP__t_int)));
}

namespace Clash
{
    global $Clash__t_Ex;
    class Ex extends \Ice\UserException
    {
        public function __construct($istr=0, $ostr=0, $cause='')
        {
            $this->istr = $istr;
            $this->ostr = $ostr;
            $this->cause = $cause;
        }

        public function ice_id()
        {
            return '::Clash::Ex';
        }

        public function __toString(): string
        {
            global $Clash__t_Ex;
            return IcePHP_stringifyException($this, $Clash__t_Ex);
        }

        public $istr;
        public $ostr;
        public $cause;
    }
    global $IcePHP__t_short;
    global $IcePHP__t_int;
    global $IcePHP__t_string;

    $Clash__t_Ex = IcePHP_defineException('::Clash::Ex', '\\Clash\\Ex', null, array(
        array('istr', $IcePHP__t_short, false, 0),
        array('ostr', $IcePHP__t_int, false, 0),
        array('cause', $IcePHP__t_string, false, 0)));
}
?>
