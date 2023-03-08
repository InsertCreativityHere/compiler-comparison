% ControllerPrx   Summary of ControllerPrx
%
% ControllerPrx Methods:
%   holdAdapter
%   holdAdapterAsync
%   resumeAdapter
%   resumeAdapterAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef ControllerPrx < Ice.ObjectPrx
    methods
        function holdAdapter(obj, to, varargin)
            % holdAdapter
            %
            % Parameters:
            %   to (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(to);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('holdAdapter', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = holdAdapterAsync(obj, to, varargin)
            % holdAdapterAsync
            %
            % Parameters:
            %   to (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(to);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('holdAdapter', 0, false, os_, 0, [], {}, varargin{:});
        end
        function resumeAdapter(obj, varargin)
            % resumeAdapter
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('resumeAdapter', 0, false, [], false, {}, varargin{:});
        end
        function r_ = resumeAdapterAsync(obj, varargin)
            % resumeAdapterAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('resumeAdapter', 0, false, [], 0, [], {}, varargin{:});
        end
        function shutdown(obj, varargin)
            % shutdown
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Controller';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.ControllerPrx');
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
            % Returns (Test.ControllerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ControllerPrx.ice_staticId(), 'Test.ControllerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.ControllerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ControllerPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ControllerPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
