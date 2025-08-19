classdef ServerPrx < IceGrid.FileReaderPrx
    %SERVERPRX
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.ServerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ServerPrx Methods:
    %     checkUpdate - Check if the given server can be loaded on this node.
    %     checkUpdateAsync - An asynchronous checkUpdate.
    %     getPid - Get the server pid.
    %     getPidAsync - An asynchronous getPid.
    %     getState - Return the server state.
    %     getStateAsync - An asynchronous getState.
    %     isEnabled - Check if the server is enabled.
    %     isEnabledAsync - An asynchronous isEnabled.
    %     sendSignal - Send signal to the server
    %     sendSignalAsync - An asynchronous sendSignal.
    %     setEnabled - Enable or disable the server.
    %     setEnabledAsync - An asynchronous setEnabled.
    %     setProcess - Set the process proxy.
    %     setProcessAsync - An asynchronous setProcess.
    %     start - Start the server.
    %     startAsync - An asynchronous start.
    %     stop - Stop the server.
    %     stopAsync - An asynchronous stop.
    %     writeMessage - Write message on servers' stdout or stderr.
    %     writeMessageAsync - An asynchronous writeMessage.
    %
    %   ServerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Server.
    %     uncheckedCast - Creates a ServerPrx from another proxy without any validation.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function start(obj, context)
            %START Start the server.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ServerStartException
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('start', 0, true, [], false, IceGrid.ServerPrx.start_ex_, context);
        end

        function future = startAsync(obj, context)
            %STARTASYNC Start the server.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also start, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('start', 0, true, [], 0, [], IceGrid.ServerPrx.start_ex_, context);
        end

        function stop(obj, context)
            %STOP Stop the server. This method returns only when the server is deactivated. If the server doesn't stop after a
            %   configurable amount of time, it will be killed.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.ServerStopException
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('stop', 0, true, [], false, IceGrid.ServerPrx.stop_ex_, context);
        end

        function future = stopAsync(obj, context)
            %STOPASYNC Stop the server. This method returns only when the server is deactivated. If the server doesn't stop after a
            %   configurable amount of time, it will be killed.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also stop, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('stop', 0, true, [], 0, [], IceGrid.ServerPrx.stop_ex_, context);
        end

        function returnValue = checkUpdate(obj, svr, noRestart, context)
            %CHECKUPDATE Check if the given server can be loaded on this node.
            %
            %   Input Arguments
            %     svr
            %       IceGrid.InternalServerDescriptor scalar | empty array of IceGrid.InternalServerDescriptor
            %     noRestart
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - |true| if the server is inactive.
            %       logical scalar
            %
            %   Exceptions
            %     IceGrid.DeploymentException - Raised if the server can't be updated.
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                svr IceGrid.InternalServerDescriptor {mustBeScalarOrEmpty}
                noRestart (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeBool(noRestart);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('checkUpdate', 0, true, os_, true, IceGrid.ServerPrx.checkUpdate_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = checkUpdateAsync(obj, svr, noRestart, context)
            %CHECKUPDATEASYNC Check if the given server can be loaded on this node.
            %
            %   Input Arguments
            %     svr
            %       IceGrid.InternalServerDescriptor scalar | empty array of IceGrid.InternalServerDescriptor
            %     noRestart
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also checkUpdate, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                svr IceGrid.InternalServerDescriptor {mustBeScalarOrEmpty}
                noRestart (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(svr);
            os_.writeBool(noRestart);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('checkUpdate', 0, true, os_, 1, @unmarshal, IceGrid.ServerPrx.checkUpdate_ex_, context);
        end

        function setEnabled(obj, enable, context)
            %SETENABLED Enable or disable the server.
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setEnabled', 0, false, os_, false, {}, context);
        end

        function future = setEnabledAsync(obj, enable, context)
            %SETENABLEDASYNC Enable or disable the server.
            %
            %   Input Arguments
            %     enable
            %       logical scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setEnabled, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                enable (1, 1) logical
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setEnabled', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = isEnabled(obj, context)
            %ISENABLED Check if the server is enabled.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       logical scalar
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('isEnabled', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readBool();
            is_.endEncapsulation();
        end

        function future = isEnabledAsync(obj, context)
            %ISENABLEDASYNC Check if the server is enabled.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also isEnabled, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('isEnabled', 2, true, [], 1, @unmarshal, {}, context);
        end

        function sendSignal(obj, signal, context)
            %SENDSIGNAL Send signal to the server
            %
            %   Input Arguments
            %     signal
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Exceptions
            %     IceGrid.BadSignalException
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                signal (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(signal);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendSignal', 0, true, os_, false, IceGrid.ServerPrx.sendSignal_ex_, context);
        end

        function future = sendSignalAsync(obj, signal, context)
            %SENDSIGNALASYNC Send signal to the server
            %
            %   Input Arguments
            %     signal
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also sendSignal, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                signal (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(signal);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('sendSignal', 0, true, os_, 0, [], IceGrid.ServerPrx.sendSignal_ex_, context);
        end

        function writeMessage(obj, message, fd, context)
            %WRITEMESSAGE Write message on servers' stdout or stderr.
            %
            %   Input Arguments
            %     message
            %       character vector
            %     fd
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                message (1, :) char
                fd (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            os_.writeInt(fd);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('writeMessage', 0, false, os_, false, {}, context);
        end

        function future = writeMessageAsync(obj, message, fd, context)
            %WRITEMESSAGEASYNC Write message on servers' stdout or stderr.
            %
            %   Input Arguments
            %     message
            %       character vector
            %     fd
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also writeMessage, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                message (1, :) char
                fd (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            os_.writeInt(fd);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('writeMessage', 0, false, os_, 0, [], {}, context);
        end

        function returnValue = getState(obj, context)
            %GETSTATE Return the server state.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The server state.
            %       IceGrid.ServerState scalar
            %
            %   See also IceGrid.ServerState
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getState', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = IceGrid.ServerState.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = getStateAsync(obj, context)
            %GETSTATEASYNC Return the server state.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getState, Ice.Future.
            %
            %   See also IceGrid.ServerState
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceGrid.ServerState.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getState', 2, true, [], 1, @unmarshal, {}, context);
        end

        function returnValue = getPid(obj, context)
            %GETPID Get the server pid. Note that the value returned by this method is system dependant. On Unix operating systems,
            %   it's the pid value returned by the fork() system call and converted to an integer.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getPid', 2, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getPidAsync(obj, context)
            %GETPIDASYNC Get the server pid. Note that the value returned by this method is system dependant. On Unix operating systems,
            %   it's the pid value returned by the fork() system call and converted to an integer.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getPid, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getPid', 2, true, [], 1, @unmarshal, {}, context);
        end

        function setProcess(obj, proc, context)
            %SETPROCESS Set the process proxy.
            %
            %   Input Arguments
            %     proc
            %       Ice.ProcessPrx scalar | empty array of Ice.ProcessPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                proc Ice.ProcessPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proc);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setProcess', 0, false, os_, false, {}, context);
        end

        function future = setProcessAsync(obj, proc, context)
            %SETPROCESSASYNC Set the process proxy.
            %
            %   Input Arguments
            %     proc
            %       Ice.ProcessPrx scalar | empty array of Ice.ProcessPrx
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setProcess, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.ServerPrx
                proc Ice.ProcessPrx {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(proc);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setProcess', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::Server';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.ServerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::Server.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A IceGrid.ServerPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::Server; otherwise, an empty array of IceGrid.ServerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.ServerPrx.ice_staticId(), 'IceGrid.ServerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.ServerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.ServerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.ServerPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        start_ex_ = { 'IceGrid.ServerStartException' }
        stop_ex_ = { 'IceGrid.ServerStopException' }
        checkUpdate_ex_ = { 'IceGrid.DeploymentException' }
        sendSignal_ex_ = { 'IceGrid.BadSignalException' }
    end
end
