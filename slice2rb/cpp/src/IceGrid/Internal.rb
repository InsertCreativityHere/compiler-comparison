# encoding: utf-8
#
# Copyright (c) ZeroC, Inc. All rights reserved.
#
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file `Internal.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>
#

require 'Ice'
require 'Ice/Identity.rb'
require 'Ice/BuiltinSequences.rb'
require 'Ice/Process.rb'
require 'Glacier2/Session.rb'
require 'IceGrid/Admin.rb'
require 'IceGrid/Registry.rb'

module ::IceGrid

    if not defined?(::IceGrid::InternalDbEnvDescriptor_Mixin)

        module ::IceGrid::InternalDbEnvDescriptor_Mixin
        end
        class InternalDbEnvDescriptor < ::Ice::Value

            def initialize(name='', properties=nil)
                @name = name
                @properties = properties
            end

            attr_accessor :name, :properties
        end

        if not defined?(::IceGrid::T_InternalDbEnvDescriptor)
            T_InternalDbEnvDescriptor = ::Ice::__declareClass('::IceGrid::InternalDbEnvDescriptor')
        end

        T_InternalDbEnvDescriptor.defineClass(InternalDbEnvDescriptor, -1, false, nil, [
            ['name', ::Ice::T_string, false, 0],
            ['properties', ::IceGrid::T_PropertyDescriptorSeq, false, 0]
        ])
    end

    if not defined?(::IceGrid::T_InternalDbEnvDescriptorSeq)
        T_InternalDbEnvDescriptorSeq = ::Ice::__defineSequence('::IceGrid::InternalDbEnvDescriptorSeq', ::IceGrid::T_InternalDbEnvDescriptor)
    end

    if not defined?(::IceGrid::InternalAdapterDescriptor_Mixin)

        module ::IceGrid::InternalAdapterDescriptor_Mixin
        end
        class InternalAdapterDescriptor < ::Ice::Value

            def initialize(id='', serverLifetime=false)
                @id = id
                @serverLifetime = serverLifetime
            end

            attr_accessor :id, :serverLifetime
        end

        if not defined?(::IceGrid::T_InternalAdapterDescriptor)
            T_InternalAdapterDescriptor = ::Ice::__declareClass('::IceGrid::InternalAdapterDescriptor')
        end

        T_InternalAdapterDescriptor.defineClass(InternalAdapterDescriptor, -1, false, nil, [
            ['id', ::Ice::T_string, false, 0],
            ['serverLifetime', ::Ice::T_bool, false, 0]
        ])
    end

    if not defined?(::IceGrid::T_InternalAdapterDescriptorSeq)
        T_InternalAdapterDescriptorSeq = ::Ice::__defineSequence('::IceGrid::InternalAdapterDescriptorSeq', ::IceGrid::T_InternalAdapterDescriptor)
    end

    if not defined?(::IceGrid::T_PropertyDescriptorSeqDict)
        T_PropertyDescriptorSeqDict = ::Ice::__defineDictionary('::IceGrid::PropertyDescriptorSeqDict', ::Ice::T_string, ::IceGrid::T_PropertyDescriptorSeq)
    end

    if not defined?(::IceGrid::InternalServerDescriptor_Mixin)

        module ::IceGrid::InternalServerDescriptor_Mixin
        end
        class InternalServerDescriptor < ::Ice::Value

            def initialize(id='', application='', uuid='', revision=0, sessionId='', exe='', pwd='', user='', activation='', activationTimeout='', deactivationTimeout='', processRegistered=false, options=nil, envs=nil, logs=nil, adapters=nil, dbEnvs=nil, properties=nil, services=::Ice::Unset)
                @id = id
                @application = application
                @uuid = uuid
                @revision = revision
                @sessionId = sessionId
                @exe = exe
                @pwd = pwd
                @user = user
                @activation = activation
                @activationTimeout = activationTimeout
                @deactivationTimeout = deactivationTimeout
                @processRegistered = processRegistered
                @options = options
                @envs = envs
                @logs = logs
                @adapters = adapters
                @dbEnvs = dbEnvs
                @properties = properties
                @services = services
            end

            attr_accessor :id, :application, :uuid, :revision, :sessionId, :exe, :pwd, :user, :activation, :activationTimeout, :deactivationTimeout, :processRegistered, :options, :envs, :logs, :adapters, :dbEnvs, :properties, :services
        end

        if not defined?(::IceGrid::T_InternalServerDescriptor)
            T_InternalServerDescriptor = ::Ice::__declareClass('::IceGrid::InternalServerDescriptor')
        end

        T_InternalServerDescriptor.defineClass(InternalServerDescriptor, -1, false, nil, [
            ['id', ::Ice::T_string, false, 0],
            ['application', ::Ice::T_string, false, 0],
            ['uuid', ::Ice::T_string, false, 0],
            ['revision', ::Ice::T_int, false, 0],
            ['sessionId', ::Ice::T_string, false, 0],
            ['exe', ::Ice::T_string, false, 0],
            ['pwd', ::Ice::T_string, false, 0],
            ['user', ::Ice::T_string, false, 0],
            ['activation', ::Ice::T_string, false, 0],
            ['activationTimeout', ::Ice::T_string, false, 0],
            ['deactivationTimeout', ::Ice::T_string, false, 0],
            ['processRegistered', ::Ice::T_bool, false, 0],
            ['options', ::Ice::T_StringSeq, false, 0],
            ['envs', ::Ice::T_StringSeq, false, 0],
            ['logs', ::Ice::T_StringSeq, false, 0],
            ['adapters', ::IceGrid::T_InternalAdapterDescriptorSeq, false, 0],
            ['dbEnvs', ::IceGrid::T_InternalDbEnvDescriptorSeq, false, 0],
            ['properties', ::IceGrid::T_PropertyDescriptorSeqDict, false, 0],
            ['services', ::Ice::T_StringSeq, true, 1]
        ])
    end

    if not defined?(::IceGrid::AdapterActiveException)
        class AdapterActiveException < Ice::UserException
            def initialize
            end

            def to_s
                '::IceGrid::AdapterActiveException'
            end
        end

        T_AdapterActiveException = ::Ice::__defineException('::IceGrid::AdapterActiveException', AdapterActiveException, nil, [])
    end

    if not defined?(::IceGrid::AdapterNotActiveException)
        class AdapterNotActiveException < Ice::UserException
            def initialize(activatable=false)
                @activatable = activatable
            end

            def to_s
                '::IceGrid::AdapterNotActiveException'
            end

            attr_accessor :activatable
        end

        T_AdapterNotActiveException = ::Ice::__defineException('::IceGrid::AdapterNotActiveException', AdapterNotActiveException, nil, [["activatable", ::Ice::T_bool, false, 0]])
    end

    if not defined?(::IceGrid::Adapter_Mixin)

        module ::IceGrid::Adapter_Mixin
        end
        module AdapterPrx_mixin

            def activate(context=nil)
                AdapterPrx_mixin::OP_activate.invoke(self, [], context)
            end

            def getDirectProxy(context=nil)
                AdapterPrx_mixin::OP_getDirectProxy.invoke(self, [], context)
            end

            def setDirectProxy(proxy, context=nil)
                AdapterPrx_mixin::OP_setDirectProxy.invoke(self, [proxy], context)
            end
        end

        class AdapterPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include AdapterPrx_mixin
        end

        if not defined?(::IceGrid::T_AdapterPrx)
            T_Adapter = ::Ice::__declareClass('::IceGrid::Adapter')
            T_AdapterPrx = ::Ice::__declareProxy('::IceGrid::Adapter')
        end

        T_AdapterPrx.defineProxy(AdapterPrx, nil, [])

        AdapterPrx_mixin::OP_activate = ::Ice::__defineOperation('activate', ::Ice::OperationMode::Normal, true, nil, [], [], [::Ice::T_ObjectPrx, false, 0], [])
        AdapterPrx_mixin::OP_getDirectProxy = ::Ice::__defineOperation('getDirectProxy', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_ObjectPrx, false, 0], [::IceGrid::T_AdapterNotActiveException])
        AdapterPrx_mixin::OP_setDirectProxy = ::Ice::__defineOperation('setDirectProxy', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_ObjectPrx, false, 0]], [], nil, [::IceGrid::T_AdapterActiveException])
    end

    if not defined?(::IceGrid::AdapterExistsException)
        class AdapterExistsException < Ice::UserException
            def initialize(id='')
                @id = id
            end

            def to_s
                '::IceGrid::AdapterExistsException'
            end

            attr_accessor :id
        end

        T_AdapterExistsException = ::Ice::__defineException('::IceGrid::AdapterExistsException', AdapterExistsException, nil, [["id", ::Ice::T_string, false, 0]])
    end

    if not defined?(::IceGrid::T_AdapterPrxDict)
        T_AdapterPrxDict = ::Ice::__defineDictionary('::IceGrid::AdapterPrxDict', ::Ice::T_string, ::IceGrid::T_AdapterPrx)
    end

    if not defined?(::IceGrid::FileReader_Mixin)

        module ::IceGrid::FileReader_Mixin
        end
        module FileReaderPrx_mixin

            def getOffsetFromEnd(filename, lines, context=nil)
                FileReaderPrx_mixin::OP_getOffsetFromEnd.invoke(self, [filename, lines], context)
            end

            def read(filename, pos, size, context=nil)
                FileReaderPrx_mixin::OP_read.invoke(self, [filename, pos, size], context)
            end
        end

        class FileReaderPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include FileReaderPrx_mixin
        end

        if not defined?(::IceGrid::T_FileReaderPrx)
            T_FileReader = ::Ice::__declareClass('::IceGrid::FileReader')
            T_FileReaderPrx = ::Ice::__declareProxy('::IceGrid::FileReader')
        end

        T_FileReaderPrx.defineProxy(FileReaderPrx, nil, [])

        FileReaderPrx_mixin::OP_getOffsetFromEnd = ::Ice::__defineOperation('getOffsetFromEnd', ::Ice::OperationMode::Idempotent, false, nil, [[::Ice::T_string, false, 0], [::Ice::T_int, false, 0]], [], [::Ice::T_long, false, 0], [::IceGrid::T_FileNotAvailableException])
        FileReaderPrx_mixin::OP_read = ::Ice::__defineOperation('read', ::Ice::OperationMode::Idempotent, false, nil, [[::Ice::T_string, false, 0], [::Ice::T_long, false, 0], [::Ice::T_int, false, 0]], [[::Ice::T_long, false, 0], [::Ice::T_StringSeq, false, 0]], [::Ice::T_bool, false, 0], [::IceGrid::T_FileNotAvailableException])
    end

    if not defined?(::IceGrid::Server_Mixin)

        module ::IceGrid::Server_Mixin
        end
        module ServerPrx_mixin
            include ::IceGrid::FileReaderPrx_mixin

            def start(context=nil)
                ServerPrx_mixin::OP_start.invoke(self, [], context)
            end

            def stop(context=nil)
                ServerPrx_mixin::OP_stop.invoke(self, [], context)
            end

            def checkUpdate(svr, noRestart, context=nil)
                ServerPrx_mixin::OP_checkUpdate.invoke(self, [svr, noRestart], context)
            end

            def setEnabled(enable, context=nil)
                ServerPrx_mixin::OP_setEnabled.invoke(self, [enable], context)
            end

            def isEnabled(context=nil)
                ServerPrx_mixin::OP_isEnabled.invoke(self, [], context)
            end

            def sendSignal(signal, context=nil)
                ServerPrx_mixin::OP_sendSignal.invoke(self, [signal], context)
            end

            def writeMessage(message, fd, context=nil)
                ServerPrx_mixin::OP_writeMessage.invoke(self, [message, fd], context)
            end

            def getState(context=nil)
                ServerPrx_mixin::OP_getState.invoke(self, [], context)
            end

            def getPid(context=nil)
                ServerPrx_mixin::OP_getPid.invoke(self, [], context)
            end

            def setProcess(proc, context=nil)
                ServerPrx_mixin::OP_setProcess.invoke(self, [proc], context)
            end
        end

        class ServerPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include ServerPrx_mixin
        end

        if not defined?(::IceGrid::T_ServerPrx)
            T_Server = ::Ice::__declareClass('::IceGrid::Server')
            T_ServerPrx = ::Ice::__declareProxy('::IceGrid::Server')
        end

        T_ServerPrx.defineProxy(ServerPrx, nil, [::IceGrid::T_FileReaderPrx])

        ServerPrx_mixin::OP_start = ::Ice::__defineOperation('start', ::Ice::OperationMode::Normal, true, nil, [], [], nil, [::IceGrid::T_ServerStartException])
        ServerPrx_mixin::OP_stop = ::Ice::__defineOperation('stop', ::Ice::OperationMode::Normal, true, nil, [], [], nil, [::IceGrid::T_ServerStopException])
        ServerPrx_mixin::OP_checkUpdate = ::Ice::__defineOperation('checkUpdate', ::Ice::OperationMode::Normal, false, nil, [[::IceGrid::T_InternalServerDescriptor, false, 0], [::Ice::T_bool, false, 0]], [], [::Ice::T_bool, false, 0], [::IceGrid::T_DeploymentException])
        ServerPrx_mixin::OP_setEnabled = ::Ice::__defineOperation('setEnabled', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_bool, false, 0]], [], nil, [])
        ServerPrx_mixin::OP_isEnabled = ::Ice::__defineOperation('isEnabled', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_bool, false, 0], [])
        ServerPrx_mixin::OP_sendSignal = ::Ice::__defineOperation('sendSignal', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0]], [], nil, [::IceGrid::T_BadSignalException])
        ServerPrx_mixin::OP_writeMessage = ::Ice::__defineOperation('writeMessage', ::Ice::OperationMode::Normal, false, nil, [[::Ice::T_string, false, 0], [::Ice::T_int, false, 0]], [], nil, [])
        ServerPrx_mixin::OP_getState = ::Ice::__defineOperation('getState', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::IceGrid::T_ServerState, false, 0], [])
        ServerPrx_mixin::OP_getPid = ::Ice::__defineOperation('getPid', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_int, false, 0], [])
        ServerPrx_mixin::OP_setProcess = ::Ice::__defineOperation('setProcess', ::Ice::OperationMode::Normal, true, nil, [[::Ice::T_ProcessPrx, false, 0]], [], nil, [])
    end

    if not defined?(::IceGrid::T_InternalRegistry)
        T_InternalRegistryPrx = ::Ice::__declareProxy('::IceGrid::InternalRegistry')
    end

    if not defined?(::IceGrid::T_InternalRegistryPrxSeq)
        T_InternalRegistryPrxSeq = ::Ice::__defineSequence('::IceGrid::InternalRegistryPrxSeq', ::IceGrid::T_InternalRegistryPrx)
    end

    if not defined?(::IceGrid::ReplicaObserver_Mixin)

        module ::IceGrid::ReplicaObserver_Mixin
        end
        module ReplicaObserverPrx_mixin

            def replicaInit(replicas, context=nil)
                ReplicaObserverPrx_mixin::OP_replicaInit.invoke(self, [replicas], context)
            end

            def replicaAdded(replica, context=nil)
                ReplicaObserverPrx_mixin::OP_replicaAdded.invoke(self, [replica], context)
            end

            def replicaRemoved(replica, context=nil)
                ReplicaObserverPrx_mixin::OP_replicaRemoved.invoke(self, [replica], context)
            end
        end

        class ReplicaObserverPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include ReplicaObserverPrx_mixin
        end

        if not defined?(::IceGrid::T_ReplicaObserverPrx)
            T_ReplicaObserver = ::Ice::__declareClass('::IceGrid::ReplicaObserver')
            T_ReplicaObserverPrx = ::Ice::__declareProxy('::IceGrid::ReplicaObserver')
        end

        T_ReplicaObserverPrx.defineProxy(ReplicaObserverPrx, nil, [])

        ReplicaObserverPrx_mixin::OP_replicaInit = ::Ice::__defineOperation('replicaInit', ::Ice::OperationMode::Normal, false, nil, [[::IceGrid::T_InternalRegistryPrxSeq, false, 0]], [], nil, [])
        ReplicaObserverPrx_mixin::OP_replicaAdded = ::Ice::__defineOperation('replicaAdded', ::Ice::OperationMode::Normal, false, nil, [[::IceGrid::T_InternalRegistryPrx, false, 0]], [], nil, [])
        ReplicaObserverPrx_mixin::OP_replicaRemoved = ::Ice::__defineOperation('replicaRemoved', ::Ice::OperationMode::Normal, false, nil, [[::IceGrid::T_InternalRegistryPrx, false, 0]], [], nil, [])
    end

    if not defined?(::IceGrid::Node_Mixin)

        module ::IceGrid::Node_Mixin
        end
        module NodePrx_mixin
            include ::IceGrid::FileReaderPrx_mixin
            include ::IceGrid::ReplicaObserverPrx_mixin

            def loadServer(svr, replicaName, context=nil)
                NodePrx_mixin::OP_loadServer.invoke(self, [svr, replicaName], context)
            end

            def loadServerWithoutRestart(svr, replicaName, context=nil)
                NodePrx_mixin::OP_loadServerWithoutRestart.invoke(self, [svr, replicaName], context)
            end

            def destroyServer(name, uuid, revision, replicaName, context=nil)
                NodePrx_mixin::OP_destroyServer.invoke(self, [name, uuid, revision, replicaName], context)
            end

            def destroyServerWithoutRestart(name, uuid, revision, replicaName, context=nil)
                NodePrx_mixin::OP_destroyServerWithoutRestart.invoke(self, [name, uuid, revision, replicaName], context)
            end

            def registerWithReplica(replica, context=nil)
                NodePrx_mixin::OP_registerWithReplica.invoke(self, [replica], context)
            end

            def getName(context=nil)
                NodePrx_mixin::OP_getName.invoke(self, [], context)
            end

            def getHostname(context=nil)
                NodePrx_mixin::OP_getHostname.invoke(self, [], context)
            end

            def getLoad(context=nil)
                NodePrx_mixin::OP_getLoad.invoke(self, [], context)
            end

            def getProcessorSocketCount(context=nil)
                NodePrx_mixin::OP_getProcessorSocketCount.invoke(self, [], context)
            end

            def shutdown(context=nil)
                NodePrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class NodePrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include NodePrx_mixin
        end

        if not defined?(::IceGrid::T_NodePrx)
            T_Node = ::Ice::__declareClass('::IceGrid::Node')
            T_NodePrx = ::Ice::__declareProxy('::IceGrid::Node')
        end

        T_NodePrx.defineProxy(NodePrx, nil, [::IceGrid::T_FileReaderPrx, ::IceGrid::T_ReplicaObserverPrx])

        NodePrx_mixin::OP_loadServer = ::Ice::__defineOperation('loadServer', ::Ice::OperationMode::Idempotent, true, nil, [[::IceGrid::T_InternalServerDescriptor, false, 0], [::Ice::T_string, false, 0]], [[::IceGrid::T_AdapterPrxDict, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [::IceGrid::T_ServerPrx, false, 0], [::IceGrid::T_DeploymentException])
        NodePrx_mixin::OP_loadServerWithoutRestart = ::Ice::__defineOperation('loadServerWithoutRestart', ::Ice::OperationMode::Idempotent, true, nil, [[::IceGrid::T_InternalServerDescriptor, false, 0], [::Ice::T_string, false, 0]], [[::IceGrid::T_AdapterPrxDict, false, 0], [::Ice::T_int, false, 0], [::Ice::T_int, false, 0]], [::IceGrid::T_ServerPrx, false, 0], [::IceGrid::T_DeploymentException])
        NodePrx_mixin::OP_destroyServer = ::Ice::__defineOperation('destroyServer', ::Ice::OperationMode::Idempotent, true, nil, [[::Ice::T_string, false, 0], [::Ice::T_string, false, 0], [::Ice::T_int, false, 0], [::Ice::T_string, false, 0]], [], nil, [::IceGrid::T_DeploymentException])
        NodePrx_mixin::OP_destroyServerWithoutRestart = ::Ice::__defineOperation('destroyServerWithoutRestart', ::Ice::OperationMode::Idempotent, true, nil, [[::Ice::T_string, false, 0], [::Ice::T_string, false, 0], [::Ice::T_int, false, 0], [::Ice::T_string, false, 0]], [], nil, [::IceGrid::T_DeploymentException])
        NodePrx_mixin::OP_registerWithReplica = ::Ice::__defineOperation('registerWithReplica', ::Ice::OperationMode::Normal, false, nil, [[::IceGrid::T_InternalRegistryPrx, false, 0]], [], nil, [])
        NodePrx_mixin::OP_getName = ::Ice::__defineOperation('getName', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_string, false, 0], [])
        NodePrx_mixin::OP_getHostname = ::Ice::__defineOperation('getHostname', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_string, false, 0], [])
        NodePrx_mixin::OP_getLoad = ::Ice::__defineOperation('getLoad', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::IceGrid::T_LoadInfo, false, 0], [])
        NodePrx_mixin::OP_getProcessorSocketCount = ::Ice::__defineOperation('getProcessorSocketCount', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_int, false, 0], [])
        NodePrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Idempotent, false, nil, [], [], nil, [])
    end

    if not defined?(::IceGrid::T_NodePrxSeq)
        T_NodePrxSeq = ::Ice::__defineSequence('::IceGrid::NodePrxSeq', ::IceGrid::T_NodePrx)
    end

    if not defined?(::IceGrid::NodeActiveException)
        class NodeActiveException < Ice::UserException
            def initialize
            end

            def to_s
                '::IceGrid::NodeActiveException'
            end
        end

        T_NodeActiveException = ::Ice::__defineException('::IceGrid::NodeActiveException', NodeActiveException, nil, [])
    end

    if not defined?(::IceGrid::NodeSession_Mixin)

        module ::IceGrid::NodeSession_Mixin
        end
        module NodeSessionPrx_mixin

            def keepAlive(load, context=nil)
                NodeSessionPrx_mixin::OP_keepAlive.invoke(self, [load], context)
            end

            def setReplicaObserver(observer, context=nil)
                NodeSessionPrx_mixin::OP_setReplicaObserver.invoke(self, [observer], context)
            end

            def getTimeout(context=nil)
                NodeSessionPrx_mixin::OP_getTimeout.invoke(self, [], context)
            end

            def getObserver(context=nil)
                NodeSessionPrx_mixin::OP_getObserver.invoke(self, [], context)
            end

            def loadServers(context=nil)
                NodeSessionPrx_mixin::OP_loadServers.invoke(self, [], context)
            end

            def getServers(context=nil)
                NodeSessionPrx_mixin::OP_getServers.invoke(self, [], context)
            end

            def waitForApplicationUpdate(application, revision, context=nil)
                NodeSessionPrx_mixin::OP_waitForApplicationUpdate.invoke(self, [application, revision], context)
            end

            def destroy(context=nil)
                NodeSessionPrx_mixin::OP_destroy.invoke(self, [], context)
            end
        end

        class NodeSessionPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include NodeSessionPrx_mixin
        end

        if not defined?(::IceGrid::T_NodeSessionPrx)
            T_NodeSession = ::Ice::__declareClass('::IceGrid::NodeSession')
            T_NodeSessionPrx = ::Ice::__declareProxy('::IceGrid::NodeSession')
        end

        T_NodeSessionPrx.defineProxy(NodeSessionPrx, nil, [])

        NodeSessionPrx_mixin::OP_keepAlive = ::Ice::__defineOperation('keepAlive', ::Ice::OperationMode::Normal, false, nil, [[::IceGrid::T_LoadInfo, false, 0]], [], nil, [])
        NodeSessionPrx_mixin::OP_setReplicaObserver = ::Ice::__defineOperation('setReplicaObserver', ::Ice::OperationMode::Normal, false, nil, [[::IceGrid::T_ReplicaObserverPrx, false, 0]], [], nil, [])
        NodeSessionPrx_mixin::OP_getTimeout = ::Ice::__defineOperation('getTimeout', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_int, false, 0], [])
        NodeSessionPrx_mixin::OP_getObserver = ::Ice::__defineOperation('getObserver', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::IceGrid::T_NodeObserverPrx, false, 0], [])
        NodeSessionPrx_mixin::OP_loadServers = ::Ice::__defineOperation('loadServers', ::Ice::OperationMode::Idempotent, true, nil, [], [], nil, [])
        NodeSessionPrx_mixin::OP_getServers = ::Ice::__defineOperation('getServers', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_StringSeq, false, 0], [])
        NodeSessionPrx_mixin::OP_waitForApplicationUpdate = ::Ice::__defineOperation('waitForApplicationUpdate', ::Ice::OperationMode::Normal, true, nil, [[::Ice::T_string, false, 0], [::Ice::T_int, false, 0]], [], nil, [])
        NodeSessionPrx_mixin::OP_destroy = ::Ice::__defineOperation('destroy', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end

    if not defined?(::IceGrid::ReplicaActiveException)
        class ReplicaActiveException < Ice::UserException
            def initialize
            end

            def to_s
                '::IceGrid::ReplicaActiveException'
            end
        end

        T_ReplicaActiveException = ::Ice::__defineException('::IceGrid::ReplicaActiveException', ReplicaActiveException, nil, [])
    end

    if not defined?(::IceGrid::TopicName)
        class TopicName
            include Comparable

            def initialize(name, value)
                @name = name
                @value = value
            end

            def TopicName.from_int(val)
                @@_enumerators[val]
            end

            def to_s
                @name
            end

            def to_i
                @value
            end

            def <=>(other)
                other.is_a?(TopicName) or raise ArgumentError, "value must be a TopicName"
                @value <=> other.to_i
            end

            def hash
                @value.hash
            end

            def TopicName.each(&block)
                @@_enumerators.each_value(&block)
            end

            RegistryObserver = TopicName.new("RegistryObserver", 0)
            NodeObserver = TopicName.new("NodeObserver", 1)
            ApplicationObserver = TopicName.new("ApplicationObserver", 2)
            AdapterObserver = TopicName.new("AdapterObserver", 3)
            ObjectObserver = TopicName.new("ObjectObserver", 4)

            @@_enumerators = {0=>RegistryObserver, 1=>NodeObserver, 2=>ApplicationObserver, 3=>AdapterObserver, 4=>ObjectObserver}

            def TopicName._enumerators
                @@_enumerators
            end

            private_class_method :new
        end

        T_TopicName = ::Ice::__defineEnum('::IceGrid::TopicName', TopicName, TopicName::_enumerators)
    end

    if not defined?(::IceGrid::DatabaseObserver_Mixin)

        module ::IceGrid::DatabaseObserver_Mixin
        end
        module DatabaseObserverPrx_mixin
            include ::IceGrid::ApplicationObserverPrx_mixin
            include ::IceGrid::ObjectObserverPrx_mixin
            include ::IceGrid::AdapterObserverPrx_mixin
        end

        class DatabaseObserverPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include DatabaseObserverPrx_mixin
        end

        if not defined?(::IceGrid::T_DatabaseObserverPrx)
            T_DatabaseObserver = ::Ice::__declareClass('::IceGrid::DatabaseObserver')
            T_DatabaseObserverPrx = ::Ice::__declareProxy('::IceGrid::DatabaseObserver')
        end

        T_DatabaseObserverPrx.defineProxy(DatabaseObserverPrx, nil, [::IceGrid::T_ApplicationObserverPrx, ::IceGrid::T_ObjectObserverPrx, ::IceGrid::T_AdapterObserverPrx])
    end

    if not defined?(::IceGrid::T_StringLongDict)
        T_StringLongDict = ::Ice::__defineDictionary('::IceGrid::StringLongDict', ::Ice::T_string, ::Ice::T_long)
    end

    if not defined?(::IceGrid::ReplicaSession_Mixin)

        module ::IceGrid::ReplicaSession_Mixin
        end
        module ReplicaSessionPrx_mixin

            def keepAlive(context=nil)
                ReplicaSessionPrx_mixin::OP_keepAlive.invoke(self, [], context)
            end

            def getTimeout(context=nil)
                ReplicaSessionPrx_mixin::OP_getTimeout.invoke(self, [], context)
            end

            def setDatabaseObserver(dbObs, serials, context=nil)
                ReplicaSessionPrx_mixin::OP_setDatabaseObserver.invoke(self, [dbObs, serials], context)
            end

            def setEndpoints(endpoints, context=nil)
                ReplicaSessionPrx_mixin::OP_setEndpoints.invoke(self, [endpoints], context)
            end

            def registerWellKnownObjects(objects, context=nil)
                ReplicaSessionPrx_mixin::OP_registerWellKnownObjects.invoke(self, [objects], context)
            end

            def setAdapterDirectProxy(adapterId, replicaGroupId, proxy, context=nil)
                ReplicaSessionPrx_mixin::OP_setAdapterDirectProxy.invoke(self, [adapterId, replicaGroupId, proxy], context)
            end

            def receivedUpdate(name, serial, failure, context=nil)
                ReplicaSessionPrx_mixin::OP_receivedUpdate.invoke(self, [name, serial, failure], context)
            end

            def destroy(context=nil)
                ReplicaSessionPrx_mixin::OP_destroy.invoke(self, [], context)
            end
        end

        class ReplicaSessionPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include ReplicaSessionPrx_mixin
        end

        if not defined?(::IceGrid::T_ReplicaSessionPrx)
            T_ReplicaSession = ::Ice::__declareClass('::IceGrid::ReplicaSession')
            T_ReplicaSessionPrx = ::Ice::__declareProxy('::IceGrid::ReplicaSession')
        end

        T_ReplicaSessionPrx.defineProxy(ReplicaSessionPrx, nil, [])

        ReplicaSessionPrx_mixin::OP_keepAlive = ::Ice::__defineOperation('keepAlive', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
        ReplicaSessionPrx_mixin::OP_getTimeout = ::Ice::__defineOperation('getTimeout', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::Ice::T_int, false, 0], [])
        ReplicaSessionPrx_mixin::OP_setDatabaseObserver = ::Ice::__defineOperation('setDatabaseObserver', ::Ice::OperationMode::Idempotent, false, nil, [[::IceGrid::T_DatabaseObserverPrx, false, 0], [::IceGrid::T_StringLongDict, true, 1]], [], nil, [::IceGrid::T_ObserverAlreadyRegisteredException, ::IceGrid::T_DeploymentException])
        ReplicaSessionPrx_mixin::OP_setEndpoints = ::Ice::__defineOperation('setEndpoints', ::Ice::OperationMode::Idempotent, false, nil, [[::IceGrid::T_StringObjectProxyDict, false, 0]], [], nil, [])
        ReplicaSessionPrx_mixin::OP_registerWellKnownObjects = ::Ice::__defineOperation('registerWellKnownObjects', ::Ice::OperationMode::Idempotent, false, nil, [[::IceGrid::T_ObjectInfoSeq, false, 0]], [], nil, [])
        ReplicaSessionPrx_mixin::OP_setAdapterDirectProxy = ::Ice::__defineOperation('setAdapterDirectProxy', ::Ice::OperationMode::Idempotent, false, nil, [[::Ice::T_string, false, 0], [::Ice::T_string, false, 0], [::Ice::T_ObjectPrx, false, 0]], [], nil, [::IceGrid::T_AdapterNotExistException, ::IceGrid::T_AdapterExistsException])
        ReplicaSessionPrx_mixin::OP_receivedUpdate = ::Ice::__defineOperation('receivedUpdate', ::Ice::OperationMode::Normal, false, nil, [[::IceGrid::T_TopicName, false, 0], [::Ice::T_int, false, 0], [::Ice::T_string, false, 0]], [], nil, [])
        ReplicaSessionPrx_mixin::OP_destroy = ::Ice::__defineOperation('destroy', ::Ice::OperationMode::Normal, false, nil, [], [], nil, [])
    end

    if not defined?(::IceGrid::InternalNodeInfo_Mixin)

        module ::IceGrid::InternalNodeInfo_Mixin
        end
        class InternalNodeInfo < ::Ice::Value

            def initialize(name='', os='', hostname='', release='', version='', machine='', nProcessors=0, dataDir='')
                @name = name
                @os = os
                @hostname = hostname
                @release = release
                @version = version
                @machine = machine
                @nProcessors = nProcessors
                @dataDir = dataDir
            end

            attr_accessor :name, :os, :hostname, :release, :version, :machine, :nProcessors, :dataDir
        end

        if not defined?(::IceGrid::T_InternalNodeInfo)
            T_InternalNodeInfo = ::Ice::__declareClass('::IceGrid::InternalNodeInfo')
        end

        T_InternalNodeInfo.defineClass(InternalNodeInfo, -1, false, nil, [
            ['name', ::Ice::T_string, false, 0],
            ['os', ::Ice::T_string, false, 0],
            ['hostname', ::Ice::T_string, false, 0],
            ['release', ::Ice::T_string, false, 0],
            ['version', ::Ice::T_string, false, 0],
            ['machine', ::Ice::T_string, false, 0],
            ['nProcessors', ::Ice::T_int, false, 0],
            ['dataDir', ::Ice::T_string, false, 0]
        ])
    end

    if not defined?(::IceGrid::InternalReplicaInfo_Mixin)

        module ::IceGrid::InternalReplicaInfo_Mixin
        end
        class InternalReplicaInfo < ::Ice::Value

            def initialize(name='', hostname='')
                @name = name
                @hostname = hostname
            end

            attr_accessor :name, :hostname
        end

        if not defined?(::IceGrid::T_InternalReplicaInfo)
            T_InternalReplicaInfo = ::Ice::__declareClass('::IceGrid::InternalReplicaInfo')
        end

        T_InternalReplicaInfo.defineClass(InternalReplicaInfo, -1, false, nil, [
            ['name', ::Ice::T_string, false, 0],
            ['hostname', ::Ice::T_string, false, 0]
        ])
    end

    if not defined?(::IceGrid::InternalRegistry_Mixin)

        module ::IceGrid::InternalRegistry_Mixin
        end
        module InternalRegistryPrx_mixin
            include ::IceGrid::FileReaderPrx_mixin

            def registerNode(info, prx, loadInf, context=nil)
                InternalRegistryPrx_mixin::OP_registerNode.invoke(self, [info, prx, loadInf], context)
            end

            def registerReplica(info, prx, context=nil)
                InternalRegistryPrx_mixin::OP_registerReplica.invoke(self, [info, prx], context)
            end

            def registerWithReplica(prx, context=nil)
                InternalRegistryPrx_mixin::OP_registerWithReplica.invoke(self, [prx], context)
            end

            def getNodes(context=nil)
                InternalRegistryPrx_mixin::OP_getNodes.invoke(self, [], context)
            end

            def getReplicas(context=nil)
                InternalRegistryPrx_mixin::OP_getReplicas.invoke(self, [], context)
            end

            def getApplications(context=nil)
                InternalRegistryPrx_mixin::OP_getApplications.invoke(self, [], context)
            end

            def getAdapters(context=nil)
                InternalRegistryPrx_mixin::OP_getAdapters.invoke(self, [], context)
            end

            def getObjects(context=nil)
                InternalRegistryPrx_mixin::OP_getObjects.invoke(self, [], context)
            end

            def shutdown(context=nil)
                InternalRegistryPrx_mixin::OP_shutdown.invoke(self, [], context)
            end
        end

        class InternalRegistryPrx < ::Ice::ObjectPrx
            include ::Ice::Proxy_mixin
            include InternalRegistryPrx_mixin
        end

        if not defined?(::IceGrid::T_InternalRegistryPrx)
            T_InternalRegistry = ::Ice::__declareClass('::IceGrid::InternalRegistry')
            T_InternalRegistryPrx = ::Ice::__declareProxy('::IceGrid::InternalRegistry')
        end

        T_InternalRegistryPrx.defineProxy(InternalRegistryPrx, nil, [::IceGrid::T_FileReaderPrx])

        InternalRegistryPrx_mixin::OP_registerNode = ::Ice::__defineOperation('registerNode', ::Ice::OperationMode::Normal, false, nil, [[::IceGrid::T_InternalNodeInfo, false, 0], [::IceGrid::T_NodePrx, false, 0], [::IceGrid::T_LoadInfo, false, 0]], [], [::IceGrid::T_NodeSessionPrx, false, 0], [::IceGrid::T_NodeActiveException, ::IceGrid::T_PermissionDeniedException])
        InternalRegistryPrx_mixin::OP_registerReplica = ::Ice::__defineOperation('registerReplica', ::Ice::OperationMode::Normal, false, nil, [[::IceGrid::T_InternalReplicaInfo, false, 0], [::IceGrid::T_InternalRegistryPrx, false, 0]], [], [::IceGrid::T_ReplicaSessionPrx, false, 0], [::IceGrid::T_ReplicaActiveException, ::IceGrid::T_PermissionDeniedException])
        InternalRegistryPrx_mixin::OP_registerWithReplica = ::Ice::__defineOperation('registerWithReplica', ::Ice::OperationMode::Normal, false, nil, [[::IceGrid::T_InternalRegistryPrx, false, 0]], [], nil, [])
        InternalRegistryPrx_mixin::OP_getNodes = ::Ice::__defineOperation('getNodes', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::IceGrid::T_NodePrxSeq, false, 0], [])
        InternalRegistryPrx_mixin::OP_getReplicas = ::Ice::__defineOperation('getReplicas', ::Ice::OperationMode::Idempotent, false, nil, [], [], [::IceGrid::T_InternalRegistryPrxSeq, false, 0], [])
        InternalRegistryPrx_mixin::OP_getApplications = ::Ice::__defineOperation('getApplications', ::Ice::OperationMode::Idempotent, false, nil, [], [[::Ice::T_long, false, 0]], [::IceGrid::T_ApplicationInfoSeq, false, 0], [])
        InternalRegistryPrx_mixin::OP_getAdapters = ::Ice::__defineOperation('getAdapters', ::Ice::OperationMode::Idempotent, false, nil, [], [[::Ice::T_long, false, 0]], [::IceGrid::T_AdapterInfoSeq, false, 0], [])
        InternalRegistryPrx_mixin::OP_getObjects = ::Ice::__defineOperation('getObjects', ::Ice::OperationMode::Idempotent, false, nil, [], [[::Ice::T_long, false, 0]], [::IceGrid::T_ObjectInfoSeq, false, 0], [])
        InternalRegistryPrx_mixin::OP_shutdown = ::Ice::__defineOperation('shutdown', ::Ice::OperationMode::Idempotent, false, nil, [], [], nil, [])
    end
end
