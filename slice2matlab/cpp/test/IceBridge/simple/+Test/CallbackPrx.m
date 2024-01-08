% CallbackPrx   Summary of CallbackPrx
%
% CallbackPrx Methods:
%   ping
%   pingAsync
%   getCount
%   getCountAsync
%   datagram
%   datagramAsync
%   getDatagramCount
%   getDatagramCountAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef CallbackPrx < Ice.ObjectPrx
    methods
        function ping(obj, varargin)
            % ping
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('ping', 0, false, [], false, {}, varargin{:});
        end
        function r_ = pingAsync(obj, varargin)
            % pingAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('ping', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = getCount(obj, varargin)
            % getCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getCountAsync(obj, varargin)
            % getCountAsync
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
            r_ = obj.iceInvokeAsync('getCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function datagram(obj, varargin)
            % datagram
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('datagram', 0, false, [], false, {}, varargin{:});
        end
        function r_ = datagramAsync(obj, varargin)
            % datagramAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('datagram', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = getDatagramCount(obj, varargin)
            % getDatagramCount
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            is_ = obj.iceInvoke('getDatagramCount', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getDatagramCountAsync(obj, varargin)
            % getDatagramCountAsync
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
            r_ = obj.iceInvokeAsync('getDatagramCount', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Callback';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.CallbackPrx');
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
            % Returns (Test.CallbackPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.CallbackPrx.ice_staticId(), 'Test.CallbackPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.CallbackPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.CallbackPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = CallbackPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
