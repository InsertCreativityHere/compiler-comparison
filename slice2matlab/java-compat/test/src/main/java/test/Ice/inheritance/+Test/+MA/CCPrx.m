% CCPrx   Summary of CCPrx
%
% CCPrx Methods:
%   ccop
%   ccopAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef CCPrx < Test.MB.CBPrx
    methods
        function result = ccop(obj, p, varargin)
            % ccop
            %
            % Parameters:
            %   p (Test.MA.CCPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.MA.CCPrx)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('ccop', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.MA.CCPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = ccopAsync(obj, p, varargin)
            % ccopAsync
            %
            % Parameters:
            %   p (Test.MA.CCPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.MA.CCPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('ccop', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MA::CC';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MA.CCPrx');
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
            % Returns (Test.MA.CCPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MA.CCPrx.ice_staticId(), 'Test.MA.CCPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MA.CCPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MA.CCPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = CCPrx(communicator, encoding, impl, bytes)
            obj = obj@Test.MB.CBPrx(communicator, encoding, impl, bytes);
        end
    end
end
