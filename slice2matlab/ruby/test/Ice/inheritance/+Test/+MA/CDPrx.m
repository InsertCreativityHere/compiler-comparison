% CDPrx   Summary of CDPrx
%
% CDPrx Methods:
%   cdop
%   cdopAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef CDPrx < Test.MA.CCPrx & Test.MB.IB1Prx & Test.MB.IB2Prx
    methods
        function result = cdop(obj, p, varargin)
            % cdop
            %
            % Parameters:
            %   p (Test.MA.CDPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.MA.CDPrx)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('cdop', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.MA.CDPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = cdopAsync(obj, p, varargin)
            % cdopAsync
            %
            % Parameters:
            %   p (Test.MA.CDPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.MA.CDPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('cdop', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MA::CD';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MA.CDPrx');
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
            % Returns (Test.MA.CDPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MA.CDPrx.ice_staticId(), 'Test.MA.CDPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MA.CDPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MA.CDPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = CDPrx(communicator, encoding, impl, bytes)
            obj = obj@Test.MA.CCPrx(communicator, encoding, impl, bytes);
            obj = obj@Test.MB.IB1Prx(communicator, encoding, impl, bytes);
            obj = obj@Test.MB.IB2Prx(communicator, encoding, impl, bytes);
        end
    end
end
