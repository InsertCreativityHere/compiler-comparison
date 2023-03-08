% MyDerivedClassPrx   Summary of MyDerivedClassPrx
%
% MyDerivedClassPrx Methods:
%   echo
%   echoAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef MyDerivedClassPrx < Test.MyClassPrx
    methods
        function result = echo(obj_, obj, varargin)
            % echo
            %
            % Parameters:
            %   obj (Ice.ObjectPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ObjectPrx)
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            is_ = obj_.iceInvoke('echo', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = echoAsync(obj_, obj, varargin)
            % echoAsync
            %
            % Parameters:
            %   obj (Ice.ObjectPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            obj_.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj_.iceInvokeAsync('echo', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MyDerivedClass';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MyDerivedClassPrx');
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
            % Returns (Test.MyDerivedClassPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyDerivedClassPrx.ice_staticId(), 'Test.MyDerivedClassPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MyDerivedClassPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyDerivedClassPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = MyDerivedClassPrx(communicator, encoding, impl, bytes)
            obj = obj@Test.MyClassPrx(communicator, encoding, impl, bytes);
        end
    end
end
