% MyClassPrx   Summary of MyClassPrx
%
% MyClassPrx Methods:
%   shutdown
%   shutdownAsync
%   opAByteS
%   opAByteSAsync
%   opLByteS
%   opLByteSAsync
%   opKByteS
%   opKByteSAsync
%   opQByteS
%   opQByteSAsync
%   opSByteS
%   opSByteSAsync
%   opABoolS
%   opABoolSAsync
%   opLBoolS
%   opLBoolSAsync
%   opKBoolS
%   opKBoolSAsync
%   opQBoolS
%   opQBoolSAsync
%   opSBoolS
%   opSBoolSAsync
%   opAShortS
%   opAShortSAsync
%   opLShortS
%   opLShortSAsync
%   opKShortS
%   opKShortSAsync
%   opQShortS
%   opQShortSAsync
%   opSShortS
%   opSShortSAsync
%   opAIntS
%   opAIntSAsync
%   opLIntS
%   opLIntSAsync
%   opKIntS
%   opKIntSAsync
%   opQIntS
%   opQIntSAsync
%   opSIntS
%   opSIntSAsync
%   opALongS
%   opALongSAsync
%   opLLongS
%   opLLongSAsync
%   opKLongS
%   opKLongSAsync
%   opQLongS
%   opQLongSAsync
%   opSLongS
%   opSLongSAsync
%   opAFloatS
%   opAFloatSAsync
%   opLFloatS
%   opLFloatSAsync
%   opKFloatS
%   opKFloatSAsync
%   opQFloatS
%   opQFloatSAsync
%   opSFloatS
%   opSFloatSAsync
%   opADoubleS
%   opADoubleSAsync
%   opLDoubleS
%   opLDoubleSAsync
%   opKDoubleS
%   opKDoubleSAsync
%   opQDoubleS
%   opQDoubleSAsync
%   opSDoubleS
%   opSDoubleSAsync
%   opAStringS
%   opAStringSAsync
%   opLStringS
%   opLStringSAsync
%   opKStringS
%   opKStringSAsync
%   opQStringS
%   opQStringSAsync
%   opSStringS
%   opSStringSAsync
%   opAObjectS
%   opAObjectSAsync
%   opLObjectS
%   opLObjectSAsync
%   opAObjectPrxS
%   opAObjectPrxSAsync
%   opLObjectPrxS
%   opLObjectPrxSAsync
%   opKObjectPrxS
%   opKObjectPrxSAsync
%   opQObjectPrxS
%   opQObjectPrxSAsync
%   opSObjectPrxS
%   opSObjectPrxSAsync
%   opAStructS
%   opAStructSAsync
%   opLStructS
%   opLStructSAsync
%   opKStructS
%   opKStructSAsync
%   opQStructS
%   opQStructSAsync
%   opSStructS
%   opSStructSAsync
%   opAStructSD
%   opAStructSDAsync
%   opLStructSD
%   opLStructSDAsync
%   opKStructSD
%   opKStructSDAsync
%   opQStructSD
%   opQStructSDAsync
%   opSStructSD
%   opSStructSDAsync
%   opACVS
%   opACVSAsync
%   opLCVS
%   opLCVSAsync
%   opACRS
%   opACRSAsync
%   opLCRS
%   opLCRSAsync
%   opAEnS
%   opAEnSAsync
%   opLEnS
%   opLEnSAsync
%   opKEnS
%   opKEnSAsync
%   opQEnS
%   opQEnSAsync
%   opSEnS
%   opSEnSAsync
%   opAIPrxS
%   opAIPrxSAsync
%   opLIPrxS
%   opLIPrxSAsync
%   opKIPrxS
%   opKIPrxSAsync
%   opQIPrxS
%   opQIPrxSAsync
%   opSIPrxS
%   opSIPrxSAsync
%   opCustomIntS
%   opCustomIntSAsync
%   opCustomCVS
%   opCustomCVSAsync
%   opCustomIntSS
%   opCustomIntSSAsync
%   opCustomCVSS
%   opCustomCVSSAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyClassPrx < Ice.ObjectPrx
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
        function [result, o] = opAByteS(obj, i, varargin)
            % opAByteS
            %
            % Parameters:
            %   i (Test.AByteS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.AByteS)
            %   o (Test.AByteS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAByteS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opAByteSAsync(obj, i, varargin)
            % opAByteSAsync
            %
            % Parameters:
            %   i (Test.AByteS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opAByteS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLByteS(obj, i, varargin)
            % opLByteS
            %
            % Parameters:
            %   i (Test.LByteS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LByteS)
            %   o (Test.LByteS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLByteS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opLByteSAsync(obj, i, varargin)
            % opLByteSAsync
            %
            % Parameters:
            %   i (Test.LByteS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opLByteS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKByteS(obj, i, varargin)
            % opKByteS
            %
            % Parameters:
            %   i (Test.KByteS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KByteS)
            %   o (Test.KByteS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKByteS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opKByteSAsync(obj, i, varargin)
            % opKByteSAsync
            %
            % Parameters:
            %   i (Test.KByteS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opKByteS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQByteS(obj, i, varargin)
            % opQByteS
            %
            % Parameters:
            %   i (Test.QByteS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QByteS)
            %   o (Test.QByteS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQByteS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opQByteSAsync(obj, i, varargin)
            % opQByteSAsync
            %
            % Parameters:
            %   i (Test.QByteS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opQByteS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSByteS(obj, i, varargin)
            % opSByteS
            %
            % Parameters:
            %   i (Test.SByteS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SByteS)
            %   o (Test.SByteS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSByteS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readByteSeq();
            result = is_.readByteSeq();
            is_.endEncapsulation();
        end
        function r_ = opSByteSAsync(obj, i, varargin)
            % opSByteSAsync
            %
            % Parameters:
            %   i (Test.SByteS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
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
            r_ = obj.iceInvokeAsync('opSByteS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opABoolS(obj, i, varargin)
            % opABoolS
            %
            % Parameters:
            %   i (Test.ABoolS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ABoolS)
            %   o (Test.ABoolS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opABoolS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opABoolSAsync(obj, i, varargin)
            % opABoolSAsync
            %
            % Parameters:
            %   i (Test.ABoolS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opABoolS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLBoolS(obj, i, varargin)
            % opLBoolS
            %
            % Parameters:
            %   i (Test.LBoolS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LBoolS)
            %   o (Test.LBoolS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLBoolS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opLBoolSAsync(obj, i, varargin)
            % opLBoolSAsync
            %
            % Parameters:
            %   i (Test.LBoolS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLBoolS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKBoolS(obj, i, varargin)
            % opKBoolS
            %
            % Parameters:
            %   i (Test.KBoolS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KBoolS)
            %   o (Test.KBoolS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKBoolS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opKBoolSAsync(obj, i, varargin)
            % opKBoolSAsync
            %
            % Parameters:
            %   i (Test.KBoolS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKBoolS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQBoolS(obj, i, varargin)
            % opQBoolS
            %
            % Parameters:
            %   i (Test.QBoolS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QBoolS)
            %   o (Test.QBoolS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQBoolS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opQBoolSAsync(obj, i, varargin)
            % opQBoolSAsync
            %
            % Parameters:
            %   i (Test.QBoolS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQBoolS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSBoolS(obj, i, varargin)
            % opSBoolS
            %
            % Parameters:
            %   i (Test.SBoolS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SBoolS)
            %   o (Test.SBoolS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSBoolS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readBoolSeq();
            result = is_.readBoolSeq();
            is_.endEncapsulation();
        end
        function r_ = opSBoolSAsync(obj, i, varargin)
            % opSBoolSAsync
            %
            % Parameters:
            %   i (Test.SBoolS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBoolSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readBoolSeq();
                result = is_.readBoolSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSBoolS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAShortS(obj, i, varargin)
            % opAShortS
            %
            % Parameters:
            %   i (Test.AShortS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.AShortS)
            %   o (Test.AShortS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAShortS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opAShortSAsync(obj, i, varargin)
            % opAShortSAsync
            %
            % Parameters:
            %   i (Test.AShortS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAShortS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLShortS(obj, i, varargin)
            % opLShortS
            %
            % Parameters:
            %   i (Test.LShortS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LShortS)
            %   o (Test.LShortS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLShortS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opLShortSAsync(obj, i, varargin)
            % opLShortSAsync
            %
            % Parameters:
            %   i (Test.LShortS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLShortS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKShortS(obj, i, varargin)
            % opKShortS
            %
            % Parameters:
            %   i (Test.KShortS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KShortS)
            %   o (Test.KShortS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKShortS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opKShortSAsync(obj, i, varargin)
            % opKShortSAsync
            %
            % Parameters:
            %   i (Test.KShortS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKShortS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQShortS(obj, i, varargin)
            % opQShortS
            %
            % Parameters:
            %   i (Test.QShortS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QShortS)
            %   o (Test.QShortS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQShortS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opQShortSAsync(obj, i, varargin)
            % opQShortSAsync
            %
            % Parameters:
            %   i (Test.QShortS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQShortS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSShortS(obj, i, varargin)
            % opSShortS
            %
            % Parameters:
            %   i (Test.SShortS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SShortS)
            %   o (Test.SShortS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSShortS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readShortSeq();
            result = is_.readShortSeq();
            is_.endEncapsulation();
        end
        function r_ = opSShortSAsync(obj, i, varargin)
            % opSShortSAsync
            %
            % Parameters:
            %   i (Test.SShortS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeShortSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readShortSeq();
                result = is_.readShortSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSShortS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAIntS(obj, i, varargin)
            % opAIntS
            %
            % Parameters:
            %   i (Test.AIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.AIntS)
            %   o (Test.AIntS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opAIntSAsync(obj, i, varargin)
            % opAIntSAsync
            %
            % Parameters:
            %   i (Test.AIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLIntS(obj, i, varargin)
            % opLIntS
            %
            % Parameters:
            %   i (Test.LIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LIntS)
            %   o (Test.LIntS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opLIntSAsync(obj, i, varargin)
            % opLIntSAsync
            %
            % Parameters:
            %   i (Test.LIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKIntS(obj, i, varargin)
            % opKIntS
            %
            % Parameters:
            %   i (Test.KIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KIntS)
            %   o (Test.KIntS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opKIntSAsync(obj, i, varargin)
            % opKIntSAsync
            %
            % Parameters:
            %   i (Test.KIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQIntS(obj, i, varargin)
            % opQIntS
            %
            % Parameters:
            %   i (Test.QIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QIntS)
            %   o (Test.QIntS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opQIntSAsync(obj, i, varargin)
            % opQIntSAsync
            %
            % Parameters:
            %   i (Test.QIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSIntS(obj, i, varargin)
            % opSIntS
            %
            % Parameters:
            %   i (Test.SIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SIntS)
            %   o (Test.SIntS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opSIntSAsync(obj, i, varargin)
            % opSIntSAsync
            %
            % Parameters:
            %   i (Test.SIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opALongS(obj, i, varargin)
            % opALongS
            %
            % Parameters:
            %   i (Test.ALongS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ALongS)
            %   o (Test.ALongS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opALongS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opALongSAsync(obj, i, varargin)
            % opALongSAsync
            %
            % Parameters:
            %   i (Test.ALongS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opALongS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLLongS(obj, i, varargin)
            % opLLongS
            %
            % Parameters:
            %   i (Test.LLongS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LLongS)
            %   o (Test.LLongS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLLongS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opLLongSAsync(obj, i, varargin)
            % opLLongSAsync
            %
            % Parameters:
            %   i (Test.LLongS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLLongS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKLongS(obj, i, varargin)
            % opKLongS
            %
            % Parameters:
            %   i (Test.KLongS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KLongS)
            %   o (Test.KLongS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKLongS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opKLongSAsync(obj, i, varargin)
            % opKLongSAsync
            %
            % Parameters:
            %   i (Test.KLongS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKLongS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQLongS(obj, i, varargin)
            % opQLongS
            %
            % Parameters:
            %   i (Test.QLongS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QLongS)
            %   o (Test.QLongS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQLongS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opQLongSAsync(obj, i, varargin)
            % opQLongSAsync
            %
            % Parameters:
            %   i (Test.QLongS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQLongS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSLongS(obj, i, varargin)
            % opSLongS
            %
            % Parameters:
            %   i (Test.SLongS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SLongS)
            %   o (Test.SLongS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSLongS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readLongSeq();
            result = is_.readLongSeq();
            is_.endEncapsulation();
        end
        function r_ = opSLongSAsync(obj, i, varargin)
            % opSLongSAsync
            %
            % Parameters:
            %   i (Test.SLongS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeLongSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readLongSeq();
                result = is_.readLongSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSLongS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAFloatS(obj, i, varargin)
            % opAFloatS
            %
            % Parameters:
            %   i (Test.AFloatS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.AFloatS)
            %   o (Test.AFloatS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAFloatS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opAFloatSAsync(obj, i, varargin)
            % opAFloatSAsync
            %
            % Parameters:
            %   i (Test.AFloatS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAFloatS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLFloatS(obj, i, varargin)
            % opLFloatS
            %
            % Parameters:
            %   i (Test.LFloatS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LFloatS)
            %   o (Test.LFloatS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLFloatS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opLFloatSAsync(obj, i, varargin)
            % opLFloatSAsync
            %
            % Parameters:
            %   i (Test.LFloatS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLFloatS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKFloatS(obj, i, varargin)
            % opKFloatS
            %
            % Parameters:
            %   i (Test.KFloatS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KFloatS)
            %   o (Test.KFloatS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKFloatS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opKFloatSAsync(obj, i, varargin)
            % opKFloatSAsync
            %
            % Parameters:
            %   i (Test.KFloatS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKFloatS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQFloatS(obj, i, varargin)
            % opQFloatS
            %
            % Parameters:
            %   i (Test.QFloatS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QFloatS)
            %   o (Test.QFloatS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQFloatS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opQFloatSAsync(obj, i, varargin)
            % opQFloatSAsync
            %
            % Parameters:
            %   i (Test.QFloatS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQFloatS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSFloatS(obj, i, varargin)
            % opSFloatS
            %
            % Parameters:
            %   i (Test.SFloatS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SFloatS)
            %   o (Test.SFloatS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSFloatS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readFloatSeq();
            result = is_.readFloatSeq();
            is_.endEncapsulation();
        end
        function r_ = opSFloatSAsync(obj, i, varargin)
            % opSFloatSAsync
            %
            % Parameters:
            %   i (Test.SFloatS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeFloatSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readFloatSeq();
                result = is_.readFloatSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSFloatS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opADoubleS(obj, i, varargin)
            % opADoubleS
            %
            % Parameters:
            %   i (Test.ADoubleS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ADoubleS)
            %   o (Test.ADoubleS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opADoubleS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opADoubleSAsync(obj, i, varargin)
            % opADoubleSAsync
            %
            % Parameters:
            %   i (Test.ADoubleS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opADoubleS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLDoubleS(obj, i, varargin)
            % opLDoubleS
            %
            % Parameters:
            %   i (Test.LDoubleS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LDoubleS)
            %   o (Test.LDoubleS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLDoubleS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opLDoubleSAsync(obj, i, varargin)
            % opLDoubleSAsync
            %
            % Parameters:
            %   i (Test.LDoubleS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLDoubleS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKDoubleS(obj, i, varargin)
            % opKDoubleS
            %
            % Parameters:
            %   i (Test.KDoubleS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KDoubleS)
            %   o (Test.KDoubleS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKDoubleS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opKDoubleSAsync(obj, i, varargin)
            % opKDoubleSAsync
            %
            % Parameters:
            %   i (Test.KDoubleS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKDoubleS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQDoubleS(obj, i, varargin)
            % opQDoubleS
            %
            % Parameters:
            %   i (Test.QDoubleS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QDoubleS)
            %   o (Test.QDoubleS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQDoubleS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opQDoubleSAsync(obj, i, varargin)
            % opQDoubleSAsync
            %
            % Parameters:
            %   i (Test.QDoubleS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQDoubleS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSDoubleS(obj, i, varargin)
            % opSDoubleS
            %
            % Parameters:
            %   i (Test.SDoubleS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SDoubleS)
            %   o (Test.SDoubleS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSDoubleS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readDoubleSeq();
            result = is_.readDoubleSeq();
            is_.endEncapsulation();
        end
        function r_ = opSDoubleSAsync(obj, i, varargin)
            % opSDoubleSAsync
            %
            % Parameters:
            %   i (Test.SDoubleS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeDoubleSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readDoubleSeq();
                result = is_.readDoubleSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSDoubleS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAStringS(obj, i, varargin)
            % opAStringS
            %
            % Parameters:
            %   i (Test.AStringS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.AStringS)
            %   o (Test.AStringS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAStringS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opAStringSAsync(obj, i, varargin)
            % opAStringSAsync
            %
            % Parameters:
            %   i (Test.AStringS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAStringS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLStringS(obj, i, varargin)
            % opLStringS
            %
            % Parameters:
            %   i (Test.LStringS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LStringS)
            %   o (Test.LStringS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLStringS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opLStringSAsync(obj, i, varargin)
            % opLStringSAsync
            %
            % Parameters:
            %   i (Test.LStringS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLStringS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKStringS(obj, i, varargin)
            % opKStringS
            %
            % Parameters:
            %   i (Test.KStringS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KStringS)
            %   o (Test.KStringS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKStringS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opKStringSAsync(obj, i, varargin)
            % opKStringSAsync
            %
            % Parameters:
            %   i (Test.KStringS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKStringS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQStringS(obj, i, varargin)
            % opQStringS
            %
            % Parameters:
            %   i (Test.QStringS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QStringS)
            %   o (Test.QStringS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQStringS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opQStringSAsync(obj, i, varargin)
            % opQStringSAsync
            %
            % Parameters:
            %   i (Test.QStringS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQStringS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSStringS(obj, i, varargin)
            % opSStringS
            %
            % Parameters:
            %   i (Test.SStringS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SStringS)
            %   o (Test.SStringS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSStringS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readStringSeq();
            result = is_.readStringSeq();
            is_.endEncapsulation();
        end
        function r_ = opSStringSAsync(obj, i, varargin)
            % opSStringSAsync
            %
            % Parameters:
            %   i (Test.SStringS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeStringSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readStringSeq();
                result = is_.readStringSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSStringS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAObjectS(obj, i, varargin)
            % opAObjectS
            %
            % Parameters:
            %   i (Test.AObjectS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.AObjectS)
            %   o (Test.AObjectS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAObjectS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AObjectS.read(is_);
            result = Test.AObjectS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.AObjectS.convert(o);
            result = Test.AObjectS.convert(result);
        end
        function r_ = opAObjectSAsync(obj, i, varargin)
            % opAObjectSAsync
            %
            % Parameters:
            %   i (Test.AObjectS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AObjectS.read(is_);
                result = Test.AObjectS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.AObjectS.convert(result);
                varargout{2} = Test.AObjectS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opAObjectS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLObjectS(obj, i, varargin)
            % opLObjectS
            %
            % Parameters:
            %   i (Test.LObjectS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LObjectS)
            %   o (Test.LObjectS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLObjectS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LObjectS.read(is_);
            result = Test.LObjectS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.LObjectS.convert(o);
            result = Test.LObjectS.convert(result);
        end
        function r_ = opLObjectSAsync(obj, i, varargin)
            % opLObjectSAsync
            %
            % Parameters:
            %   i (Test.LObjectS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LObjectS.read(is_);
                result = Test.LObjectS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.LObjectS.convert(result);
                varargout{2} = Test.LObjectS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opLObjectS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAObjectPrxS(obj, i, varargin)
            % opAObjectPrxS
            %
            % Parameters:
            %   i (Test.AObjectPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.AObjectPrxS)
            %   o (Test.AObjectPrxS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAObjectPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AObjectPrxS.read(is_);
            result = Test.AObjectPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAObjectPrxSAsync(obj, i, varargin)
            % opAObjectPrxSAsync
            %
            % Parameters:
            %   i (Test.AObjectPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.AObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AObjectPrxS.read(is_);
                result = Test.AObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAObjectPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLObjectPrxS(obj, i, varargin)
            % opLObjectPrxS
            %
            % Parameters:
            %   i (Test.LObjectPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LObjectPrxS)
            %   o (Test.LObjectPrxS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLObjectPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LObjectPrxS.read(is_);
            result = Test.LObjectPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLObjectPrxSAsync(obj, i, varargin)
            % opLObjectPrxSAsync
            %
            % Parameters:
            %   i (Test.LObjectPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.LObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LObjectPrxS.read(is_);
                result = Test.LObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLObjectPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKObjectPrxS(obj, i, varargin)
            % opKObjectPrxS
            %
            % Parameters:
            %   i (Test.KObjectPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KObjectPrxS)
            %   o (Test.KObjectPrxS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.KObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKObjectPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.KObjectPrxS.read(is_);
            result = Test.KObjectPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opKObjectPrxSAsync(obj, i, varargin)
            % opKObjectPrxSAsync
            %
            % Parameters:
            %   i (Test.KObjectPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.KObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KObjectPrxS.read(is_);
                result = Test.KObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKObjectPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQObjectPrxS(obj, i, varargin)
            % opQObjectPrxS
            %
            % Parameters:
            %   i (Test.QObjectPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QObjectPrxS)
            %   o (Test.QObjectPrxS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.QObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQObjectPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.QObjectPrxS.read(is_);
            result = Test.QObjectPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opQObjectPrxSAsync(obj, i, varargin)
            % opQObjectPrxSAsync
            %
            % Parameters:
            %   i (Test.QObjectPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.QObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QObjectPrxS.read(is_);
                result = Test.QObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQObjectPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSObjectPrxS(obj, i, varargin)
            % opSObjectPrxS
            %
            % Parameters:
            %   i (Test.SObjectPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SObjectPrxS)
            %   o (Test.SObjectPrxS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.SObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSObjectPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.SObjectPrxS.read(is_);
            result = Test.SObjectPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSObjectPrxSAsync(obj, i, varargin)
            % opSObjectPrxSAsync
            %
            % Parameters:
            %   i (Test.SObjectPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.SObjectPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SObjectPrxS.read(is_);
                result = Test.SObjectPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSObjectPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAStructS(obj, i, varargin)
            % opAStructS
            %
            % Parameters:
            %   i (Test.AStructS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.AStructS)
            %   o (Test.AStructS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.AStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAStructS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AStructS.read(is_);
            result = Test.AStructS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAStructSAsync(obj, i, varargin)
            % opAStructSAsync
            %
            % Parameters:
            %   i (Test.AStructS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.AStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AStructS.read(is_);
                result = Test.AStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAStructS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLStructS(obj, i, varargin)
            % opLStructS
            %
            % Parameters:
            %   i (Test.LStructS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LStructS)
            %   o (Test.LStructS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.LStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLStructS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LStructS.read(is_);
            result = Test.LStructS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLStructSAsync(obj, i, varargin)
            % opLStructSAsync
            %
            % Parameters:
            %   i (Test.LStructS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.LStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LStructS.read(is_);
                result = Test.LStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLStructS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKStructS(obj, i, varargin)
            % opKStructS
            %
            % Parameters:
            %   i (Test.KStructS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KStructS)
            %   o (Test.KStructS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.KStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKStructS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.KStructS.read(is_);
            result = Test.KStructS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opKStructSAsync(obj, i, varargin)
            % opKStructSAsync
            %
            % Parameters:
            %   i (Test.KStructS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.KStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KStructS.read(is_);
                result = Test.KStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKStructS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQStructS(obj, i, varargin)
            % opQStructS
            %
            % Parameters:
            %   i (Test.QStructS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QStructS)
            %   o (Test.QStructS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.QStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQStructS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.QStructS.read(is_);
            result = Test.QStructS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opQStructSAsync(obj, i, varargin)
            % opQStructSAsync
            %
            % Parameters:
            %   i (Test.QStructS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.QStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QStructS.read(is_);
                result = Test.QStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQStructS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSStructS(obj, i, varargin)
            % opSStructS
            %
            % Parameters:
            %   i (Test.SStructS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SStructS)
            %   o (Test.SStructS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.SStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSStructS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.SStructS.read(is_);
            result = Test.SStructS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSStructSAsync(obj, i, varargin)
            % opSStructSAsync
            %
            % Parameters:
            %   i (Test.SStructS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.SStructS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SStructS.read(is_);
                result = Test.SStructS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSStructS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAStructSD(obj, i, varargin)
            % opAStructSD
            %
            % Parameters:
            %   i (Test.AStructSD)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.AStructSD)
            %   o (Test.AStructSD)
            
            os_ = obj.iceStartWriteParams([]);
            Test.AStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAStructSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AStructSD.read(is_);
            result = Test.AStructSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAStructSDAsync(obj, i, varargin)
            % opAStructSDAsync
            %
            % Parameters:
            %   i (Test.AStructSD)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.AStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AStructSD.read(is_);
                result = Test.AStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAStructSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLStructSD(obj, i, varargin)
            % opLStructSD
            %
            % Parameters:
            %   i (Test.LStructSD)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LStructSD)
            %   o (Test.LStructSD)
            
            os_ = obj.iceStartWriteParams([]);
            Test.LStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLStructSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LStructSD.read(is_);
            result = Test.LStructSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLStructSDAsync(obj, i, varargin)
            % opLStructSDAsync
            %
            % Parameters:
            %   i (Test.LStructSD)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.LStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LStructSD.read(is_);
                result = Test.LStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLStructSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKStructSD(obj, i, varargin)
            % opKStructSD
            %
            % Parameters:
            %   i (Test.KStructSD)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KStructSD)
            %   o (Test.KStructSD)
            
            os_ = obj.iceStartWriteParams([]);
            Test.KStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKStructSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.KStructSD.read(is_);
            result = Test.KStructSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opKStructSDAsync(obj, i, varargin)
            % opKStructSDAsync
            %
            % Parameters:
            %   i (Test.KStructSD)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.KStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KStructSD.read(is_);
                result = Test.KStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKStructSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQStructSD(obj, i, varargin)
            % opQStructSD
            %
            % Parameters:
            %   i (Test.QStructSD)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QStructSD)
            %   o (Test.QStructSD)
            
            os_ = obj.iceStartWriteParams([]);
            Test.QStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQStructSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.QStructSD.read(is_);
            result = Test.QStructSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opQStructSDAsync(obj, i, varargin)
            % opQStructSDAsync
            %
            % Parameters:
            %   i (Test.QStructSD)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.QStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QStructSD.read(is_);
                result = Test.QStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQStructSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSStructSD(obj, i, varargin)
            % opSStructSD
            %
            % Parameters:
            %   i (Test.SStructSD)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SStructSD)
            %   o (Test.SStructSD)
            
            os_ = obj.iceStartWriteParams([]);
            Test.SStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSStructSD', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.SStructSD.read(is_);
            result = Test.SStructSD.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSStructSDAsync(obj, i, varargin)
            % opSStructSDAsync
            %
            % Parameters:
            %   i (Test.SStructSD)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.SStructSD.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SStructSD.read(is_);
                result = Test.SStructSD.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSStructSD', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opACVS(obj, i, varargin)
            % opACVS
            %
            % Parameters:
            %   i (Test.ACVS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ACVS)
            %   o (Test.ACVS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.ACVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opACVS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.ACVS.read(is_);
            result = Test.ACVS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.ACVS.convert(o);
            result = Test.ACVS.convert(result);
        end
        function r_ = opACVSAsync(obj, i, varargin)
            % opACVSAsync
            %
            % Parameters:
            %   i (Test.ACVS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.ACVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.ACVS.read(is_);
                result = Test.ACVS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.ACVS.convert(result);
                varargout{2} = Test.ACVS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opACVS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLCVS(obj, i, varargin)
            % opLCVS
            %
            % Parameters:
            %   i (Test.LCVS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LCVS)
            %   o (Test.LCVS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.LCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLCVS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LCVS.read(is_);
            result = Test.LCVS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.LCVS.convert(o);
            result = Test.LCVS.convert(result);
        end
        function r_ = opLCVSAsync(obj, i, varargin)
            % opLCVSAsync
            %
            % Parameters:
            %   i (Test.LCVS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.LCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LCVS.read(is_);
                result = Test.LCVS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.LCVS.convert(result);
                varargout{2} = Test.LCVS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opLCVS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opACRS(obj, i, varargin)
            % opACRS
            %
            % Parameters:
            %   i (Test.ACRS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.ACRS)
            %   o (Test.ACRS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.ACRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opACRS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.ACRS.read(is_);
            result = Test.ACRS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.ACRS.convert(o);
            result = Test.ACRS.convert(result);
        end
        function r_ = opACRSAsync(obj, i, varargin)
            % opACRSAsync
            %
            % Parameters:
            %   i (Test.ACRS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.ACRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.ACRS.read(is_);
                result = Test.ACRS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.ACRS.convert(result);
                varargout{2} = Test.ACRS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opACRS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLCRS(obj, i, varargin)
            % opLCRS
            %
            % Parameters:
            %   i (Test.LCRS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LCRS)
            %   o (Test.LCRS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.LCRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLCRS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LCRS.read(is_);
            result = Test.LCRS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.LCRS.convert(o);
            result = Test.LCRS.convert(result);
        end
        function r_ = opLCRSAsync(obj, i, varargin)
            % opLCRSAsync
            %
            % Parameters:
            %   i (Test.LCRS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.LCRS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LCRS.read(is_);
                result = Test.LCRS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.LCRS.convert(result);
                varargout{2} = Test.LCRS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opLCRS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAEnS(obj, i, varargin)
            % opAEnS
            %
            % Parameters:
            %   i (Test.AEnS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.AEnS)
            %   o (Test.AEnS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.AEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAEnS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AEnS.read(is_);
            result = Test.AEnS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAEnSAsync(obj, i, varargin)
            % opAEnSAsync
            %
            % Parameters:
            %   i (Test.AEnS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.AEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AEnS.read(is_);
                result = Test.AEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAEnS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLEnS(obj, i, varargin)
            % opLEnS
            %
            % Parameters:
            %   i (Test.LEnS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LEnS)
            %   o (Test.LEnS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.LEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLEnS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LEnS.read(is_);
            result = Test.LEnS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLEnSAsync(obj, i, varargin)
            % opLEnSAsync
            %
            % Parameters:
            %   i (Test.LEnS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.LEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LEnS.read(is_);
                result = Test.LEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLEnS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKEnS(obj, i, varargin)
            % opKEnS
            %
            % Parameters:
            %   i (Test.KEnS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KEnS)
            %   o (Test.KEnS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.KEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKEnS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.KEnS.read(is_);
            result = Test.KEnS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opKEnSAsync(obj, i, varargin)
            % opKEnSAsync
            %
            % Parameters:
            %   i (Test.KEnS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.KEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KEnS.read(is_);
                result = Test.KEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKEnS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQEnS(obj, i, varargin)
            % opQEnS
            %
            % Parameters:
            %   i (Test.QEnS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QEnS)
            %   o (Test.QEnS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.QEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQEnS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.QEnS.read(is_);
            result = Test.QEnS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opQEnSAsync(obj, i, varargin)
            % opQEnSAsync
            %
            % Parameters:
            %   i (Test.QEnS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.QEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QEnS.read(is_);
                result = Test.QEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQEnS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSEnS(obj, i, varargin)
            % opSEnS
            %
            % Parameters:
            %   i (Test.SEnS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SEnS)
            %   o (Test.SEnS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.SEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSEnS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.SEnS.read(is_);
            result = Test.SEnS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSEnSAsync(obj, i, varargin)
            % opSEnSAsync
            %
            % Parameters:
            %   i (Test.SEnS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.SEnS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SEnS.read(is_);
                result = Test.SEnS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSEnS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opAIPrxS(obj, i, varargin)
            % opAIPrxS
            %
            % Parameters:
            %   i (Test.AIPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.AIPrxS)
            %   o (Test.AIPrxS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.AIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opAIPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.AIPrxS.read(is_);
            result = Test.AIPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opAIPrxSAsync(obj, i, varargin)
            % opAIPrxSAsync
            %
            % Parameters:
            %   i (Test.AIPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.AIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.AIPrxS.read(is_);
                result = Test.AIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opAIPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opLIPrxS(obj, i, varargin)
            % opLIPrxS
            %
            % Parameters:
            %   i (Test.LIPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.LIPrxS)
            %   o (Test.LIPrxS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.LIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opLIPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.LIPrxS.read(is_);
            result = Test.LIPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opLIPrxSAsync(obj, i, varargin)
            % opLIPrxSAsync
            %
            % Parameters:
            %   i (Test.LIPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.LIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.LIPrxS.read(is_);
                result = Test.LIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opLIPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opKIPrxS(obj, i, varargin)
            % opKIPrxS
            %
            % Parameters:
            %   i (Test.KIPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.KIPrxS)
            %   o (Test.KIPrxS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.KIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opKIPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.KIPrxS.read(is_);
            result = Test.KIPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opKIPrxSAsync(obj, i, varargin)
            % opKIPrxSAsync
            %
            % Parameters:
            %   i (Test.KIPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.KIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.KIPrxS.read(is_);
                result = Test.KIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opKIPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opQIPrxS(obj, i, varargin)
            % opQIPrxS
            %
            % Parameters:
            %   i (Test.QIPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.QIPrxS)
            %   o (Test.QIPrxS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.QIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opQIPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.QIPrxS.read(is_);
            result = Test.QIPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opQIPrxSAsync(obj, i, varargin)
            % opQIPrxSAsync
            %
            % Parameters:
            %   i (Test.QIPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.QIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.QIPrxS.read(is_);
                result = Test.QIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opQIPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opSIPrxS(obj, i, varargin)
            % opSIPrxS
            %
            % Parameters:
            %   i (Test.SIPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.SIPrxS)
            %   o (Test.SIPrxS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.SIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opSIPrxS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.SIPrxS.read(is_);
            result = Test.SIPrxS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opSIPrxSAsync(obj, i, varargin)
            % opSIPrxSAsync
            %
            % Parameters:
            %   i (Test.SIPrxS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.SIPrxS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.SIPrxS.read(is_);
                result = Test.SIPrxS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opSIPrxS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opCustomIntS(obj, i, varargin)
            % opCustomIntS
            %
            % Parameters:
            %   i (Test.CustomIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.CustomIntS)
            %   o (Test.CustomIntS)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomIntS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = is_.readIntSeq();
            result = is_.readIntSeq();
            is_.endEncapsulation();
        end
        function r_ = opCustomIntSAsync(obj, i, varargin)
            % opCustomIntSAsync
            %
            % Parameters:
            %   i (Test.CustomIntS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntSeq(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = is_.readIntSeq();
                result = is_.readIntSeq();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opCustomIntS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opCustomCVS(obj, i, varargin)
            % opCustomCVS
            %
            % Parameters:
            %   i (Test.CustomCVS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.CustomCVS)
            %   o (Test.CustomCVS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomCVS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.CustomCVS.read(is_);
            result = Test.CustomCVS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.CustomCVS.convert(o);
            result = Test.CustomCVS.convert(result);
        end
        function r_ = opCustomCVSAsync(obj, i, varargin)
            % opCustomCVSAsync
            %
            % Parameters:
            %   i (Test.CustomCVS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.CustomCVS.read(is_);
                result = Test.CustomCVS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CustomCVS.convert(result);
                varargout{2} = Test.CustomCVS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opCustomCVS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opCustomIntSS(obj, i, varargin)
            % opCustomIntSS
            %
            % Parameters:
            %   i (Test.CustomIntSS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.CustomIntSS)
            %   o (Test.CustomIntSS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.CustomIntSS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomIntSS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.CustomIntSS.read(is_);
            result = Test.CustomIntSS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opCustomIntSSAsync(obj, i, varargin)
            % opCustomIntSSAsync
            %
            % Parameters:
            %   i (Test.CustomIntSS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.CustomIntSS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.CustomIntSS.read(is_);
                result = Test.CustomIntSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opCustomIntSS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opCustomCVSS(obj, i, varargin)
            % opCustomCVSS
            %
            % Parameters:
            %   i (Test.CustomCVSS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (Test.CustomCVSS)
            %   o (Test.CustomCVSS)
            
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVSS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opCustomCVSS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.CustomCVSS.read(is_);
            result = Test.CustomCVSS.read(is_);
            is_.readPendingValues();
            is_.endEncapsulation();
            o = Test.CustomCVSS.convert(o);
            result = Test.CustomCVSS.convert(result);
        end
        function r_ = opCustomCVSSAsync(obj, i, varargin)
            % opCustomCVSSAsync
            %
            % Parameters:
            %   i (Test.CustomCVSS)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.CustomCVSS.write(os_, i);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.CustomCVSS.read(is_);
                result = Test.CustomCVSS.read(is_);
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = Test.CustomCVSS.convert(result);
                varargout{2} = Test.CustomCVSS.convert(o);
            end
            r_ = obj.iceInvokeAsync('opCustomCVSS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
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
    methods(Hidden=true)
        function obj = MyClassPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
