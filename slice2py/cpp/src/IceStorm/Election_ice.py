# -*- coding: utf-8 -*-
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `Election.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

import Ice
import IcePy
import builtins as _builtins
import Ice.Identity_ice
import Ice.BuiltinSequences_ice
import SubscriberRecord_ice
import LLURecord_ice

# Included module Ice
_M_Ice = Ice.openModule('Ice')

# Included module IceMX
_M_IceMX = Ice.openModule('IceMX')

# Included module IceStorm
_M_IceStorm = Ice.openModule('IceStorm')

# Included module IceStormElection
_M_IceStormElection = Ice.openModule('IceStormElection')

# Start of module IceStormElection
__name__ = 'IceStormElection'
_M_IceStormElection.TopicContent = None
class TopicContent(object):
    """
     The contents of topic.
    Members:
    id --  The topic identity.
    records --  The topic subscribers.
    """
    def __init__(self, id=None, records=None):
        if id is None:
            self.id = _M_Ice.Identity()
        else:
            self.id = id
        self.records = records

    def __eq__(self, other):
        if other is None:
            return False
        elif not isinstance(other, _M_IceStormElection.TopicContent):
            return NotImplemented
        else:
            if self.id != other.id:
                return False
            if self.records != other.records:
                return False
            return True

    def __ne__(self, other):
        return not self.__eq__(other)

    def __str__(self):
        return IcePy.stringify(self, _M_IceStormElection._t_TopicContent)

    __repr__ = __str__

_M_IceStormElection._t_TopicContent = IcePy.defineStruct('::IceStormElection::TopicContent', TopicContent, (), (
    ('id', (), _M_Ice._t_Identity),
    ('records', (), _M_IceStorm._t_SubscriberRecordSeq)
))

_M_IceStormElection.TopicContent = TopicContent
del TopicContent
_M_IceStormElection._t_TopicContentSeq = IcePy.defineSequence('::IceStormElection::TopicContentSeq', (), _M_IceStormElection._t_TopicContent)
_M_IceStormElection.ObserverInconsistencyException = None
class ObserverInconsistencyException(Ice.UserException):
    """
     Thrown if an observer detects an inconsistency.
    Members:
    reason --  The reason for the inconsistency.
    """
    def __init__(self, reason=''):
        self.reason = reason

    def __str__(self):
        return IcePy.stringifyException(self)

    __repr__ = __str__

    _ice_id = '::IceStormElection::ObserverInconsistencyException'

_M_IceStormElection._t_ObserverInconsistencyException = IcePy.defineException('::IceStormElection::ObserverInconsistencyException', ObserverInconsistencyException, (), None, (('reason', (), IcePy._t_string, False, 0),))
ObserverInconsistencyException._ice_type = _M_IceStormElection._t_ObserverInconsistencyException

_M_IceStormElection.ObserverInconsistencyException = ObserverInconsistencyException
del ObserverInconsistencyException

_M_IceStormElection._t_ReplicaObserver = IcePy.defineValue('::IceStormElection::ReplicaObserver', Ice.Value, -1, (), True, None, ())
_M_IceStormElection.ReplicaObserverPrx = None
class ReplicaObserverPrx(Ice.ObjectPrx):

    """
     Initialize the observer.
    Arguments:
    llu -- The last log update seen by the master.
    content -- The topic content.
    context -- The request context for the invocation.
    Throws:
    ObserverInconsistencyException -- Raised if an inconsisency was detected.
    """
    def init(self, llu, content, context=None):
        return _M_IceStormElection.ReplicaObserver._op_init.invoke(self, ((llu, content), context))

    """
     Initialize the observer.
    Arguments:
    llu -- The last log update seen by the master.
    content -- The topic content.
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def initAsync(self, llu, content, context=None):
        return _M_IceStormElection.ReplicaObserver._op_init.invokeAsync(self, ((llu, content), context))

    """
     Create the topic with the given name.
    Arguments:
    llu -- The log update token.
    name -- The topic name.
    context -- The request context for the invocation.
    Throws:
    ObserverInconsistencyException -- Raised if an inconsisency was detected.
    """
    def createTopic(self, llu, name, context=None):
        return _M_IceStormElection.ReplicaObserver._op_createTopic.invoke(self, ((llu, name), context))

    """
     Create the topic with the given name.
    Arguments:
    llu -- The log update token.
    name -- The topic name.
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def createTopicAsync(self, llu, name, context=None):
        return _M_IceStormElection.ReplicaObserver._op_createTopic.invokeAsync(self, ((llu, name), context))

    """
     Destroy the topic with the given name.
    Arguments:
    llu -- The log update token.
    name -- The topic name.
    context -- The request context for the invocation.
    Throws:
    ObserverInconsistencyException -- Raised if an inconsisency was detected.
    """
    def destroyTopic(self, llu, name, context=None):
        return _M_IceStormElection.ReplicaObserver._op_destroyTopic.invoke(self, ((llu, name), context))

    """
     Destroy the topic with the given name.
    Arguments:
    llu -- The log update token.
    name -- The topic name.
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def destroyTopicAsync(self, llu, name, context=None):
        return _M_IceStormElection.ReplicaObserver._op_destroyTopic.invokeAsync(self, ((llu, name), context))

    """
     Add a subscriber to a topic.
    Arguments:
    llu -- The log update token.
    topic -- The topic name to which to add the subscriber.
    record -- The subscriber information.
    context -- The request context for the invocation.
    Throws:
    ObserverInconsistencyException -- Raised if an inconsisency was detected.
    """
    def addSubscriber(self, llu, topic, record, context=None):
        return _M_IceStormElection.ReplicaObserver._op_addSubscriber.invoke(self, ((llu, topic, record), context))

    """
     Add a subscriber to a topic.
    Arguments:
    llu -- The log update token.
    topic -- The topic name to which to add the subscriber.
    record -- The subscriber information.
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def addSubscriberAsync(self, llu, topic, record, context=None):
        return _M_IceStormElection.ReplicaObserver._op_addSubscriber.invokeAsync(self, ((llu, topic, record), context))

    """
     Remove a subscriber from a topic.
    Arguments:
    llu -- The log update token.
    topic -- 
    subscribers -- The identities of the subscribers to remove.
    context -- The request context for the invocation.
    Throws:
    ObserverInconsistencyException -- Raised if an inconsisency was detected.
    """
    def removeSubscriber(self, llu, topic, subscribers, context=None):
        return _M_IceStormElection.ReplicaObserver._op_removeSubscriber.invoke(self, ((llu, topic, subscribers), context))

    """
     Remove a subscriber from a topic.
    Arguments:
    llu -- The log update token.
    topic -- 
    subscribers -- The identities of the subscribers to remove.
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def removeSubscriberAsync(self, llu, topic, subscribers, context=None):
        return _M_IceStormElection.ReplicaObserver._op_removeSubscriber.invokeAsync(self, ((llu, topic, subscribers), context))

    @staticmethod
    def checkedCast(proxy, facetOrContext=None, context=None):
        return _M_IceStormElection.ReplicaObserverPrx.ice_checkedCast(proxy, '::IceStormElection::ReplicaObserver', facetOrContext, context)

    @staticmethod
    def uncheckedCast(proxy, facet=None):
        return _M_IceStormElection.ReplicaObserverPrx.ice_uncheckedCast(proxy, facet)

    @staticmethod
    def ice_staticId():
        return '::IceStormElection::ReplicaObserver'
_M_IceStormElection._t_ReplicaObserverPrx = IcePy.defineProxy('::IceStormElection::ReplicaObserver', ReplicaObserverPrx)

_M_IceStormElection.ReplicaObserverPrx = ReplicaObserverPrx
del ReplicaObserverPrx

_M_IceStormElection.ReplicaObserver = None
class ReplicaObserver(Ice.Object):

    def ice_ids(self, current=None):
        return ('::Ice::Object', '::IceStormElection::ReplicaObserver')

    def ice_id(self, current=None):
        return '::IceStormElection::ReplicaObserver'

    @staticmethod
    def ice_staticId():
        return '::IceStormElection::ReplicaObserver'

    def init(self, llu, content, current=None):
        """
         Initialize the observer.
        Arguments:
        llu -- The last log update seen by the master.
        content -- The topic content.
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        Throws:
        ObserverInconsistencyException -- Raised if an inconsisency was detected.
        """
        raise NotImplementedError("servant method 'init' not implemented")

    def createTopic(self, llu, name, current=None):
        """
         Create the topic with the given name.
        Arguments:
        llu -- The log update token.
        name -- The topic name.
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        Throws:
        ObserverInconsistencyException -- Raised if an inconsisency was detected.
        """
        raise NotImplementedError("servant method 'createTopic' not implemented")

    def destroyTopic(self, llu, name, current=None):
        """
         Destroy the topic with the given name.
        Arguments:
        llu -- The log update token.
        name -- The topic name.
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        Throws:
        ObserverInconsistencyException -- Raised if an inconsisency was detected.
        """
        raise NotImplementedError("servant method 'destroyTopic' not implemented")

    def addSubscriber(self, llu, topic, record, current=None):
        """
         Add a subscriber to a topic.
        Arguments:
        llu -- The log update token.
        topic -- The topic name to which to add the subscriber.
        record -- The subscriber information.
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        Throws:
        ObserverInconsistencyException -- Raised if an inconsisency was detected.
        """
        raise NotImplementedError("servant method 'addSubscriber' not implemented")

    def removeSubscriber(self, llu, topic, subscribers, current=None):
        """
         Remove a subscriber from a topic.
        Arguments:
        llu -- The log update token.
        topic -- 
        subscribers -- The identities of the subscribers to remove.
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        Throws:
        ObserverInconsistencyException -- Raised if an inconsisency was detected.
        """
        raise NotImplementedError("servant method 'removeSubscriber' not implemented")

    def __str__(self):
        return IcePy.stringify(self, _M_IceStormElection._t_ReplicaObserverDisp)

    __repr__ = __str__

_M_IceStormElection._t_ReplicaObserverDisp = IcePy.defineClass('::IceStormElection::ReplicaObserver', ReplicaObserver, (), None, ())
ReplicaObserver._ice_type = _M_IceStormElection._t_ReplicaObserverDisp

ReplicaObserver._op_init = IcePy.Operation('init', Ice.OperationMode.Normal, False, None, (), (((), _M_IceStormElection._t_LogUpdate, False, 0), ((), _M_IceStormElection._t_TopicContentSeq, False, 0)), (), None, (_M_IceStormElection._t_ObserverInconsistencyException,))
ReplicaObserver._op_createTopic = IcePy.Operation('createTopic', Ice.OperationMode.Normal, False, None, (), (((), _M_IceStormElection._t_LogUpdate, False, 0), ((), IcePy._t_string, False, 0)), (), None, (_M_IceStormElection._t_ObserverInconsistencyException,))
ReplicaObserver._op_destroyTopic = IcePy.Operation('destroyTopic', Ice.OperationMode.Normal, False, None, (), (((), _M_IceStormElection._t_LogUpdate, False, 0), ((), IcePy._t_string, False, 0)), (), None, (_M_IceStormElection._t_ObserverInconsistencyException,))
ReplicaObserver._op_addSubscriber = IcePy.Operation('addSubscriber', Ice.OperationMode.Normal, False, None, (), (((), _M_IceStormElection._t_LogUpdate, False, 0), ((), IcePy._t_string, False, 0), ((), _M_IceStorm._t_SubscriberRecord, False, 0)), (), None, (_M_IceStormElection._t_ObserverInconsistencyException,))
ReplicaObserver._op_removeSubscriber = IcePy.Operation('removeSubscriber', Ice.OperationMode.Normal, False, None, (), (((), _M_IceStormElection._t_LogUpdate, False, 0), ((), IcePy._t_string, False, 0), ((), _M_Ice._t_IdentitySeq, False, 0)), (), None, (_M_IceStormElection._t_ObserverInconsistencyException,))

_M_IceStormElection.ReplicaObserver = ReplicaObserver
del ReplicaObserver

_M_IceStormElection._t_TopicManagerSync = IcePy.defineValue('::IceStormElection::TopicManagerSync', Ice.Value, -1, (), True, None, ())
_M_IceStormElection.TopicManagerSyncPrx = None
class TopicManagerSyncPrx(Ice.ObjectPrx):

    """
     Retrieve the topic content.
    Arguments:
    context -- The request context for the invocation.
    Returns a tuple containing the following:
    llu -- The last log update token.
    content -- The topic content.
    """
    def getContent(self, context=None):
        return _M_IceStormElection.TopicManagerSync._op_getContent.invoke(self, ((), context))

    """
     Retrieve the topic content.
    Arguments:
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def getContentAsync(self, context=None):
        return _M_IceStormElection.TopicManagerSync._op_getContent.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(proxy, facetOrContext=None, context=None):
        return _M_IceStormElection.TopicManagerSyncPrx.ice_checkedCast(proxy, '::IceStormElection::TopicManagerSync', facetOrContext, context)

    @staticmethod
    def uncheckedCast(proxy, facet=None):
        return _M_IceStormElection.TopicManagerSyncPrx.ice_uncheckedCast(proxy, facet)

    @staticmethod
    def ice_staticId():
        return '::IceStormElection::TopicManagerSync'
_M_IceStormElection._t_TopicManagerSyncPrx = IcePy.defineProxy('::IceStormElection::TopicManagerSync', TopicManagerSyncPrx)

_M_IceStormElection.TopicManagerSyncPrx = TopicManagerSyncPrx
del TopicManagerSyncPrx

_M_IceStormElection.TopicManagerSync = None
class TopicManagerSync(Ice.Object):

    def ice_ids(self, current=None):
        return ('::Ice::Object', '::IceStormElection::TopicManagerSync')

    def ice_id(self, current=None):
        return '::IceStormElection::TopicManagerSync'

    @staticmethod
    def ice_staticId():
        return '::IceStormElection::TopicManagerSync'

    def getContent(self, current=None):
        """
         Retrieve the topic content.
        Arguments:
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        """
        raise NotImplementedError("servant method 'getContent' not implemented")

    def __str__(self):
        return IcePy.stringify(self, _M_IceStormElection._t_TopicManagerSyncDisp)

    __repr__ = __str__

_M_IceStormElection._t_TopicManagerSyncDisp = IcePy.defineClass('::IceStormElection::TopicManagerSync', TopicManagerSync, (), None, ())
TopicManagerSync._ice_type = _M_IceStormElection._t_TopicManagerSyncDisp

TopicManagerSync._op_getContent = IcePy.Operation('getContent', Ice.OperationMode.Normal, False, None, (), (), (((), _M_IceStormElection._t_LogUpdate, False, 0), ((), _M_IceStormElection._t_TopicContentSeq, False, 0)), None, ())

_M_IceStormElection.TopicManagerSync = TopicManagerSync
del TopicManagerSync
_M_IceStormElection.NodeState = None
class NodeState(Ice.EnumBase):
    """
     The node state.
    Enumerators:
    NodeStateInactive --  The node is inactive and awaiting an election.
    NodeStateElection --  The node is electing a leader.
    NodeStateReorganization --  The replica group is reorganizing.
    NodeStateNormal --  The replica group is active & replicating.
    """

    def __init__(self, _n, _v):
        Ice.EnumBase.__init__(self, _n, _v)

    def valueOf(self, _n):
        if _n in self._enumerators:
            return self._enumerators[_n]
        return None
    valueOf = classmethod(valueOf)

NodeState.NodeStateInactive = NodeState("NodeStateInactive", 0)
NodeState.NodeStateElection = NodeState("NodeStateElection", 1)
NodeState.NodeStateReorganization = NodeState("NodeStateReorganization", 2)
NodeState.NodeStateNormal = NodeState("NodeStateNormal", 3)
NodeState._enumerators = { 0:NodeState.NodeStateInactive, 1:NodeState.NodeStateElection, 2:NodeState.NodeStateReorganization, 3:NodeState.NodeStateNormal }

_M_IceStormElection._t_NodeState = IcePy.defineEnum('::IceStormElection::NodeState', NodeState, (), NodeState._enumerators)

_M_IceStormElection.NodeState = NodeState
del NodeState
_M_IceStormElection._t_NodeDisp = IcePy.declareClass('::IceStormElection::Node')
_M_IceStormElection._t_NodePrx = IcePy.declareProxy('::IceStormElection::Node')
_M_IceStormElection.NodeInfo = None
class NodeInfo(object):
    """
     All nodes in the replication group.
    Members:
    id --  The identity of the node.
    n --  The node proxy.
    """
    def __init__(self, id=0, n=None):
        self.id = id
        self.n = n

    def __eq__(self, other):
        if other is None:
            return False
        elif not isinstance(other, _M_IceStormElection.NodeInfo):
            return NotImplemented
        else:
            if self.id != other.id:
                return False
            if self.n != other.n:
                return False
            return True

    def __ne__(self, other):
        return not self.__eq__(other)

    def __str__(self):
        return IcePy.stringify(self, _M_IceStormElection._t_NodeInfo)

    __repr__ = __str__

_M_IceStormElection._t_NodeInfo = IcePy.defineStruct('::IceStormElection::NodeInfo', NodeInfo, (), (
    ('id', (), IcePy._t_int),
    ('n', (), _M_IceStormElection._t_NodePrx)
))

_M_IceStormElection.NodeInfo = NodeInfo
del NodeInfo
_M_IceStormElection._t_NodeInfoSeq = IcePy.defineSequence('::IceStormElection::NodeInfoSeq', (), _M_IceStormElection._t_NodeInfo)
_M_IceStormElection.GroupInfo = None
class GroupInfo(object):
    """
     The group info.
    Members:
    id --  The identity of the node.
    llu --  The last known log update for this node.
    """
    def __init__(self, id=0, llu=None):
        self.id = id
        if llu is None:
            self.llu = _M_IceStormElection.LogUpdate()
        else:
            self.llu = llu

    def __hash__(self):
        _h = 0
        _h = 5 * _h + _builtins.hash(self.id)
        _h = 5 * _h + _builtins.hash(self.llu)
        return _h % 0x7fffffff

    def __compare(self, other):
        if other is None:
            return 1
        elif not isinstance(other, _M_IceStormElection.GroupInfo):
            return NotImplemented
        else:
            if self.id is None or other.id is None:
                if self.id != other.id:
                    return (-1 if self.id is None else 1)
            else:
                if self.id < other.id:
                    return -1
                elif self.id > other.id:
                    return 1
            if self.llu is None or other.llu is None:
                if self.llu != other.llu:
                    return (-1 if self.llu is None else 1)
            else:
                if self.llu < other.llu:
                    return -1
                elif self.llu > other.llu:
                    return 1
            return 0

    def __lt__(self, other):
        r = self.__compare(other)
        if r is NotImplemented:
            return r
        else:
            return r < 0

    def __le__(self, other):
        r = self.__compare(other)
        if r is NotImplemented:
            return r
        else:
            return r <= 0

    def __gt__(self, other):
        r = self.__compare(other)
        if r is NotImplemented:
            return r
        else:
            return r > 0

    def __ge__(self, other):
        r = self.__compare(other)
        if r is NotImplemented:
            return r
        else:
            return r >= 0

    def __eq__(self, other):
        r = self.__compare(other)
        if r is NotImplemented:
            return r
        else:
            return r == 0

    def __ne__(self, other):
        r = self.__compare(other)
        if r is NotImplemented:
            return r
        else:
            return r != 0

    def __str__(self):
        return IcePy.stringify(self, _M_IceStormElection._t_GroupInfo)

    __repr__ = __str__

_M_IceStormElection._t_GroupInfo = IcePy.defineStruct('::IceStormElection::GroupInfo', GroupInfo, (), (
    ('id', (), IcePy._t_int),
    ('llu', (), _M_IceStormElection._t_LogUpdate)
))

_M_IceStormElection.GroupInfo = GroupInfo
del GroupInfo
_M_IceStormElection._t_GroupInfoSeq = IcePy.defineSequence('::IceStormElection::GroupInfoSeq', (), _M_IceStormElection._t_GroupInfo)
_M_IceStormElection.QueryInfo = None
class QueryInfo(object):
    def __init__(self, id=0, coord=0, group='', replica=None, state=_M_IceStormElection.NodeState.NodeStateInactive, up=None, max=0):
        self.id = id
        self.coord = coord
        self.group = group
        self.replica = replica
        self.state = state
        self.up = up
        self.max = max

    def __eq__(self, other):
        if other is None:
            return False
        elif not isinstance(other, _M_IceStormElection.QueryInfo):
            return NotImplemented
        else:
            if self.id != other.id:
                return False
            if self.coord != other.coord:
                return False
            if self.group != other.group:
                return False
            if self.replica != other.replica:
                return False
            if self.state != other.state:
                return False
            if self.up != other.up:
                return False
            if self.max != other.max:
                return False
            return True

    def __ne__(self, other):
        return not self.__eq__(other)

    def __str__(self):
        return IcePy.stringify(self, _M_IceStormElection._t_QueryInfo)

    __repr__ = __str__

_M_IceStormElection._t_QueryInfo = IcePy.defineStruct('::IceStormElection::QueryInfo', QueryInfo, (), (
    ('id', (), IcePy._t_int),
    ('coord', (), IcePy._t_int),
    ('group', (), IcePy._t_string),
    ('replica', (), IcePy._t_ObjectPrx),
    ('state', (), _M_IceStormElection._t_NodeState),
    ('up', (), _M_IceStormElection._t_GroupInfoSeq),
    ('max', (), IcePy._t_int)
))

_M_IceStormElection.QueryInfo = QueryInfo
del QueryInfo

_M_IceStormElection._t_Node = IcePy.defineValue('::IceStormElection::Node', Ice.Value, -1, (), True, None, ())
_M_IceStormElection.NodePrx = None
class NodePrx(Ice.ObjectPrx):

    """
     Invite the node into a group with the given coordinator and group name.
    Arguments:
    j -- The group coordinator.
    gn -- The group name.
    context -- The request context for the invocation.
    """
    def invitation(self, j, gn, context=None):
        return _M_IceStormElection.Node._op_invitation.invoke(self, ((j, gn), context))

    """
     Invite the node into a group with the given coordinator and group name.
    Arguments:
    j -- The group coordinator.
    gn -- The group name.
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def invitationAsync(self, j, gn, context=None):
        return _M_IceStormElection.Node._op_invitation.invokeAsync(self, ((j, gn), context))

    """
     Call from the group coordinator to a node to inform the node that the replica group is active.
    Arguments:
    j -- The group coordinator.
    gn -- The group name.
    coordinator -- The proxy to the coordinator.
    max -- The highest priority node seen by this replica group.
    generation -- The current generation count.
    context -- The request context for the invocation.
    """
    def ready(self, j, gn, coordinator, max, generation, context=None):
        return _M_IceStormElection.Node._op_ready.invoke(self, ((j, gn, coordinator, max, generation), context))

    """
     Call from the group coordinator to a node to inform the node that the replica group is active.
    Arguments:
    j -- The group coordinator.
    gn -- The group name.
    coordinator -- The proxy to the coordinator.
    max -- The highest priority node seen by this replica group.
    generation -- The current generation count.
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def readyAsync(self, j, gn, coordinator, max, generation, context=None):
        return _M_IceStormElection.Node._op_ready.invokeAsync(self, ((j, gn, coordinator, max, generation), context))

    """
     Called to accept an invitation into the given group.
    Arguments:
    j -- The id of the node accepting the invitation.
    gn -- The group name.
    forwardedInvites -- The ids of the nodes to which invitations were forwarded.
    observer -- The observer.
    llu -- The last log update for the given node.
    max -- The highest priority node seen by this replica group.
    context -- The request context for the invocation.
    """
    def accept(self, j, gn, forwardedInvites, observer, llu, max, context=None):
        return _M_IceStormElection.Node._op_accept.invoke(self, ((j, gn, forwardedInvites, observer, llu, max), context))

    """
     Called to accept an invitation into the given group.
    Arguments:
    j -- The id of the node accepting the invitation.
    gn -- The group name.
    forwardedInvites -- The ids of the nodes to which invitations were forwarded.
    observer -- The observer.
    llu -- The last log update for the given node.
    max -- The highest priority node seen by this replica group.
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def acceptAsync(self, j, gn, forwardedInvites, observer, llu, max, context=None):
        return _M_IceStormElection.Node._op_accept.invokeAsync(self, ((j, gn, forwardedInvites, observer, llu, max), context))

    """
     Determine if this node is a coordinator.
    Arguments:
    context -- The request context for the invocation.
    Returns: True if the node is a coordinator, false otherwise.
    """
    def areYouCoordinator(self, context=None):
        return _M_IceStormElection.Node._op_areYouCoordinator.invoke(self, ((), context))

    """
     Determine if this node is a coordinator.
    Arguments:
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def areYouCoordinatorAsync(self, context=None):
        return _M_IceStormElection.Node._op_areYouCoordinator.invokeAsync(self, ((), context))

    """
     Determine if the node is a member of the given group with the given coordinator.
    Arguments:
    gn -- The group name.
    j -- The group coordinator.
    context -- The request context for the invocation.
    Returns: True if the node is a member, false otherwise.
    """
    def areYouThere(self, gn, j, context=None):
        return _M_IceStormElection.Node._op_areYouThere.invoke(self, ((gn, j), context))

    """
     Determine if the node is a member of the given group with the given coordinator.
    Arguments:
    gn -- The group name.
    j -- The group coordinator.
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def areYouThereAsync(self, gn, j, context=None):
        return _M_IceStormElection.Node._op_areYouThere.invokeAsync(self, ((gn, j), context))

    """
     Get the sync object for the replica hosted by this node.
    Arguments:
    context -- The request context for the invocation.
    Returns: The sync object.
    """
    def sync(self, context=None):
        return _M_IceStormElection.Node._op_sync.invoke(self, ((), context))

    """
     Get the sync object for the replica hosted by this node.
    Arguments:
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def syncAsync(self, context=None):
        return _M_IceStormElection.Node._op_sync.invokeAsync(self, ((), context))

    """
     Get the replication group information.
    Arguments:
    context -- The request context for the invocation.
    Returns: The set of configured nodes and the associated priority.
    """
    def nodes(self, context=None):
        return _M_IceStormElection.Node._op_nodes.invoke(self, ((), context))

    """
     Get the replication group information.
    Arguments:
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def nodesAsync(self, context=None):
        return _M_IceStormElection.Node._op_nodes.invokeAsync(self, ((), context))

    """
     Get the query information for the given node.
    Arguments:
    context -- The request context for the invocation.
    Returns: The query information.
    """
    def query(self, context=None):
        return _M_IceStormElection.Node._op_query.invoke(self, ((), context))

    """
     Get the query information for the given node.
    Arguments:
    context -- The request context for the invocation.
    Returns: A future object for the invocation.
    """
    def queryAsync(self, context=None):
        return _M_IceStormElection.Node._op_query.invokeAsync(self, ((), context))

    @staticmethod
    def checkedCast(proxy, facetOrContext=None, context=None):
        return _M_IceStormElection.NodePrx.ice_checkedCast(proxy, '::IceStormElection::Node', facetOrContext, context)

    @staticmethod
    def uncheckedCast(proxy, facet=None):
        return _M_IceStormElection.NodePrx.ice_uncheckedCast(proxy, facet)

    @staticmethod
    def ice_staticId():
        return '::IceStormElection::Node'
_M_IceStormElection._t_NodePrx = IcePy.defineProxy('::IceStormElection::Node', NodePrx)

_M_IceStormElection.NodePrx = NodePrx
del NodePrx

_M_IceStormElection.Node = None
class Node(Ice.Object):

    def ice_ids(self, current=None):
        return ('::Ice::Object', '::IceStormElection::Node')

    def ice_id(self, current=None):
        return '::IceStormElection::Node'

    @staticmethod
    def ice_staticId():
        return '::IceStormElection::Node'

    def invitation(self, j, gn, current=None):
        """
         Invite the node into a group with the given coordinator and group name.
        Arguments:
        j -- The group coordinator.
        gn -- The group name.
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        """
        raise NotImplementedError("servant method 'invitation' not implemented")

    def ready(self, j, gn, coordinator, max, generation, current=None):
        """
         Call from the group coordinator to a node to inform the node that the replica group is active.
        Arguments:
        j -- The group coordinator.
        gn -- The group name.
        coordinator -- The proxy to the coordinator.
        max -- The highest priority node seen by this replica group.
        generation -- The current generation count.
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        """
        raise NotImplementedError("servant method 'ready' not implemented")

    def accept(self, j, gn, forwardedInvites, observer, llu, max, current=None):
        """
         Called to accept an invitation into the given group.
        Arguments:
        j -- The id of the node accepting the invitation.
        gn -- The group name.
        forwardedInvites -- The ids of the nodes to which invitations were forwarded.
        observer -- The observer.
        llu -- The last log update for the given node.
        max -- The highest priority node seen by this replica group.
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        """
        raise NotImplementedError("servant method 'accept' not implemented")

    def areYouCoordinator(self, current=None):
        """
         Determine if this node is a coordinator.
        Arguments:
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        """
        raise NotImplementedError("servant method 'areYouCoordinator' not implemented")

    def areYouThere(self, gn, j, current=None):
        """
         Determine if the node is a member of the given group with the given coordinator.
        Arguments:
        gn -- The group name.
        j -- The group coordinator.
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        """
        raise NotImplementedError("servant method 'areYouThere' not implemented")

    def sync(self, current=None):
        """
         Get the sync object for the replica hosted by this node.
        Arguments:
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        """
        raise NotImplementedError("servant method 'sync' not implemented")

    def nodes(self, current=None):
        """
         Get the replication group information.
        Arguments:
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        """
        raise NotImplementedError("servant method 'nodes' not implemented")

    def query(self, current=None):
        """
         Get the query information for the given node.
        Arguments:
        current -- The Current object for the invocation.
        Returns: A future object for the invocation.
        """
        raise NotImplementedError("servant method 'query' not implemented")

    def __str__(self):
        return IcePy.stringify(self, _M_IceStormElection._t_NodeDisp)

    __repr__ = __str__

_M_IceStormElection._t_NodeDisp = IcePy.defineClass('::IceStormElection::Node', Node, (), None, ())
Node._ice_type = _M_IceStormElection._t_NodeDisp

Node._op_invitation = IcePy.Operation('invitation', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_string, False, 0)), (), None, ())
Node._op_ready = IcePy.Operation('ready', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_string, False, 0), ((), IcePy._t_ObjectPrx, False, 0), ((), IcePy._t_int, False, 0), ((), IcePy._t_long, False, 0)), (), None, ())
Node._op_accept = IcePy.Operation('accept', Ice.OperationMode.Normal, False, None, (), (((), IcePy._t_int, False, 0), ((), IcePy._t_string, False, 0), ((), _M_Ice._t_IntSeq, False, 0), ((), IcePy._t_ObjectPrx, False, 0), ((), _M_IceStormElection._t_LogUpdate, False, 0), ((), IcePy._t_int, False, 0)), (), None, ())
Node._op_areYouCoordinator = IcePy.Operation('areYouCoordinator', Ice.OperationMode.Idempotent, False, None, (), (), (), ((), IcePy._t_bool, False, 0), ())
Node._op_areYouThere = IcePy.Operation('areYouThere', Ice.OperationMode.Idempotent, False, None, (), (((), IcePy._t_string, False, 0), ((), IcePy._t_int, False, 0)), (), ((), IcePy._t_bool, False, 0), ())
Node._op_sync = IcePy.Operation('sync', Ice.OperationMode.Idempotent, False, None, (), (), (), ((), IcePy._t_ObjectPrx, False, 0), ())
Node._op_nodes = IcePy.Operation('nodes', Ice.OperationMode.Idempotent, False, None, (), (), (), ((), _M_IceStormElection._t_NodeInfoSeq, False, 0), ())
Node._op_query = IcePy.Operation('query', Ice.OperationMode.Idempotent, False, None, (), (), (), ((), _M_IceStormElection._t_QueryInfo, False, 0), ())

_M_IceStormElection.Node = Node
del Node

# End of module IceStormElection
