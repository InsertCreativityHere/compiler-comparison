% InitialPrx   Summary of InitialPrx
%
% InitialPrx Methods:
%   getNoNamespaceC2AsC1
%   getNoNamespaceC2AsC1Async
%   getNoNamespaceC2AsC2
%   getNoNamespaceC2AsC2Async
%   throwNoNamespaceE2AsE1
%   throwNoNamespaceE2AsE1Async
%   throwNoNamespaceE2AsE2
%   throwNoNamespaceE2AsE2Async
%   throwNoNamespaceNotify
%   throwNoNamespaceNotifyAsync
%   getWithNamespaceC2AsC1
%   getWithNamespaceC2AsC1Async
%   getWithNamespaceC2AsC2
%   getWithNamespaceC2AsC2Async
%   throwWithNamespaceE2AsE1
%   throwWithNamespaceE2AsE1Async
%   throwWithNamespaceE2AsE2
%   throwWithNamespaceE2AsE2Async
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef InitialPrx < Ice.ObjectPrx
    methods
        function result = getNoNamespaceC2AsC1(obj, varargin)
            % getNoNamespaceC2AsC1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (NoNamespace.C1)
            
            is_ = obj.iceInvoke('getNoNamespaceC2AsC1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'NoNamespace.C1');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getNoNamespaceC2AsC1Async(obj, varargin)
            % getNoNamespaceC2AsC1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'NoNamespace.C1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getNoNamespaceC2AsC1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getNoNamespaceC2AsC2(obj, varargin)
            % getNoNamespaceC2AsC2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (NoNamespace.C2)
            
            is_ = obj.iceInvoke('getNoNamespaceC2AsC2', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'NoNamespace.C2');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getNoNamespaceC2AsC2Async(obj, varargin)
            % getNoNamespaceC2AsC2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'NoNamespace.C2');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getNoNamespaceC2AsC2', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function throwNoNamespaceE2AsE1(obj, varargin)
            % throwNoNamespaceE2AsE1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwNoNamespaceE2AsE1', 0, true, [], false, Test.InitialPrx.throwNoNamespaceE2AsE1_ex_, varargin{:});
        end
        function r_ = throwNoNamespaceE2AsE1Async(obj, varargin)
            % throwNoNamespaceE2AsE1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwNoNamespaceE2AsE1', 0, true, [], 0, [], Test.InitialPrx.throwNoNamespaceE2AsE1_ex_, varargin{:});
        end
        function throwNoNamespaceE2AsE2(obj, varargin)
            % throwNoNamespaceE2AsE2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwNoNamespaceE2AsE2', 0, true, [], false, Test.InitialPrx.throwNoNamespaceE2AsE2_ex_, varargin{:});
        end
        function r_ = throwNoNamespaceE2AsE2Async(obj, varargin)
            % throwNoNamespaceE2AsE2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwNoNamespaceE2AsE2', 0, true, [], 0, [], Test.InitialPrx.throwNoNamespaceE2AsE2_ex_, varargin{:});
        end
        function throwNoNamespaceNotify(obj, varargin)
            % throwNoNamespaceNotify
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwNoNamespaceNotify', 0, true, [], false, Test.InitialPrx.throwNoNamespaceNotify_ex_, varargin{:});
        end
        function r_ = throwNoNamespaceNotifyAsync(obj, varargin)
            % throwNoNamespaceNotifyAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwNoNamespaceNotify', 0, true, [], 0, [], Test.InitialPrx.throwNoNamespaceNotify_ex_, varargin{:});
        end
        function result = getWithNamespaceC2AsC1(obj, varargin)
            % getWithNamespaceC2AsC1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (WithNamespace.C1)
            
            is_ = obj.iceInvoke('getWithNamespaceC2AsC1', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'WithNamespace.C1');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getWithNamespaceC2AsC1Async(obj, varargin)
            % getWithNamespaceC2AsC1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'WithNamespace.C1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getWithNamespaceC2AsC1', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getWithNamespaceC2AsC2(obj, varargin)
            % getWithNamespaceC2AsC2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (WithNamespace.C2)
            
            is_ = obj.iceInvoke('getWithNamespaceC2AsC2', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'WithNamespace.C2');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getWithNamespaceC2AsC2Async(obj, varargin)
            % getWithNamespaceC2AsC2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'WithNamespace.C2');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getWithNamespaceC2AsC2', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function throwWithNamespaceE2AsE1(obj, varargin)
            % throwWithNamespaceE2AsE1
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwWithNamespaceE2AsE1', 0, true, [], false, Test.InitialPrx.throwWithNamespaceE2AsE1_ex_, varargin{:});
        end
        function r_ = throwWithNamespaceE2AsE1Async(obj, varargin)
            % throwWithNamespaceE2AsE1Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwWithNamespaceE2AsE1', 0, true, [], 0, [], Test.InitialPrx.throwWithNamespaceE2AsE1_ex_, varargin{:});
        end
        function throwWithNamespaceE2AsE2(obj, varargin)
            % throwWithNamespaceE2AsE2
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwWithNamespaceE2AsE2', 0, true, [], false, Test.InitialPrx.throwWithNamespaceE2AsE2_ex_, varargin{:});
        end
        function r_ = throwWithNamespaceE2AsE2Async(obj, varargin)
            % throwWithNamespaceE2AsE2Async
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwWithNamespaceE2AsE2', 0, true, [], 0, [], Test.InitialPrx.throwWithNamespaceE2AsE2_ex_, varargin{:});
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
    properties(Constant,Access=private)
        throwNoNamespaceE2AsE1_ex_ = { 'NoNamespace.E1' }
        throwNoNamespaceE2AsE2_ex_ = { 'NoNamespace.E2' }
        throwNoNamespaceNotify_ex_ = { 'NoNamespace.notify' }
        throwWithNamespaceE2AsE1_ex_ = { 'WithNamespace.E1' }
        throwWithNamespaceE2AsE2_ex_ = { 'WithNamespace.E2' }
    end
end
