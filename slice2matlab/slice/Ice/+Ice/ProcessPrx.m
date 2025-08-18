classdef ProcessPrx < Ice.ObjectPrx
    %PROCESSPRX A server application managed by a locator implementation such as IceGrid hosts a Process object and registers a
    %   proxy to this object with the locator registry. See <a href="matlab:help Ice.LocatorRegistryPrx/setServerProcessProxy -displayBanner">setServerProcessProxy</a>.
    %
    %   Creation
    %     Syntax
    %       prx = Ice.ProcessPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ProcessPrx Methods:
    %     shutdown - Initiates a graceful shutdown of the server application.
    %     shutdownAsync - An asynchronous shutdown.
    %     writeMessage - Writes a message on the server application's stdout or stderr.
    %     writeMessageAsync - An asynchronous writeMessage.
    %
    %   ProcessPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Ice::Process.
    %     uncheckedCast - Creates a ProcessPrx from another proxy without any validation.
    %
    %   Generated from Process.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function shutdown(obj, context)
            %SHUTDOWN Initiates a graceful shutdown of the server application.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Ice.ProcessPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 0, false, [], false, {}, context);
        end

        function future = shutdownAsync(obj, context)
            %SHUTDOWNASYNC Initiates a graceful shutdown of the server application.
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also shutdown, Ice.Future.
            
            arguments
                obj (1, 1) Ice.ProcessPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end

        function writeMessage(obj, message, fd, context)
            %WRITEMESSAGE Writes a message on the server application's stdout or stderr.
            %
            %   Input Arguments
            %     message - The message to write.
            %       character vector
            %     fd - 1 for stdout, 2 for stderr.
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Ice.ProcessPrx
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
            %WRITEMESSAGEASYNC Writes a message on the server application's stdout or stderr.
            %
            %   Input Arguments
            %     message - The message to write.
            %       character vector
            %     fd - 1 for stdout, 2 for stderr.
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
                obj (1, 1) Ice.ProcessPrx
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
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Ice::Process';
        end

        function r = ice_read(is)
            r = is.readProxy('Ice.ProcessPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Ice::Process.
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
            %     r - A Ice.ProcessPrx scalar if the target object implements Slice interface 
            %       ::Ice::Process; otherwise, an empty array of Ice.ProcessPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.ProcessPrx.ice_staticId(), 'Ice.ProcessPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Ice.ProcessPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Ice.ProcessPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.ProcessPrx', varargin{:});
        end
    end
end
