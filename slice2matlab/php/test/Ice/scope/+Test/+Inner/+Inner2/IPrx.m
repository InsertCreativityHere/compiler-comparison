% IPrx   Summary of IPrx
%
% IPrx Methods:
%   opS
%   opSAsync
%   opSSeq
%   opSSeqAsync
%   opSMap
%   opSMapAsync
%   opC
%   opCAsync
%   opCSeq
%   opCSeqAsync
%   opCMap
%   opCMapAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef IPrx < Ice.ObjectPrx
    methods
        function [result, s2] = opS(obj, s1, varargin)
            % opS
            %
            % Parameters:
            %   s1 (Test.Inner.Inner2.S)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.Inner.Inner2.S)
            %   s2 (Test.Inner.Inner2.S)
            
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.Inner2.S.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.Inner.Inner2.S.ice_read(is_);
            result = Test.Inner.Inner2.S.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSAsync(obj, s1, varargin)
            % opSAsync
            %
            % Parameters:
            %   s1 (Test.Inner.Inner2.S)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.Inner2.S.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.Inner.Inner2.S.ice_read(is_);
                result = Test.Inner.Inner2.S.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opSSeq(obj, s1, varargin)
            % opSSeq
            %
            % Parameters:
            %   s1 (Test.Inner.Inner2.SSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.Inner.Inner2.SSeq)
            %   s2 (Test.Inner.Inner2.SSeq)
            
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.Inner2.SSeq.write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.Inner.Inner2.SSeq.read(is_);
            result = Test.Inner.Inner2.SSeq.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSSeqAsync(obj, s1, varargin)
            % opSSeqAsync
            %
            % Parameters:
            %   s1 (Test.Inner.Inner2.SSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.Inner2.SSeq.write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.Inner.Inner2.SSeq.read(is_);
                result = Test.Inner.Inner2.SSeq.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opSSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opSMap(obj, s1, varargin)
            % opSMap
            %
            % Parameters:
            %   s1 (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   s2 (containers.Map)
            
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.Inner2.SMap.write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSMap', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.Inner.Inner2.SMap.read(is_);
            result = Test.Inner.Inner2.SMap.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSMapAsync(obj, s1, varargin)
            % opSMapAsync
            %
            % Parameters:
            %   s1 (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.Inner2.SMap.write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.Inner.Inner2.SMap.read(is_);
                result = Test.Inner.Inner2.SMap.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opSMap', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, c2] = opC(obj, c1, varargin)
            % opC
            %
            % Parameters:
            %   c1 (Test.Inner.Inner2.C)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.Inner.Inner2.C)
            %   c2 (Test.Inner.Inner2.C)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opC', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            c2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) c2_h_.set(v), 'Test.Inner.Inner2.C');
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Test.Inner.Inner2.C');
            is_.readPendingValues();
            is_.endEncapsulation();
            c2 = c2_h_.value;
            result = result_h_.value;
        end
        function r_ = opCAsync(obj, c1, varargin)
            % opCAsync
            %
            % Parameters:
            %   c1 (Test.Inner.Inner2.C)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                c2 = IceInternal.ValueHolder();
                is_.readValue(@(v) c2.set(v), 'Test.Inner.Inner2.C');
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Test.Inner.Inner2.C');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
                varargout{2} = c2.value;
            end
            r_ = obj.iceInvokeAsync('opC', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, c2] = opCSeq(obj, c1, varargin)
            % opCSeq
            %
            % Parameters:
            %   c1 (Test.Inner.Inner2.CSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.Inner.Inner2.CSeq)
            %   c2 (Test.Inner.Inner2.CSeq)
            
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.Inner2.CSeq.write(os_, c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCSeq', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            c2 = Test.Inner.Inner2.CSeq.read(is_);
            result = Test.Inner.Inner2.CSeq.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            c2 = Test.Inner.Inner2.CSeq.convert(c2);
            result = Test.Inner.Inner2.CSeq.convert(result);
        end
        function r_ = opCSeqAsync(obj, c1, varargin)
            % opCSeqAsync
            %
            % Parameters:
            %   c1 (Test.Inner.Inner2.CSeq)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.Inner2.CSeq.write(os_, c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                c2 = Test.Inner.Inner2.CSeq.read(is_);
                result = Test.Inner.Inner2.CSeq.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.Inner.Inner2.CSeq.convert(result);
                varargout{2} = Test.Inner.Inner2.CSeq.convert(c2);
            end
            r_ = obj.iceInvokeAsync('opCSeq', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, c2] = opCMap(obj, c1, varargin)
            % opCMap
            %
            % Parameters:
            %   c1 (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   c2 (containers.Map)
            
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.Inner2.CMap.write(os_, c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCMap', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            c2 = Test.Inner.Inner2.CMap.read(is_);
            result = Test.Inner.Inner2.CMap.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            c2 = Test.Inner.Inner2.CMap.convert(c2);
            result = Test.Inner.Inner2.CMap.convert(result);
        end
        function r_ = opCMapAsync(obj, c1, varargin)
            % opCMapAsync
            %
            % Parameters:
            %   c1 (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.Inner2.CMap.write(os_, c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                c2 = Test.Inner.Inner2.CMap.read(is_);
                result = Test.Inner.Inner2.CMap.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.Inner.Inner2.CMap.convert(result);
                varargout{2} = Test.Inner.Inner2.CMap.convert(c2);
            end
            r_ = obj.iceInvokeAsync('opCMap', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
            id = '::Test::Inner::Inner2::I';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Inner.Inner2.IPrx');
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
            % Returns (Test.Inner.Inner2.IPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Inner.Inner2.IPrx.ice_staticId(), 'Test.Inner.Inner2.IPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Inner.Inner2.IPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Inner.Inner2.IPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = IPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
