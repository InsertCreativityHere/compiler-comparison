% TestFacetPrx   Summary of TestFacetPrx
%
% TestFacetPrx Methods:
%   getChanges
%   getChangesAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef TestFacetPrx < Ice.ObjectPrx
    methods
        function result = getChanges(obj, varargin)
            % getChanges
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (containers.Map)
            
            is_ = obj.iceInvoke('getChanges', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.PropertyDict.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getChangesAsync(obj, varargin)
            % getChangesAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.PropertyDict.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getChanges', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::TestFacet';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestFacetPrx');
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
            % Returns (Test.TestFacetPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestFacetPrx.ice_staticId(), 'Test.TestFacetPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestFacetPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestFacetPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TestFacetPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
