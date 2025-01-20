
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef BackgroundControllerPrx < Ice.ObjectPrx
    methods
        function pauseCall(obj, call, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(call);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('pauseCall', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = pauseCallAsync(obj, call, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(call);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('pauseCall', 0, false, os_, 0, [], {}, varargin{:});
        end
        function resumeCall(obj, call, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(call);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('resumeCall', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = resumeCallAsync(obj, call, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(call);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('resumeCall', 0, false, os_, 0, [], {}, varargin{:});
        end
        function holdAdapter(obj, varargin)
            obj.iceInvoke('holdAdapter', 0, false, [], false, {}, varargin{:});
        end
        function r_ = holdAdapterAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('holdAdapter', 0, false, [], 0, [], {}, varargin{:});
        end
        function resumeAdapter(obj, varargin)
            obj.iceInvoke('resumeAdapter', 0, false, [], false, {}, varargin{:});
        end
        function r_ = resumeAdapterAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('resumeAdapter', 0, false, [], 0, [], {}, varargin{:});
        end
        function initializeSocketStatus(obj, status, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(status);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initializeSocketStatus', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initializeSocketStatusAsync(obj, status, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(status);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initializeSocketStatus', 0, false, os_, 0, [], {}, varargin{:});
        end
        function initializeException(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initializeException', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initializeExceptionAsync(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initializeException', 0, false, os_, 0, [], {}, varargin{:});
        end
        function readReady(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('readReady', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = readReadyAsync(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('readReady', 0, false, os_, 0, [], {}, varargin{:});
        end
        function readException(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('readException', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = readExceptionAsync(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('readException', 0, false, os_, 0, [], {}, varargin{:});
        end
        function writeReady(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('writeReady', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = writeReadyAsync(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('writeReady', 0, false, os_, 0, [], {}, varargin{:});
        end
        function writeException(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('writeException', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = writeExceptionAsync(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('writeException', 0, false, os_, 0, [], {}, varargin{:});
        end
        function buffered(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('buffered', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = bufferedAsync(obj, enable, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(enable);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('buffered', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::BackgroundController';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.BackgroundControllerPrx');
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
            % Returns (Test.BackgroundControllerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.BackgroundControllerPrx.ice_staticId(), 'Test.BackgroundControllerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.BackgroundControllerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.BackgroundControllerPrx', varargin{:});
        end
    end
end
