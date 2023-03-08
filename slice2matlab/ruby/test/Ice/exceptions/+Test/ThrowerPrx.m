% ThrowerPrx   Summary of ThrowerPrx
%
% ThrowerPrx Methods:
%   shutdown
%   shutdownAsync
%   supportsUndeclaredExceptions
%   supportsUndeclaredExceptionsAsync
%   supportsAssertException
%   supportsAssertExceptionAsync
%   throwAasA
%   throwAasAAsync
%   throwAorDasAorD
%   throwAorDasAorDAsync
%   throwBasA
%   throwBasAAsync
%   throwCasA
%   throwCasAAsync
%   throwBasB
%   throwBasBAsync
%   throwCasB
%   throwCasBAsync
%   throwCasC
%   throwCasCAsync
%   throwModA
%   throwModAAsync
%   throwUndeclaredA
%   throwUndeclaredAAsync
%   throwUndeclaredB
%   throwUndeclaredBAsync
%   throwUndeclaredC
%   throwUndeclaredCAsync
%   throwLocalException
%   throwLocalExceptionAsync
%   throwNonIceException
%   throwNonIceExceptionAsync
%   throwAssertException
%   throwAssertExceptionAsync
%   throwMemoryLimitException
%   throwMemoryLimitExceptionAsync
%   throwLocalExceptionIdempotent
%   throwLocalExceptionIdempotentAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef ThrowerPrx < Ice.ObjectPrx
    methods
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
        function result = supportsUndeclaredExceptions(obj, varargin)
            % supportsUndeclaredExceptions
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical)
            
            is_ = obj.iceInvoke('supportsUndeclaredExceptions', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = supportsUndeclaredExceptionsAsync(obj, varargin)
            % supportsUndeclaredExceptionsAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('supportsUndeclaredExceptions', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = supportsAssertException(obj, varargin)
            % supportsAssertException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (logical)
            
            is_ = obj.iceInvoke('supportsAssertException', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = supportsAssertExceptionAsync(obj, varargin)
            % supportsAssertExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('supportsAssertException', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function throwAasA(obj, a, varargin)
            % throwAasA
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwAasA', 0, true, os_, false, Test.ThrowerPrx.throwAasA_ex_, varargin{:});
        end
        function r_ = throwAasAAsync(obj, a, varargin)
            % throwAasAAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwAasA', 0, true, os_, 0, [], Test.ThrowerPrx.throwAasA_ex_, varargin{:});
        end
        function throwAorDasAorD(obj, a, varargin)
            % throwAorDasAorD
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwAorDasAorD', 0, true, os_, false, Test.ThrowerPrx.throwAorDasAorD_ex_, varargin{:});
        end
        function r_ = throwAorDasAorDAsync(obj, a, varargin)
            % throwAorDasAorDAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwAorDasAorD', 0, true, os_, 0, [], Test.ThrowerPrx.throwAorDasAorD_ex_, varargin{:});
        end
        function throwBasA(obj, a, b, varargin)
            % throwBasA
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwBasA', 0, true, os_, false, Test.ThrowerPrx.throwBasA_ex_, varargin{:});
        end
        function r_ = throwBasAAsync(obj, a, b, varargin)
            % throwBasAAsync
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwBasA', 0, true, os_, 0, [], Test.ThrowerPrx.throwBasA_ex_, varargin{:});
        end
        function throwCasA(obj, a, b, c, varargin)
            % throwCasA
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   c (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwCasA', 0, true, os_, false, Test.ThrowerPrx.throwCasA_ex_, varargin{:});
        end
        function r_ = throwCasAAsync(obj, a, b, c, varargin)
            % throwCasAAsync
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   c (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwCasA', 0, true, os_, 0, [], Test.ThrowerPrx.throwCasA_ex_, varargin{:});
        end
        function throwBasB(obj, a, b, varargin)
            % throwBasB
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwBasB', 0, true, os_, false, Test.ThrowerPrx.throwBasB_ex_, varargin{:});
        end
        function r_ = throwBasBAsync(obj, a, b, varargin)
            % throwBasBAsync
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwBasB', 0, true, os_, 0, [], Test.ThrowerPrx.throwBasB_ex_, varargin{:});
        end
        function throwCasB(obj, a, b, c, varargin)
            % throwCasB
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   c (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwCasB', 0, true, os_, false, Test.ThrowerPrx.throwCasB_ex_, varargin{:});
        end
        function r_ = throwCasBAsync(obj, a, b, c, varargin)
            % throwCasBAsync
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   c (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwCasB', 0, true, os_, 0, [], Test.ThrowerPrx.throwCasB_ex_, varargin{:});
        end
        function throwCasC(obj, a, b, c, varargin)
            % throwCasC
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   c (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwCasC', 0, true, os_, false, Test.ThrowerPrx.throwCasC_ex_, varargin{:});
        end
        function r_ = throwCasCAsync(obj, a, b, c, varargin)
            % throwCasCAsync
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   c (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwCasC', 0, true, os_, 0, [], Test.ThrowerPrx.throwCasC_ex_, varargin{:});
        end
        function throwModA(obj, a, a2, varargin)
            % throwModA
            %
            % Parameters:
            %   a (int32)
            %   a2 (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(a2);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwModA', 0, true, os_, false, Test.ThrowerPrx.throwModA_ex_, varargin{:});
        end
        function r_ = throwModAAsync(obj, a, a2, varargin)
            % throwModAAsync
            %
            % Parameters:
            %   a (int32)
            %   a2 (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(a2);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwModA', 0, true, os_, 0, [], Test.ThrowerPrx.throwModA_ex_, varargin{:});
        end
        function throwUndeclaredA(obj, a, varargin)
            % throwUndeclaredA
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwUndeclaredA', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = throwUndeclaredAAsync(obj, a, varargin)
            % throwUndeclaredAAsync
            %
            % Parameters:
            %   a (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwUndeclaredA', 0, false, os_, 0, [], {}, varargin{:});
        end
        function throwUndeclaredB(obj, a, b, varargin)
            % throwUndeclaredB
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwUndeclaredB', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = throwUndeclaredBAsync(obj, a, b, varargin)
            % throwUndeclaredBAsync
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwUndeclaredB', 0, false, os_, 0, [], {}, varargin{:});
        end
        function throwUndeclaredC(obj, a, b, c, varargin)
            % throwUndeclaredC
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   c (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwUndeclaredC', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = throwUndeclaredCAsync(obj, a, b, c, varargin)
            % throwUndeclaredCAsync
            %
            % Parameters:
            %   a (int32)
            %   b (int32)
            %   c (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwUndeclaredC', 0, false, os_, 0, [], {}, varargin{:});
        end
        function throwLocalException(obj, varargin)
            % throwLocalException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwLocalException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = throwLocalExceptionAsync(obj, varargin)
            % throwLocalExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwLocalException', 0, false, [], 0, [], {}, varargin{:});
        end
        function throwNonIceException(obj, varargin)
            % throwNonIceException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwNonIceException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = throwNonIceExceptionAsync(obj, varargin)
            % throwNonIceExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwNonIceException', 0, false, [], 0, [], {}, varargin{:});
        end
        function throwAssertException(obj, varargin)
            % throwAssertException
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwAssertException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = throwAssertExceptionAsync(obj, varargin)
            % throwAssertExceptionAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwAssertException', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = throwMemoryLimitException(obj, seq, varargin)
            % throwMemoryLimitException
            %
            % Parameters:
            %   seq (Ice.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.ByteSeq)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('throwMemoryLimitException', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = throwMemoryLimitExceptionAsync(obj, seq, varargin)
            % throwMemoryLimitExceptionAsync
            %
            % Parameters:
            %   seq (Ice.ByteSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('throwMemoryLimitException', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function throwLocalExceptionIdempotent(obj, varargin)
            % throwLocalExceptionIdempotent
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('throwLocalExceptionIdempotent', 2, false, [], false, {}, varargin{:});
        end
        function r_ = throwLocalExceptionIdempotentAsync(obj, varargin)
            % throwLocalExceptionIdempotentAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('throwLocalExceptionIdempotent', 2, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Thrower';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.ThrowerPrx');
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
            % Returns (Test.ThrowerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ThrowerPrx.ice_staticId(), 'Test.ThrowerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.ThrowerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ThrowerPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ThrowerPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        throwAasA_ex_ = { 'Test.A' }
        throwAorDasAorD_ex_ = { 'Test.A', 'Test.D' }
        throwBasA_ex_ = { 'Test.A' }
        throwCasA_ex_ = { 'Test.A' }
        throwBasB_ex_ = { 'Test.B' }
        throwCasB_ex_ = { 'Test.B' }
        throwCasC_ex_ = { 'Test.C' }
        throwModA_ex_ = { 'Test.Mod.A' }
    end
end
