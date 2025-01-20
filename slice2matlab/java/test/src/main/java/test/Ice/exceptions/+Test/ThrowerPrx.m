
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef ThrowerPrx < Ice.ObjectPrx
    methods
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = supportsUndeclaredExceptions(obj, varargin)
            is_ = obj.iceInvoke('supportsUndeclaredExceptions', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = supportsUndeclaredExceptionsAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('supportsUndeclaredExceptions', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = supportsAssertException(obj, varargin)
            is_ = obj.iceInvoke('supportsAssertException', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readBool();
            is_.endEncapsulation();
        end
        function r_ = supportsAssertExceptionAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readBool();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('supportsAssertException', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function throwAasA(obj, a, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwAasA', 0, true, os_, false, Test.ThrowerPrx.throwAasA_ex_, varargin{:});
        end
        function r_ = throwAasAAsync(obj, a, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwAasA', 0, true, os_, 0, [], Test.ThrowerPrx.throwAasA_ex_, varargin{:});
        end
        function throwAorDasAorD(obj, a, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwAorDasAorD', 0, true, os_, false, Test.ThrowerPrx.throwAorDasAorD_ex_, varargin{:});
        end
        function r_ = throwAorDasAorDAsync(obj, a, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwAorDasAorD', 0, true, os_, 0, [], Test.ThrowerPrx.throwAorDasAorD_ex_, varargin{:});
        end
        function throwBasA(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwBasA', 0, true, os_, false, Test.ThrowerPrx.throwBasA_ex_, varargin{:});
        end
        function r_ = throwBasAAsync(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwBasA', 0, true, os_, 0, [], Test.ThrowerPrx.throwBasA_ex_, varargin{:});
        end
        function throwCasA(obj, a, b, c, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwCasA', 0, true, os_, false, Test.ThrowerPrx.throwCasA_ex_, varargin{:});
        end
        function r_ = throwCasAAsync(obj, a, b, c, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwCasA', 0, true, os_, 0, [], Test.ThrowerPrx.throwCasA_ex_, varargin{:});
        end
        function throwBasB(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwBasB', 0, true, os_, false, Test.ThrowerPrx.throwBasB_ex_, varargin{:});
        end
        function r_ = throwBasBAsync(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwBasB', 0, true, os_, 0, [], Test.ThrowerPrx.throwBasB_ex_, varargin{:});
        end
        function throwCasB(obj, a, b, c, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwCasB', 0, true, os_, false, Test.ThrowerPrx.throwCasB_ex_, varargin{:});
        end
        function r_ = throwCasBAsync(obj, a, b, c, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwCasB', 0, true, os_, 0, [], Test.ThrowerPrx.throwCasB_ex_, varargin{:});
        end
        function throwCasC(obj, a, b, c, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwCasC', 0, true, os_, false, Test.ThrowerPrx.throwCasC_ex_, varargin{:});
        end
        function r_ = throwCasCAsync(obj, a, b, c, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwCasC', 0, true, os_, 0, [], Test.ThrowerPrx.throwCasC_ex_, varargin{:});
        end
        function throwUndeclaredA(obj, a, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwUndeclaredA', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = throwUndeclaredAAsync(obj, a, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwUndeclaredA', 0, false, os_, 0, [], {}, varargin{:});
        end
        function throwUndeclaredB(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwUndeclaredB', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = throwUndeclaredBAsync(obj, a, b, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwUndeclaredB', 0, false, os_, 0, [], {}, varargin{:});
        end
        function throwUndeclaredC(obj, a, b, c, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwUndeclaredC', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = throwUndeclaredCAsync(obj, a, b, c, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(a);
            os_.writeInt(b);
            os_.writeInt(c);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwUndeclaredC', 0, false, os_, 0, [], {}, varargin{:});
        end
        function throwLocalException(obj, varargin)
            obj.iceInvoke('throwLocalException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = throwLocalExceptionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwLocalException', 0, false, [], 0, [], {}, varargin{:});
        end
        function throwNonIceException(obj, varargin)
            obj.iceInvoke('throwNonIceException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = throwNonIceExceptionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwNonIceException', 0, false, [], 0, [], {}, varargin{:});
        end
        function throwAssertException(obj, varargin)
            obj.iceInvoke('throwAssertException', 0, false, [], false, {}, varargin{:});
        end
        function r_ = throwAssertExceptionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwAssertException', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = throwMemoryLimitException(obj, seq, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('throwMemoryLimitException', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = throwMemoryLimitExceptionAsync(obj, seq, varargin)
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
            obj.iceInvoke('throwLocalExceptionIdempotent', 2, false, [], false, {}, varargin{:});
        end
        function r_ = throwLocalExceptionIdempotentAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwLocalExceptionIdempotent', 2, false, [], 0, [], {}, varargin{:});
        end
        function throwAfterResponse(obj, varargin)
            obj.iceInvoke('throwAfterResponse', 0, false, [], false, {}, varargin{:});
        end
        function r_ = throwAfterResponseAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwAfterResponse', 0, false, [], 0, [], {}, varargin{:});
        end
        function throwAfterException(obj, varargin)
            obj.iceInvoke('throwAfterException', 0, true, [], false, Test.ThrowerPrx.throwAfterException_ex_, varargin{:});
        end
        function r_ = throwAfterExceptionAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('throwAfterException', 0, true, [], 0, [], Test.ThrowerPrx.throwAfterException_ex_, varargin{:});
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
    properties(Constant,Access=private)
        throwAasA_ex_ = { 'Test.A' }
        throwAorDasAorD_ex_ = { 'Test.A', 'Test.D' }
        throwBasA_ex_ = { 'Test.A' }
        throwCasA_ex_ = { 'Test.A' }
        throwBasB_ex_ = { 'Test.B' }
        throwCasB_ex_ = { 'Test.B' }
        throwCasC_ex_ = { 'Test.C' }
        throwAfterException_ex_ = { 'Test.A' }
    end
end
