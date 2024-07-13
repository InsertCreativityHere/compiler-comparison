% MyDerivedClassPrx   Summary of MyDerivedClassPrx
%
% MyDerivedClassPrx Methods:
%   opDerived
%   opDerivedAsync
%   opMyClass1
%   opMyClass1Async
%   opMyStruct1
%   opMyStruct1Async
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyDerivedClassPrx < Test.MyClassPrx
    methods
        function opDerived(obj, varargin)
            % opDerived
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('opDerived', 0, false, [], false, {}, varargin{:});
        end
        function r_ = opDerivedAsync(obj, varargin)
            % opDerivedAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('opDerived', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = opMyClass1(obj, opMyClass1, varargin)
            % opMyClass1
            %
            % Parameters:
            %   opMyClass1 (Test.MyClass1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.MyClass1)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(opMyClass1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyClass1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.MyClass1');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = opMyClass1Async(obj, opMyClass1, varargin)
            % opMyClass1Async
            %
            % Parameters:
            %   opMyClass1 (Test.MyClass1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(opMyClass1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.MyClass1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('opMyClass1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opMyStruct1(obj, opMyStruct1, varargin)
            % opMyStruct1
            %
            % Parameters:
            %   opMyStruct1 (Test.MyStruct1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.MyStruct1)
            
            os_ = obj.iceStartWriteParams([]);
            Test.MyStruct1.ice_write(os_, opMyStruct1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyStruct1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.MyStruct1.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMyStruct1Async(obj, opMyStruct1, varargin)
            % opMyStruct1Async
            %
            % Parameters:
            %   opMyStruct1 (Test.MyStruct1)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.MyStruct1.ice_write(os_, opMyStruct1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.MyStruct1.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opMyStruct1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
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
end
