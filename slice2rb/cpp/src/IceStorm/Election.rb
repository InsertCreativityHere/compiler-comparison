# encoding: utf-8
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

require 'Ice'
require 'Ice/Identity.rb'
require 'Ice/BuiltinSequences.rb'
require_relative 'SubscriberRecord.rb'
require_relative 'LLURecord.rb'

module ::IceStormElection

    if not defined?(::IceStormElection::TopicContent)
        class TopicContent
            include ::Ice::Inspect_mixin
            def initialize(id=::Ice::Identity.new, records=nil)
                @id = id
                @records = records
            end

            def hash
                _h = 0
                _h = 5 * _h + @id.hash
                _h = 5 * _h + @records.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::IceStormElection::TopicContent or
                    @id != other.id or
                    @records != other.records
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :id, :records
        end

        T_TopicContent = ::Ice::__defineStruct('::IceStormElection::TopicContent', TopicContent, [
            ["id", ::Ice::T_Identity],
            ["records", ::IceStorm::T_SubscriberRecordSeq]
        ])
    end

    if not defined?(::IceStormElection::T_TopicContentSeq)
        T_TopicContentSeq = ::Ice::__defineSequence('::IceStormElection::TopicContentSeq', ::IceStormElection::T_TopicContent)
    end

    if not defined?(::IceStormElection::ObserverInconsistencyException)
        class ObserverInconsistencyException < Ice::UserException
            def initialize(reason='')
                @reason = reason
            end

            def to_s
                '::IceStormElection::ObserverInconsistencyException'
            end

            attr_accessor :reason
        end

        T_ObserverInconsistencyException = ::Ice::__defineException('::IceStormElection::ObserverInconsistencyException', ObserverInconsistencyException, nil, [["reason", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceStormElection::ReplicaObserver_Mixin)

        module ::IceStormElection::ReplicaObserver_Mixin
        end
        module ReplicaObserverPrx_mixin

            def init(llu, content, context=nil)
                ReplicaObserverPrx_mixin::OP_init.invoke(self, [llu, content], context)
            end

            def createTopic(llu, name, context=nil)
                ReplicaObserverPrx_mixin::OP_createTopic.invoke(self, [llu, name], context)
            end

            def destroyTopic(llu, name, context=nil)
                ReplicaObserverPrx_mixin::OP_destroyTopic.invoke(self, [llu, name], context)
            end

            def addSubscriber(llu, topic, record, context=nil)
                ReplicaObserverPrx_mixin::OP_addSubscriber.invoke(self, [llu, topic, record], context)
            end

            def removeSubscriber(llu, topic, subscribers, context=nil)
                ReplicaObserverPrx_mixin::OP_removeSubscriber.invoke(self, [llu, topic, subscribers], context)
            end
        end

        class ReplicaObserverPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include ReplicaObserverPrx_mixin
        end

        if not defined?(::IceStormElection::T_ReplicaObserverPrx)
            T_ReplicaObserver = ::Ice::__declareClass('::IceStormElection::ReplicaObserver')
            T_ReplicaObserverPrx = ::Ice::__declareProxy('::IceStormElection::ReplicaObserver')
        end

        T_ReplicaObserverPrx.defineProxy(ReplicaObserverPrx, nil, [])

        ReplicaObserverPrx_mixin::OP_init = ::Ice::__defineOperation('init', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::IceStormElection::T_LogUpdate, false, 0], [::IceStormElection::T_TopicContentSeq, false, 0]], [], nil, [::IceStormElection::T_ObserverInconsistencyException])
        ReplicaObserverPrx_mixin::OP_createTopic = ::Ice::__defineOperation('createTopic', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::IceStormElection::T_LogUpdate, false, 0], [::Ice::T_string, false, 0]], [], nil, [::IceStormElection::T_ObserverInconsistencyException])
        ReplicaObserverPrx_mixin::OP_destroyTopic = ::Ice::__defineOperation('destroyTopic', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::IceStormElection::T_LogUpdate, false, 0], [::Ice::T_string, false, 0]], [], nil, [::IceStormElection::T_ObserverInconsistencyException])
        ReplicaObserverPrx_mixin::OP_addSubscriber = ::Ice::__defineOperation('addSubscriber', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::IceStormElection::T_LogUpdate, false, 0], [::Ice::T_string, false, 0], [::IceStorm::T_SubscriberRecord, false, 0]], [], nil, [::IceStormElection::T_ObserverInconsistencyException])
        ReplicaObserverPrx_mixin::OP_removeSubscriber = ::Ice::__defineOperation('removeSubscriber', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::IceStormElection::T_LogUpdate, false, 0], [::Ice::T_string, false, 0], [::Ice::T_IdentitySeq, false, 0]], [], nil, [::IceStormElection::T_ObserverInconsistencyException])
    end

    if not defined?(::IceStormElection::TopicManagerSync_Mixin)

        module ::IceStormElection::TopicManagerSync_Mixin
        end
        module TopicManagerSyncPrx_mixin

            def getContent(context=nil)
                TopicManagerSyncPrx_mixin::OP_getContent.invoke(self, [], context)
            end
        end

        class TopicManagerSyncPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include TopicManagerSyncPrx_mixin
        end

        if not defined?(::IceStormElection::T_TopicManagerSyncPrx)
            T_TopicManagerSync = ::Ice::__declareClass('::IceStormElection::TopicManagerSync')
            T_TopicManagerSyncPrx = ::Ice::__declareProxy('::IceStormElection::TopicManagerSync')
        end

        T_TopicManagerSyncPrx.defineProxy(TopicManagerSyncPrx, nil, [])

        TopicManagerSyncPrx_mixin::OP_getContent = ::Ice::__defineOperation('getContent', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [], [[::IceStormElection::T_LogUpdate, false, 0], [::IceStormElection::T_TopicContentSeq, false, 0]], nil, [])
    end

    if not defined?(::IceStormElection::NodeState)
        class NodeState
            include Comparable

            def initialize(name, value)
                @name = name
                @value = value
            end

            def NodeState.from_int(val)
                @@_enumerators[val]
            end

            def to_s
                @name
            end

            def to_i
                @value
            end

            def <=>(other)
                other.is_a?(NodeState) or raise ArgumentError, "value must be a NodeState"
                @value <=> other.to_i
            end

            def hash
                @value.hash
            end

            def NodeState.each(&block)
                @@_enumerators.each_value(&block)
            end

            NodeStateInactive = NodeState.new("NodeStateInactive", 0)
            NodeStateElection = NodeState.new("NodeStateElection", 1)
            NodeStateReorganization = NodeState.new("NodeStateReorganization", 2)
            NodeStateNormal = NodeState.new("NodeStateNormal", 3)

            @@_enumerators = {0=>NodeStateInactive, 1=>NodeStateElection, 2=>NodeStateReorganization, 3=>NodeStateNormal}

            def NodeState._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_NodeState = ::Ice::__defineEnum('::IceStormElection::NodeState', NodeState, NodeState::_enumerators)
    end

    if not defined?(::IceStormElection::T_Node)
        T_NodePrx = ::Ice::__declareProxy('::IceStormElection::Node')
    end

    if not defined?(::IceStormElection::NodeInfo)
        class NodeInfo
            include ::Ice::Inspect_mixin
            def initialize(id=0, n=nil)
                @id = id
                @n = n
            end

            def hash
                _h = 0
                _h = 5 * _h + @id.hash
                _h = 5 * _h + @n.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::IceStormElection::NodeInfo or
                    @id != other.id or
                    @n != other.n
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :id, :n
        end

        T_NodeInfo = ::Ice::__defineStruct('::IceStormElection::NodeInfo', NodeInfo, [
            ["id", ::Ice::T_int],
            ["n", ::IceStormElection::T_NodePrx]
        ])
    end

    if not defined?(::IceStormElection::T_NodeInfoSeq)
        T_NodeInfoSeq = ::Ice::__defineSequence('::IceStormElection::NodeInfoSeq', ::IceStormElection::T_NodeInfo)
    end

    if not defined?(::IceStormElection::GroupInfo)
        class GroupInfo
            include ::Ice::Inspect_mixin
            def initialize(id=0, llu=::IceStormElection::LogUpdate.new)
                @id = id
                @llu = llu
            end

            def hash
                _h = 0
                _h = 5 * _h + @id.hash
                _h = 5 * _h + @llu.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::IceStormElection::GroupInfo or
                    @id != other.id or
                    @llu != other.llu
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :id, :llu
        end

        T_GroupInfo = ::Ice::__defineStruct('::IceStormElection::GroupInfo', GroupInfo, [
            ["id", ::Ice::T_int],
            ["llu", ::IceStormElection::T_LogUpdate]
        ])
    end

    if not defined?(::IceStormElection::T_GroupInfoSeq)
        T_GroupInfoSeq = ::Ice::__defineSequence('::IceStormElection::GroupInfoSeq', ::IceStormElection::T_GroupInfo)
    end

    if not defined?(::IceStormElection::QueryInfo)
        class QueryInfo
            include ::Ice::Inspect_mixin
            def initialize(id=0, coord=0, group='', replica=nil, state=::IceStormElection::NodeState::NodeStateInactive, up=nil, max=0)
                @id = id
                @coord = coord
                @group = group
                @replica = replica
                @state = state
                @up = up
                @max = max
            end

            def hash
                _h = 0
                _h = 5 * _h + @id.hash
                _h = 5 * _h + @coord.hash
                _h = 5 * _h + @group.hash
                _h = 5 * _h + @replica.hash
                _h = 5 * _h + @state.hash
                _h = 5 * _h + @up.hash
                _h = 5 * _h + @max.hash
                _h % 0x7fffffff
            end

            def ==(other)
                return false if !other.is_a? ::IceStormElection::QueryInfo or
                    @id != other.id or
                    @coord != other.coord or
                    @group != other.group or
                    @replica != other.replica or
                    @state != other.state or
                    @up != other.up or
                    @max != other.max
                true
            end

            def eql?(other)
                return other.class == self.class && other == self
            end

            attr_accessor :id, :coord, :group, :replica, :state, :up, :max
        end

        T_QueryInfo = ::Ice::__defineStruct('::IceStormElection::QueryInfo', QueryInfo, [
            ["id", ::Ice::T_int],
            ["coord", ::Ice::T_int],
            ["group", ::Ice::T_string],
            ["replica", ::Ice::T_ObjectPrx],
            ["state", ::IceStormElection::T_NodeState],
            ["up", ::IceStormElection::T_GroupInfoSeq],
            ["max", ::Ice::T_int]
        ])
    end

    if not defined?(::IceStormElection::Node_Mixin)

        module ::IceStormElection::Node_Mixin
        end
        module NodePrx_mixin

            def invitation(j, gn, context=nil)
                NodePrx_mixin::OP_invitation.invoke(self, [j, gn], context)
            end

            def ready(j, gn, coordinator, max, generation, context=nil)
                NodePrx_mixin::OP_ready.invoke(self, [j, gn, coordinator, max, generation], context)
            end

            def accept(j, gn, forwardedInvites, observer, llu, max, context=nil)
                NodePrx_mixin::OP_accept.invoke(self, [j, gn, forwardedInvites, observer, llu, max], context)
            end

            def areYouCoordinator(context=nil)
                NodePrx_mixin::OP_areYouCoordinator.invoke(self, [], context)
            end

            def areYouThere(gn, j, context=nil)
                NodePrx_mixin::OP_areYouThere.invoke(self, [gn, j], context)
            end

            def sync(context=nil)
                NodePrx_mixin::OP_sync.invoke(self, [], context)
            end

            def nodes(context=nil)
                NodePrx_mixin::OP_nodes.invoke(self, [], context)
            end

            def query(context=nil)
                NodePrx_mixin::OP_query.invoke(self, [], context)
            end
        end

        class NodePrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include NodePrx_mixin
        end

        if not defined?(::IceStormElection::T_NodePrx)
            T_Node = ::Ice::__declareClass('::IceStormElection::Node')
            T_NodePrx = ::Ice::__declareProxy('::IceStormElection::Node')
        end

        T_NodePrx.defineProxy(NodePrx, nil, [])

        NodePrx_mixin::OP_invitation = ::Ice::__defineOperation('invitation', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_string, false, 0]], [], nil, [])
        NodePrx_mixin::OP_ready = ::Ice::__defineOperation('ready', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_string, false, 0], [::Ice::T_ObjectPrx, false, 0], [::Ice::T_int, false, 0], [::Ice::T_long, false, 0]], [], nil, [])
        NodePrx_mixin::OP_accept = ::Ice::__defineOperation('accept', ::Ice::OperationMode::Normal, ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_int, false, 0], [::Ice::T_string, false, 0], [::Ice::T_IntSeq, false, 0], [::Ice::T_ObjectPrx, false, 0], [::IceStormElection::T_LogUpdate, false, 0], [::Ice::T_int, false, 0]], [], nil, [])
        NodePrx_mixin::OP_areYouCoordinator = ::Ice::__defineOperation('areYouCoordinator', ::Ice::OperationMode::Idempotent, ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_bool, false, 0], [])
        NodePrx_mixin::OP_areYouThere = ::Ice::__defineOperation('areYouThere', ::Ice::OperationMode::Idempotent, ::Ice::OperationMode::Idempotent, false, nil, [[::Ice::T_string, false, 0], [::Ice::T_int, false, 0]], [], [::Ice::T_bool, false, 0], [])
        NodePrx_mixin::OP_sync = ::Ice::__defineOperation('sync', ::Ice::OperationMode::Idempotent, ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_ObjectPrx, false, 0], [])
        NodePrx_mixin::OP_nodes = ::Ice::__defineOperation('nodes', ::Ice::OperationMode::Idempotent, ::Ice::OperationMode::Idempotent, false, nil, [], [], [::IceStormElection::T_NodeInfoSeq, false, 0], [])
        NodePrx_mixin::OP_query = ::Ice::__defineOperation('query', ::Ice::OperationMode::Idempotent, ::Ice::OperationMode::Idempotent, false, nil, [], [], [::IceStormElection::T_QueryInfo, false, 0], [])
    end
end
