
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function [result, dataOut] = opByteSpan(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opByteSpan', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            dataOut = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opByteSpanAsync(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                dataOut = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = dataOut;
            end
            r_ = obj.iceInvokeAsync('opByteSpan', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, dataOut] = opShortSpan(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opShortSpan', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            dataOut = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opShortSpanAsync(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                dataOut = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = dataOut;
            end
            r_ = obj.iceInvokeAsync('opShortSpan', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, dataOut] = opStringSpan(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStringSpan', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            dataOut = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opStringSpanAsync(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                dataOut = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = dataOut;
            end
            r_ = obj.iceInvokeAsync('opStringSpan', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, dataOut] = opOptionalByteSpan(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptionalByteSpan', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readByteSeqOpt(10);
            dataOut = is_.readByteSeqOpt(11);
            is_.endEncapsulation();
        end
        function r_ = opOptionalByteSpanAsync(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readByteSeqOpt(10);
                dataOut = is_.readByteSeqOpt(11);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = dataOut;
            end
            r_ = obj.iceInvokeAsync('opOptionalByteSpan', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, dataOut] = opOptionalShortSpan(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptionalShortSpan', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readShortSeqOpt(10);
            dataOut = is_.readShortSeqOpt(11);
            is_.endEncapsulation();
        end
        function r_ = opOptionalShortSpanAsync(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readShortSeqOpt(10);
                dataOut = is_.readShortSeqOpt(11);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = dataOut;
            end
            r_ = obj.iceInvokeAsync('opOptionalShortSpan', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, dataOut] = opOptionalStringSpan(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opOptionalStringSpan', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readStringSeqOpt(10);
            dataOut = is_.readStringSeqOpt(11);
            is_.endEncapsulation();
        end
        function r_ = opOptionalStringSpanAsync(obj, dataIn, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeqOpt(1, dataIn);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readStringSeqOpt(10);
                dataOut = is_.readStringSeqOpt(11);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = dataOut;
            end
            r_ = obj.iceInvokeAsync('opOptionalStringSpan', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::TestIntf';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfPrx');
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
            % Returns (Test.TestIntfPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfPrx.ice_staticId(), 'Test.TestIntfPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestIntfPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfPrx', varargin{:});
        end
    end
end
