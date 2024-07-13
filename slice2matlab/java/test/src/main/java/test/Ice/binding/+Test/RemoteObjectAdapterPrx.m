% RemoteObjectAdapterPrx   Summary of RemoteObjectAdapterPrx
%
% RemoteObjectAdapterPrx Methods:
%   getTestIntf
%   getTestIntfAsync
%   deactivate
%   deactivateAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef RemoteObjectAdapterPrx < Ice.ObjectPrx
    methods
        function result = getTestIntf(obj, varargin)
            % getTestIntf
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.TestIntfPrx)
            
            is_ = obj.iceInvoke('getTestIntf', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.TestIntfPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getTestIntfAsync(obj, varargin)
            % getTestIntfAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.TestIntfPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getTestIntf', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function deactivate(obj, varargin)
            % deactivate
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('deactivate', 0, false, [], false, {}, varargin{:});
        end
        function r_ = deactivateAsync(obj, varargin)
            % deactivateAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('deactivate', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::RemoteObjectAdapter';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.RemoteObjectAdapterPrx');
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
            % Returns (Test.RemoteObjectAdapterPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RemoteObjectAdapterPrx.ice_staticId(), 'Test.RemoteObjectAdapterPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.RemoteObjectAdapterPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RemoteObjectAdapterPrx', varargin{:});
        end
    end
end
