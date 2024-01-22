% InitialPrx   Summary of InitialPrx
%
% InitialPrx Methods:
%   getConcreteClass
%   getConcreteClassAsync
%   throwException
%   throwExceptionAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef InitialPrx < Ice.ObjectPrx
    methods
        function result = getConcreteClass(obj, varargin)
            % getConcreteClass
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Test.ConcreteClass)
            
            is_ = obj.iceInvoke('getConcreteClass', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.ConcreteClass');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getConcreteClassAsync(obj, varargin)
            % getConcreteClassAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.ConcreteClass');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getConcreteClass', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function throwException(obj, varargin)
            % throwException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwException', 0, true, [], false, Test.InitialPrx.throwException_ex_, varargin{:});
        end
        function r_ = throwExceptionAsync(obj, varargin)
            % throwExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwException', 0, true, [], 0, [], Test.InitialPrx.throwException_ex_, varargin{:});
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
        throwException_ex_ = { 'Test.E' }
    end
end
