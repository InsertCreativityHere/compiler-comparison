<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file `IceStorm.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once '../Ice/Identity.php';
    require_once 'Metrics.php';
}

namespace IceStorm
{
    global $IceStorm__t_Topic;
    global $IceStorm__t_TopicPrx;
    if(!isset($IceStorm__t_Topic))
    {
        $IceStorm__t_Topic = IcePHP_declareClass('::IceStorm::Topic');
        $IceStorm__t_TopicPrx = IcePHP_declareProxy('::IceStorm::Topic');
    }
}

namespace IceStorm
{
    global $IceStorm__t_LinkInfo;
    class LinkInfo
    {
        public function __construct($theTopic=null, $name='', $cost=0)
        {
            $this->theTopic = $theTopic;
            $this->name = $name;
            $this->cost = $cost;
        }

        public function __toString(): string
        {
            global $IceStorm__t_LinkInfo;
            return IcePHP_stringify($this, $IceStorm__t_LinkInfo);
        }

        public $theTopic;
        public $name;
        public $cost;
    }

    global $IceStorm__t_TopicPrx;
    global $IcePHP__t_string;
    global $IcePHP__t_int;
    $IceStorm__t_LinkInfo = IcePHP_defineStruct('::IceStorm::LinkInfo', '\\IceStorm\\LinkInfo', array(
        array('theTopic', $IceStorm__t_TopicPrx),
        array('name', $IcePHP__t_string),
        array('cost', $IcePHP__t_int)));
}

namespace IceStorm
{
    global $IceStorm__t_LinkInfoSeq;

    if(!isset($IceStorm__t_LinkInfoSeq))
    {
        global $IceStorm__t_LinkInfo;
        $IceStorm__t_LinkInfoSeq = IcePHP_defineSequence('::IceStorm::LinkInfoSeq', $IceStorm__t_LinkInfo);
    }
}

namespace IceStorm
{
    global $IceStorm__t_QoS;

    if(!isset($IceStorm__t_QoS))
    {
        global $IcePHP__t_string;
        global $IcePHP__t_string;
        $IceStorm__t_QoS = IcePHP_defineDictionary('::IceStorm::QoS', $IcePHP__t_string, $IcePHP__t_string);
    }
}

namespace IceStorm
{
    global $IceStorm__t_LinkExists;
    class LinkExists extends \Ice\UserException
    {
        public function __construct($name='')
        {
            $this->name = $name;
        }

        public function ice_id()
        {
            return '::IceStorm::LinkExists';
        }

        public function __toString(): string
        {
            global $IceStorm__t_LinkExists;
            return IcePHP_stringifyException($this, $IceStorm__t_LinkExists);
        }

        public $name;
    }
    global $IcePHP__t_string;

    $IceStorm__t_LinkExists = IcePHP_defineException('::IceStorm::LinkExists', '\\IceStorm\\LinkExists', null, array(
        array('name', $IcePHP__t_string, false, 0)));
}

namespace IceStorm
{
    global $IceStorm__t_NoSuchLink;
    class NoSuchLink extends \Ice\UserException
    {
        public function __construct($name='')
        {
            $this->name = $name;
        }

        public function ice_id()
        {
            return '::IceStorm::NoSuchLink';
        }

        public function __toString(): string
        {
            global $IceStorm__t_NoSuchLink;
            return IcePHP_stringifyException($this, $IceStorm__t_NoSuchLink);
        }

        public $name;
    }
    global $IcePHP__t_string;

    $IceStorm__t_NoSuchLink = IcePHP_defineException('::IceStorm::NoSuchLink', '\\IceStorm\\NoSuchLink', null, array(
        array('name', $IcePHP__t_string, false, 0)));
}

namespace IceStorm
{
    global $IceStorm__t_AlreadySubscribed;
    class AlreadySubscribed extends \Ice\UserException
    {
        public function __construct()
        {
        }

        public function ice_id()
        {
            return '::IceStorm::AlreadySubscribed';
        }

        public function __toString(): string
        {
            global $IceStorm__t_AlreadySubscribed;
            return IcePHP_stringifyException($this, $IceStorm__t_AlreadySubscribed);
        }
    }

    $IceStorm__t_AlreadySubscribed = IcePHP_defineException('::IceStorm::AlreadySubscribed', '\\IceStorm\\AlreadySubscribed', null, null);
}

namespace IceStorm
{
    global $IceStorm__t_InvalidSubscriber;
    class InvalidSubscriber extends \Ice\UserException
    {
        public function __construct($reason='')
        {
            $this->reason = $reason;
        }

        public function ice_id()
        {
            return '::IceStorm::InvalidSubscriber';
        }

        public function __toString(): string
        {
            global $IceStorm__t_InvalidSubscriber;
            return IcePHP_stringifyException($this, $IceStorm__t_InvalidSubscriber);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $IceStorm__t_InvalidSubscriber = IcePHP_defineException('::IceStorm::InvalidSubscriber', '\\IceStorm\\InvalidSubscriber', null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace IceStorm
{
    global $IceStorm__t_BadQoS;
    class BadQoS extends \Ice\UserException
    {
        public function __construct($reason='')
        {
            $this->reason = $reason;
        }

        public function ice_id()
        {
            return '::IceStorm::BadQoS';
        }

        public function __toString(): string
        {
            global $IceStorm__t_BadQoS;
            return IcePHP_stringifyException($this, $IceStorm__t_BadQoS);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $IceStorm__t_BadQoS = IcePHP_defineException('::IceStorm::BadQoS', '\\IceStorm\\BadQoS', null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}

namespace IceStorm
{
    global $IceStorm__t_Topic;
    global $IceStorm__t_TopicPrx;

    class TopicPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::IceStorm::Topic', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceStorm::Topic', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceStorm::Topic';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceStorm__t_TopicPrx = IcePHP_defineProxy('::IceStorm::Topic', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $Ice__t_ObjectPrx;
    global $IceStorm__t_QoS;
    global $IceStorm__t_TopicPrx;
    global $IcePHP__t_int;
    global $IceStorm__t_LinkInfoSeq;
    global $Ice__t_IdentitySeq;
    IcePHP_defineOperation($IceStorm__t_TopicPrx, 'getName', 2, 0, null, null, array($IcePHP__t_string), null);
    IcePHP_defineOperation($IceStorm__t_TopicPrx, 'getPublisher', 2, 0, null, null, array($Ice__t_ObjectPrx), null);
    IcePHP_defineOperation($IceStorm__t_TopicPrx, 'getNonReplicatedPublisher', 2, 0, null, null, array($Ice__t_ObjectPrx), null);
    IcePHP_defineOperation($IceStorm__t_TopicPrx, 'subscribeAndGetPublisher', 0, 0, array(array($IceStorm__t_QoS), array($Ice__t_ObjectPrx)), null, array($Ice__t_ObjectPrx), array($IceStorm__t_AlreadySubscribed, $IceStorm__t_InvalidSubscriber, $IceStorm__t_BadQoS));
    IcePHP_defineOperation($IceStorm__t_TopicPrx, 'unsubscribe', 2, 0, array(array($Ice__t_ObjectPrx)), null, null, null);
    IcePHP_defineOperation($IceStorm__t_TopicPrx, 'link', 0, 0, array(array($IceStorm__t_TopicPrx), array($IcePHP__t_int)), null, null, array($IceStorm__t_LinkExists));
    IcePHP_defineOperation($IceStorm__t_TopicPrx, 'unlink', 0, 0, array(array($IceStorm__t_TopicPrx)), null, null, array($IceStorm__t_NoSuchLink));
    IcePHP_defineOperation($IceStorm__t_TopicPrx, 'getLinkInfoSeq', 2, 0, null, null, array($IceStorm__t_LinkInfoSeq), null);
    IcePHP_defineOperation($IceStorm__t_TopicPrx, 'getSubscribers', 0, 0, null, null, array($Ice__t_IdentitySeq), null);
    IcePHP_defineOperation($IceStorm__t_TopicPrx, 'destroy', 0, 0, null, null, null, null);
}

namespace IceStorm
{
    global $IceStorm__t_TopicDict;

    if(!isset($IceStorm__t_TopicDict))
    {
        global $IcePHP__t_string;
        global $IceStorm__t_TopicPrx;
        $IceStorm__t_TopicDict = IcePHP_defineDictionary('::IceStorm::TopicDict', $IcePHP__t_string, $IceStorm__t_TopicPrx);
    }
}

namespace IceStorm
{
    global $IceStorm__t_TopicExists;
    class TopicExists extends \Ice\UserException
    {
        public function __construct($name='')
        {
            $this->name = $name;
        }

        public function ice_id()
        {
            return '::IceStorm::TopicExists';
        }

        public function __toString(): string
        {
            global $IceStorm__t_TopicExists;
            return IcePHP_stringifyException($this, $IceStorm__t_TopicExists);
        }

        public $name;
    }
    global $IcePHP__t_string;

    $IceStorm__t_TopicExists = IcePHP_defineException('::IceStorm::TopicExists', '\\IceStorm\\TopicExists', null, array(
        array('name', $IcePHP__t_string, false, 0)));
}

namespace IceStorm
{
    global $IceStorm__t_NoSuchTopic;
    class NoSuchTopic extends \Ice\UserException
    {
        public function __construct($name='')
        {
            $this->name = $name;
        }

        public function ice_id()
        {
            return '::IceStorm::NoSuchTopic';
        }

        public function __toString(): string
        {
            global $IceStorm__t_NoSuchTopic;
            return IcePHP_stringifyException($this, $IceStorm__t_NoSuchTopic);
        }

        public $name;
    }
    global $IcePHP__t_string;

    $IceStorm__t_NoSuchTopic = IcePHP_defineException('::IceStorm::NoSuchTopic', '\\IceStorm\\NoSuchTopic', null, array(
        array('name', $IcePHP__t_string, false, 0)));
}

namespace IceStorm
{
    global $IceStorm__t_TopicManager;
    global $IceStorm__t_TopicManagerPrx;

    class TopicManagerPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::IceStorm::TopicManager', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceStorm::TopicManager', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceStorm::TopicManager';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceStorm__t_TopicManagerPrx = IcePHP_defineProxy('::IceStorm::TopicManager', $Ice__t_ObjectPrx, null);

    global $IcePHP__t_string;
    global $IceStorm__t_TopicPrx;
    global $IceStorm__t_TopicDict;
    IcePHP_defineOperation($IceStorm__t_TopicManagerPrx, 'create', 0, 0, array(array($IcePHP__t_string)), null, array($IceStorm__t_TopicPrx), array($IceStorm__t_TopicExists));
    IcePHP_defineOperation($IceStorm__t_TopicManagerPrx, 'retrieve', 2, 0, array(array($IcePHP__t_string)), null, array($IceStorm__t_TopicPrx), array($IceStorm__t_NoSuchTopic));
    IcePHP_defineOperation($IceStorm__t_TopicManagerPrx, 'retrieveAll', 2, 0, null, null, array($IceStorm__t_TopicDict), null);
}

namespace IceStorm
{
    global $IceStorm__t_Finder;
    global $IceStorm__t_FinderPrx;

    class FinderPrxHelper
    {
        public static function checkedCast($proxy, $facetOrContext=null, $context=null)
        {
            return $proxy->ice_checkedCast('::IceStorm::Finder', $facetOrContext, $context);
        }

        public static function uncheckedCast($proxy, $facet=null)
        {
            return $proxy->ice_uncheckedCast('::IceStorm::Finder', $facet);
        }

        public static function ice_staticId()
        {
            return '::IceStorm::Finder';
        }
    }

    global $Ice__t_ObjectPrx;
    $IceStorm__t_FinderPrx = IcePHP_defineProxy('::IceStorm::Finder', $Ice__t_ObjectPrx, null);

    global $IceStorm__t_TopicManagerPrx;
    IcePHP_defineOperation($IceStorm__t_FinderPrx, 'getTopicManager', 0, 0, null, null, array($IceStorm__t_TopicManagerPrx), null);
}
?>
