% ProcessPrx   Summary of ProcessPrx
%
% An administrative interface for process management. Managed servers must implement this interface.
% A servant implementing this interface is a potential target for denial-of-service attacks,
% therefore proper security precautions should be taken. For example, the servant can use a UUID to make its
% identity harder to guess, and be registered in an object adapter with a secured endpoint.
%
% ProcessPrx Methods:
%   shutdown - Initiate a graceful shut-down.
%   shutdownAsync - Initiate a graceful shut-down.
%   writeMessage - Write a message on the process' stdout or stderr.
%   writeMessageAsync - Write a message on the process' stdout or stderr.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Process.ice by slice2matlab version 3.7.10

classdef ProcessPrx < Ice.ObjectPrx
    methods
        function shutdown(obj, varargin)
            % shutdown   Initiate a graceful shut-down.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % See also Communicator.shutdown
            
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync   Initiate a graceful shut-down.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % See also Communicator.shutdown
            
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function writeMessage(obj, message, fd, varargin)
            % writeMessage   Write a message on the process' stdout or stderr.
            %
            % Parameters:
            %   message (char) - The message.
            %   fd (int32) - 1 for stdout, 2 for stderr.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            os_.writeInt(fd);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('writeMessage', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = writeMessageAsync(obj, message, fd, varargin)
            % writeMessageAsync   Write a message on the process' stdout or stderr.
            %
            % Parameters:
            %   message (char) - The message.
            %   fd (int32) - 1 for stdout, 2 for stderr.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            os_.writeInt(fd);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('writeMessage', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Ice::Process';
        end
        function r = ice_read(is)
            r = is.readProxy('Ice.ProcessPrx');
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
            % Returns (Ice.ProcessPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.ProcessPrx.ice_staticId(), 'Ice.ProcessPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Ice.ProcessPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.ProcessPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ProcessPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
