
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef RemoteCommunicatorPrx < Ice.ObjectPrx
    methods
        function result = getAdmin(obj, varargin)
            is_ = obj.iceInvoke('getAdmin', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readProxy();
            is_.endEncapsulation();
        end
        function r_ = getAdminAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readProxy();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAdmin', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getChanges(obj, varargin)
            is_ = obj.iceInvoke('getChanges', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.PropertyDict.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getChangesAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.PropertyDict.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getChanges', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function addUpdateCallback(obj, varargin)
            obj.iceInvoke('addUpdateCallback', 0, false, [], false, {}, varargin{:});
        end
        function r_ = addUpdateCallbackAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('addUpdateCallback', 0, false, [], 0, [], {}, varargin{:});
        end
        function removeUpdateCallback(obj, varargin)
            obj.iceInvoke('removeUpdateCallback', 0, false, [], false, {}, varargin{:});
        end
        function r_ = removeUpdateCallbackAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('removeUpdateCallback', 0, false, [], 0, [], {}, varargin{:});
        end
        function print(obj, message, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('print', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = printAsync(obj, message, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('print', 0, false, os_, 0, [], {}, varargin{:});
        end
        function trace(obj, category, message, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(category);
            os_.writeString(message);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('trace', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = traceAsync(obj, category, message, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(category);
            os_.writeString(message);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('trace', 0, false, os_, 0, [], {}, varargin{:});
        end
        function warning(obj, message, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('warning', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = warningAsync(obj, message, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('warning', 0, false, os_, 0, [], {}, varargin{:});
        end
        function error(obj, message, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('error', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = errorAsync(obj, message, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(message);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('error', 0, false, os_, 0, [], {}, varargin{:});
        end
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function waitForShutdown(obj, varargin)
            obj.iceInvoke('waitForShutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = waitForShutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('waitForShutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function destroy(obj, varargin)
            obj.iceInvoke('destroy', 0, false, [], false, {}, varargin{:});
        end
        function r_ = destroyAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::RemoteCommunicator';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.RemoteCommunicatorPrx');
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
            % Returns (Test.RemoteCommunicatorPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.RemoteCommunicatorPrx.ice_staticId(), 'Test.RemoteCommunicatorPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.RemoteCommunicatorPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.RemoteCommunicatorPrx', varargin{:});
        end
    end
end
