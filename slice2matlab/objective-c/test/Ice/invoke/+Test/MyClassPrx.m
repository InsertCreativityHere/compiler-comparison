% MyClassPrx   Summary of MyClassPrx
%
% MyClassPrx Methods:
%   opOneway
%   opOnewayAsync
%   opString
%   opStringAsync
%   opException
%   opExceptionAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from InvokeTest.ice by slice2matlab version 3.7.9

classdef MyClassPrx < Ice.ObjectPrx
    methods
        function opOneway(obj, varargin)
            % opOneway
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opOneway', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opOnewayAsync(obj, varargin)
            % opOnewayAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opOneway', 0, false, [], 0, [], {}, varargin{:});
        end
        function [result, s2] = opString(obj, s1, varargin)
            % opString
            %
            % Parameters:
            %   s1 (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (char)
            %   s2 (char)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opString', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = is_.readString();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = opStringAsync(obj, s1, varargin)
            % opStringAsync
            %
            % Parameters:
            %   s1 (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = is_.readString();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opString', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function opException(obj, varargin)
            % opException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opException', 0, true, [], false, Test.MyClassPrx.opException_ex_, varargin{:});
        end
        function r_ = opExceptionAsync(obj, varargin)
            % opExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opException', 0, true, [], 0, [], Test.MyClassPrx.opException_ex_, varargin{:});
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
            id = '::Test::MyClass';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MyClassPrx');
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
            % Returns (Test.MyClassPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyClassPrx.ice_staticId(), 'Test.MyClassPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MyClassPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyClassPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = MyClassPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        opException_ex_ = { 'Test.MyException' }
    end
end
