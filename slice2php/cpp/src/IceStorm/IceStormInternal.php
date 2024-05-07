<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceStormInternal.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once 'IceStorm/IceStorm.php';
    require_once 'Election.php';
    require_once 'Ice/Context.php';
    require_once 'Ice/OperationMode.php';
}

namespace IceStorm
{
    global $IceStorm__t_EventData;
    class EventData
    {
        public function __construct($op='', $mode=\Ice\OperationMode::Normal, $data=null, $context=null)
        {
            $this->op = $op;
            $this->mode = $mode;
            $this->data = $data;
            $this->context = $context;
        }

        public function __toString(): string
        {
            global $IceStorm__t_EventData;
            return IcePHP_stringify($this, $IceStorm__t_EventData);
        }

        public $op;
        public $mode;
        public $data;
        public $context;
    }

    global $IcePHP__t_string;
    global $Ice__t_OperationMode;
    global $Ice__t_ByteSeq;
    global $Ice__t_Context;
    $IceStorm__t_EventData = IcePHP_defineStruct('::IceStorm::EventData', '\\IceStorm\\EventData', array(
        array('op', $IcePHP__t_string),
        array('mode', $Ice__t_OperationMode),
        array('data', $Ice__t_ByteSeq),
        array('context', $Ice__t_Context)));
}

namespace IceStorm
{
    global $IceStorm__t_EventDataSeq;

    if(!isset($IceStorm__t_EventDataSeq))
    {
        global $IceStorm__t_EventData;
        $IceStorm__t_EventDataSeq = IcePHP_defineSequence('::IceStorm::EventDataSeq', $IceStorm__t_EventData);
    }
}

namespace IceStorm
{
    global $IceStorm__t_TopicLink;
    global $IceStorm__t_TopicLinkPrx;

    class TopicLinkPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::IceStorm::TopicLink', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceStorm::TopicLink', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceStorm::TopicLink';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceStorm__t_TopicLinkPrx = IcePHP_defineProxy('::IceStorm::TopicLink', $Ice__t_ObjectPrx, null);

    global $IceStorm__t_EventDataSeq;
    IcePHP_defineOperation($IceStorm__t_TopicLinkPrx, 'forward', 0, 0, array(array($IceStorm__t_EventDataSeq)), null, null, null);
}

namespace IceStorm
{
    global $IceStorm__t_ReapWouldBlock;
    class ReapWouldBlock extends \Ice\UserException
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::IceStorm::ReapWouldBlock';
        }

        public function __toString(): string
        {
            global $IceStorm__t_ReapWouldBlock;
            return IcePHP_stringifyException($this, $IceStorm__t_ReapWouldBlock);
        }
    }

    $IceStorm__t_ReapWouldBlock = IcePHP_defineException('::IceStorm::ReapWouldBlock', '\\IceStorm\\ReapWouldBlock', null, null);
}

namespace IceStorm
{
    global $IceStorm__t_TopicInternal;
    global $IceStorm__t_TopicInternalPrx;

    class TopicInternalPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::IceStorm::TopicInternal', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceStorm::TopicInternal', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceStorm::TopicInternal';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceStorm__t_TopicInternalPrx = IcePHP_defineProxy('::IceStorm::TopicInternal', $Ice__t_ObjectPrx, array($IceStorm__t_TopicPrx));

    global $IceStorm__t_TopicLinkPrx;
    global $Ice__t_IdentitySeq;
    IcePHP_defineOperation($IceStorm__t_TopicInternalPrx, 'getLinkProxy', 2, 0, null, null, array($IceStorm__t_TopicLinkPrx), null);
    IcePHP_defineOperation($IceStorm__t_TopicInternalPrx, 'reap', 0, 0, array(array($Ice__t_IdentitySeq)), null, null, array($IceStorm__t_ReapWouldBlock));
}

namespace IceStorm
{
    global $IceStorm__t_TopicManagerInternal;
    global $IceStorm__t_TopicManagerInternalPrx;

    class TopicManagerInternalPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::IceStorm::TopicManagerInternal', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceStorm::TopicManagerInternal', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceStorm::TopicManagerInternal';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceStorm__t_TopicManagerInternalPrx = IcePHP_defineProxy('::IceStorm::TopicManagerInternal', $Ice__t_ObjectPrx, array($IceStorm__t_TopicManagerPrx));

    global $IceStormElection__t_NodePrx;
    IcePHP_defineOperation($IceStorm__t_TopicManagerInternalPrx, 'getReplicaNode', 2, 0, null, null, array($IceStormElection__t_NodePrx), null);
}
?>
