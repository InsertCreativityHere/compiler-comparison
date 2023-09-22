% IB1Prx   Summary of IB1Prx
%
% IB1Prx Methods:
%   ib1op
%   ib1opAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from InheritanceTest.ice by slice2matlab version 3.7.10

classdef IB1Prx < Test.MA.IAPrx
    methods
        function result = ib1op(obj, p, varargin)
            % ib1op
            %
            % Parameters:
            %   p (Test.MB.IB1Prx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.MB.IB1Prx)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('ib1op', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.MB.IB1Prx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = ib1opAsync(obj, p, varargin)
            % ib1opAsync
            %
            % Parameters:
            %   p (Test.MB.IB1Prx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.MB.IB1Prx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('ib1op', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MB::IB1';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MB.IB1Prx');
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
            % Returns (Test.MB.IB1Prx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MB.IB1Prx.ice_staticId(), 'Test.MB.IB1Prx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MB.IB1Prx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MB.IB1Prx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = IB1Prx(communicator, encoding, impl, bytes)
            obj = obj@Test.MA.IAPrx(communicator, encoding, impl, bytes);
        end
    end
end
