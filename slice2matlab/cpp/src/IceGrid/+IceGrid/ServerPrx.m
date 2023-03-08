% ServerPrx   Summary of ServerPrx
%
% ServerPrx Methods:
%   start - Start the server.
%   startAsync - Start the server.
%   stop - Stop the server.
%   stopAsync - Stop the server.
%   checkUpdate - Check if the given server can be loaded on this node.
%   checkUpdateAsync - Check if the given server can be loaded on this node.
%   setEnabled - Enable or disable the server.
%   setEnabledAsync - Enable or disable the server.
%   isEnabled - Check if the server is enabled.
%   isEnabledAsync - Check if the server is enabled.
%   sendSignal - Send signal to the server
%   sendSignalAsync - Send signal to the server
%   writeMessage - Write message on servers' stdout or stderr.
%   writeMessageAsync - Write message on servers' stdout or stderr.
%   getState - Return the server state.
%   getStateAsync - Return the server state.
%   getPid - Get the server pid.
%   getPidAsync - Get the server pid.
%   setProcess - Set the process proxy.
%   setProcessAsync - Set the process proxy.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.9

classdef ServerPrx < IceGrid.FileReaderPrx
    methods
        function start(obj, varargin)
            % start   Start the server.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('start', 0, true, [], false, IceGrid.ServerPrx.start_ex_, varargin{:});
        end
        function r_ = startAsync(obj, varargin)
            % startAsync   Start the server.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('start', 0, true, [], 0, [], IceGrid.ServerPrx.start_ex_, varargin{:});
        end
        function stop(obj, varargin)
            % stop   Stop the server. This methods returns only when the server is
            % deactivated. If the server doesn't stop after a configurable
            % amount of time, it will be killed.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('stop', 0, true, [], false, IceGrid.ServerPrx.stop_ex_, varargin{:});
        end
        function r_ = stopAsync(obj, varargin)
            % stopAsync   Stop the server. This methods returns only when the server is
            % deactivated. If the server doesn't stop after a configurable
            % amount of time, it will be killed.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('stop', 0, true, [], 0, [], IceGrid.ServerPrx.stop_ex_, varargin{:});
        end
        function result = checkUpdate(obj, svr, noRestart, varargin)
            % checkUpdate   Check if the given server can be loaded on this node.
            %
            % Parameters:
            %   svr (IceGrid.InternalServerDescriptor)
            %   noRestart (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical) - True if the server is inactive.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server can't be updated.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeBool(noRestart);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('checkUpdate', 0, true, os_, true, IceGrid.ServerPrx.checkUpdate_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = checkUpdateAsync(obj, svr, noRestart, varargin)
            % checkUpdateAsync   Check if the given server can be loaded on this node.
            %
            % Parameters:
            %   svr (IceGrid.InternalServerDescriptor)
            %   noRestart (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.DeploymentException - Raised if the server can't be updated.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeBool(noRestart);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('checkUpdate', 0, true, os_, 1, @unmarshal, IceGrid.ServerPrx.checkUpdate_ex_, varargin{:});
        end
        function setEnabled(obj, enable, varargin)
            % setEnabled   Enable or disable the server.
            %
            % Parameters:
            %   enable (logical)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setEnabled', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = setEnabledAsync(obj, enable, varargin)
            % setEnabledAsync   Enable or disable the server.
            %
            % Parameters:
            %   enable (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setEnabled', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = isEnabled(obj, varargin)
            % isEnabled   Check if the server is enabled.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical)
            
            is_ = obj.iceInvoke('isEnabled', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = isEnabledAsync(obj, varargin)
            % isEnabledAsync   Check if the server is enabled.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('isEnabled', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function sendSignal(obj, signal, varargin)
            % sendSignal   Send signal to the server
            %
            % Parameters:
            %   signal (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(signal);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendSignal', 0, true, os_, false, IceGrid.ServerPrx.sendSignal_ex_, varargin{:});
        end
        function r_ = sendSignalAsync(obj, signal, varargin)
            % sendSignalAsync   Send signal to the server
            %
            % Parameters:
            %   signal (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(signal);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sendSignal', 0, true, os_, 0, [], IceGrid.ServerPrx.sendSignal_ex_, varargin{:});
        end
        function writeMessage(obj, message, fd, varargin)
            % writeMessage   Write message on servers' stdout or stderr.
            %
            % Parameters:
            %   message (char)
            %   fd (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            os_.writeInt(fd);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('writeMessage', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = writeMessageAsync(obj, message, fd, varargin)
            % writeMessageAsync   Write message on servers' stdout or stderr.
            %
            % Parameters:
            %   message (char)
            %   fd (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            os_.writeInt(fd);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('writeMessage', 0, false, os_, 0, [], {}, varargin{:});
        end
        function result = getState(obj, varargin)
            % getState   Return the server state.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceGrid.ServerState) - The server state.
            %
            % See also IceGrid.ServerState
            
            is_ = obj.iceInvoke('getState', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceGrid.ServerState.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getStateAsync(obj, varargin)
            % getStateAsync   Return the server state.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % See also IceGrid.ServerState
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceGrid.ServerState.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getState', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getPid(obj, varargin)
            % getPid   Get the server pid. Note that the value returned by this method
            % is system dependant. On Unix operating systems, it's the pid
            % value returned by the fork() system call and converted to an
            % integer.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getPid', 1, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getPidAsync(obj, varargin)
            % getPidAsync   Get the server pid. Note that the value returned by this method
            % is system dependant. On Unix operating systems, it's the pid
            % value returned by the fork() system call and converted to an
            % integer.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getPid', 1, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function setProcess(obj, proc, varargin)
            % setProcess   Set the process proxy.
            %
            % Parameters:
            %   proc (Ice.ProcessPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proc);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setProcess', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = setProcessAsync(obj, proc, varargin)
            % setProcessAsync   Set the process proxy.
            %
            % Parameters:
            %   proc (Ice.ProcessPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proc);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setProcess', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::Server';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.ServerPrx');
        end
        function r = checkedCast(p, varargin)
            % checkedCast   Contacts the remote server to verify that the object implements this type.
            %   Raises a local exception if a communication error occurs. You can optionally supply a
            %   facet name and a context map.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %   context - The optional context map to send with the invocation.
            %
            % Returns (IceGrid.ServerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.ServerPrx.ice_staticId(), 'IceGrid.ServerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.ServerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.ServerPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ServerPrx(communicator, encoding, impl, bytes)
            obj = obj@IceGrid.FileReaderPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        start_ex_ = { 'IceGrid.ServerStartException' }
        stop_ex_ = { 'IceGrid.ServerStopException' }
        checkUpdate_ex_ = { 'IceGrid.DeploymentException' }
        sendSignal_ex_ = { 'IceGrid.BadSignalException' }
    end
end
