% InitialPrx   Summary of InitialPrx
%
% InitialPrx Methods:
%   getTest1C2AsC1
%   getTest1C2AsC1Async
%   getTest1C2AsC2
%   getTest1C2AsC2Async
%   throwTest1E2AsE1
%   throwTest1E2AsE1Async
%   throwTest1E2AsE2
%   throwTest1E2AsE2Async
%   throwTest1Def
%   throwTest1DefAsync
%   getTest2C2AsC1
%   getTest2C2AsC1Async
%   getTest2C2AsC2
%   getTest2C2AsC2Async
%   throwTest2E2AsE1
%   throwTest2E2AsE1Async
%   throwTest2E2AsE2
%   throwTest2E2AsE2Async
%   getTest3C2AsC1
%   getTest3C2AsC1Async
%   getTest3C2AsC2
%   getTest3C2AsC2Async
%   throwTest3E2AsE1
%   throwTest3E2AsE1Async
%   throwTest3E2AsE2
%   throwTest3E2AsE2Async
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef InitialPrx < Ice.ObjectPrx
    methods
        function result = getTest1C2AsC1(obj, varargin)
            % getTest1C2AsC1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test1.C1)
            
            is_ = obj.iceInvoke('getTest1C2AsC1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test1.C1');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getTest1C2AsC1Async(obj, varargin)
            % getTest1C2AsC1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test1.C1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getTest1C2AsC1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getTest1C2AsC2(obj, varargin)
            % getTest1C2AsC2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test1.C2)
            
            is_ = obj.iceInvoke('getTest1C2AsC2', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test1.C2');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getTest1C2AsC2Async(obj, varargin)
            % getTest1C2AsC2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test1.C2');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getTest1C2AsC2', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function throwTest1E2AsE1(obj, varargin)
            % throwTest1E2AsE1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwTest1E2AsE1', 0, true, [], false, Test.InitialPrx.throwTest1E2AsE1_ex_, varargin{:});
        end
        function r_ = throwTest1E2AsE1Async(obj, varargin)
            % throwTest1E2AsE1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwTest1E2AsE1', 0, true, [], 0, [], Test.InitialPrx.throwTest1E2AsE1_ex_, varargin{:});
        end
        function throwTest1E2AsE2(obj, varargin)
            % throwTest1E2AsE2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwTest1E2AsE2', 0, true, [], false, Test.InitialPrx.throwTest1E2AsE2_ex_, varargin{:});
        end
        function r_ = throwTest1E2AsE2Async(obj, varargin)
            % throwTest1E2AsE2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwTest1E2AsE2', 0, true, [], 0, [], Test.InitialPrx.throwTest1E2AsE2_ex_, varargin{:});
        end
        function throwTest1Def(obj, varargin)
            % throwTest1Def
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwTest1Def', 0, true, [], false, Test.InitialPrx.throwTest1Def_ex_, varargin{:});
        end
        function r_ = throwTest1DefAsync(obj, varargin)
            % throwTest1DefAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwTest1Def', 0, true, [], 0, [], Test.InitialPrx.throwTest1Def_ex_, varargin{:});
        end
        function result = getTest2C2AsC1(obj, varargin)
            % getTest2C2AsC1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test2.C1)
            
            is_ = obj.iceInvoke('getTest2C2AsC1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test2.C1');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getTest2C2AsC1Async(obj, varargin)
            % getTest2C2AsC1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test2.C1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getTest2C2AsC1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getTest2C2AsC2(obj, varargin)
            % getTest2C2AsC2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test2.C2)
            
            is_ = obj.iceInvoke('getTest2C2AsC2', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test2.C2');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getTest2C2AsC2Async(obj, varargin)
            % getTest2C2AsC2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test2.C2');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getTest2C2AsC2', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function throwTest2E2AsE1(obj, varargin)
            % throwTest2E2AsE1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwTest2E2AsE1', 0, true, [], false, Test.InitialPrx.throwTest2E2AsE1_ex_, varargin{:});
        end
        function r_ = throwTest2E2AsE1Async(obj, varargin)
            % throwTest2E2AsE1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwTest2E2AsE1', 0, true, [], 0, [], Test.InitialPrx.throwTest2E2AsE1_ex_, varargin{:});
        end
        function throwTest2E2AsE2(obj, varargin)
            % throwTest2E2AsE2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwTest2E2AsE2', 0, true, [], false, Test.InitialPrx.throwTest2E2AsE2_ex_, varargin{:});
        end
        function r_ = throwTest2E2AsE2Async(obj, varargin)
            % throwTest2E2AsE2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwTest2E2AsE2', 0, true, [], 0, [], Test.InitialPrx.throwTest2E2AsE2_ex_, varargin{:});
        end
        function result = getTest3C2AsC1(obj, varargin)
            % getTest3C2AsC1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test3.C1)
            
            is_ = obj.iceInvoke('getTest3C2AsC1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test3.C1');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getTest3C2AsC1Async(obj, varargin)
            % getTest3C2AsC1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test3.C1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getTest3C2AsC1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getTest3C2AsC2(obj, varargin)
            % getTest3C2AsC2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test3.C2)
            
            is_ = obj.iceInvoke('getTest3C2AsC2', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test3.C2');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getTest3C2AsC2Async(obj, varargin)
            % getTest3C2AsC2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test3.C2');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getTest3C2AsC2', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function throwTest3E2AsE1(obj, varargin)
            % throwTest3E2AsE1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwTest3E2AsE1', 0, true, [], false, Test.InitialPrx.throwTest3E2AsE1_ex_, varargin{:});
        end
        function r_ = throwTest3E2AsE1Async(obj, varargin)
            % throwTest3E2AsE1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwTest3E2AsE1', 0, true, [], 0, [], Test.InitialPrx.throwTest3E2AsE1_ex_, varargin{:});
        end
        function throwTest3E2AsE2(obj, varargin)
            % throwTest3E2AsE2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwTest3E2AsE2', 0, true, [], false, Test.InitialPrx.throwTest3E2AsE2_ex_, varargin{:});
        end
        function r_ = throwTest3E2AsE2Async(obj, varargin)
            % throwTest3E2AsE2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwTest3E2AsE2', 0, true, [], 0, [], Test.InitialPrx.throwTest3E2AsE2_ex_, varargin{:});
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
            id = '::Test::Initial';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.InitialPrx');
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
            % Returns (Test.InitialPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.InitialPrx.ice_staticId(), 'Test.InitialPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.InitialPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.InitialPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = InitialPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        throwTest1E2AsE1_ex_ = { 'Test1.E1' }
        throwTest1E2AsE2_ex_ = { 'Test1.E2' }
        throwTest1Def_ex_ = { 'Test1.def' }
        throwTest2E2AsE1_ex_ = { 'Test2.E1' }
        throwTest2E2AsE2_ex_ = { 'Test2.E2' }
        throwTest3E2AsE1_ex_ = { 'Test3.E1' }
        throwTest3E2AsE2_ex_ = { 'Test3.E2' }
    end
end
