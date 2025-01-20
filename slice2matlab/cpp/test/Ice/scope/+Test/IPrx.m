
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef IPrx < Ice.ObjectPrx
    methods
        function [result, s2] = opS(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.S.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.S.ice_read(is_);
            result = Test.S.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSAsync(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.S.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.S.ice_read(is_);
                result = Test.S.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opSSeq(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SSeq.write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.SSeq.read(is_);
            result = Test.SSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSSeqAsync(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SSeq.write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.SSeq.read(is_);
                result = Test.SSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opSSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opSMap(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SMap.write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSMap', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.SMap.read(is_);
            result = Test.SMap.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSMapAsync(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.SMap.write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.SMap.read(is_);
                result = Test.SMap.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opSMap', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, c2] = opC(obj, c1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opC', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            c2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) c2_h_.set(v), 'Test.C');
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.C');
            is_.readPendingValues();
            is_.endEncapsulation();
            c2 = c2_h_.value;
            result = result_h_.value;
        end
        function r_ = opCAsync(obj, c1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                c2 = IceInternal.ValueHolder();
                is_.readValue(@(v) c2.set(v), 'Test.C');
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.C');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
                varargout{2} = c2.value;
            end
            r_ = obj.iceInvokeAsync('opC', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opCSeq(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CSeq.write(os_, s1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.CSeq.read(is_);
            result = Test.CSeq.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            s2 = Test.CSeq.convert(s2);
            result = Test.CSeq.convert(result);
        end
        function r_ = opCSeqAsync(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CSeq.write(os_, s1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.CSeq.read(is_);
                result = Test.CSeq.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CSeq.convert(result);
                varargout{2} = Test.CSeq.convert(s2);
            end
            r_ = obj.iceInvokeAsync('opCSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, c2] = opCMap(obj, c1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CMap.write(os_, c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCMap', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            c2 = Test.CMap.read(is_);
            result = Test.CMap.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            c2 = Test.CMap.convert(c2);
            result = Test.CMap.convert(result);
        end
        function r_ = opCMapAsync(obj, c1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.CMap.write(os_, c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                c2 = Test.CMap.read(is_);
                result = Test.CMap.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CMap.convert(result);
                varargout{2} = Test.CMap.convert(c2);
            end
            r_ = obj.iceInvokeAsync('opCMap', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function result = opE1(obj, E1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.E1.ice_write(os_, E1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opE1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.E1.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opE1Async(obj, E1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.E1.ice_write(os_, E1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.E1.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opE1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opS1(obj, S1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.S1.ice_write(os_, S1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opS1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.S1.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opS1Async(obj, S1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.S1.ice_write(os_, S1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.S1.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('opS1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = opC1(obj, C1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(C1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opC1', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.C1');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = opC1Async(obj, C1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(C1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.C1');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('opC1', 0, true, os_, 1, @unmarshal, {}, varargin{:});
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
            id = '::Test::I';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.IPrx');
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
            % Returns (Test.IPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.IPrx.ice_staticId(), 'Test.IPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.IPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.IPrx', varargin{:});
        end
    end
end
