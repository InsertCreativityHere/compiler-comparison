
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyClassPrx < Ice.ObjectPrx
    methods
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function [result, o] = opSerialSmallJava(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSerialSmallJava', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opSerialSmallJavaAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSerialSmallJava', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSerialLargeJava(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSerialLargeJava', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opSerialLargeJavaAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSerialLargeJava', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSerialStructJava(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSerialStructJava', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opSerialStructJavaAsync(obj, i, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readByteSeq();
                result = is_.readByteSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSerialStructJava', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
end
