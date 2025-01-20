
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ControllerPrx < Ice.ObjectPrx
    methods
        function activateObjectAdapter(obj, name, adapterId, replicaGroupId, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('activateObjectAdapter', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = activateObjectAdapterAsync(obj, name, adapterId, replicaGroupId, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('activateObjectAdapter', 0, false, os_, 0, [], {}, varargin{:});
        end
        function deactivateObjectAdapter(obj, name, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('deactivateObjectAdapter', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = deactivateObjectAdapterAsync(obj, name, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('deactivateObjectAdapter', 0, false, os_, 0, [], {}, varargin{:});
        end
        function addObject(obj, oaName, id, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(oaName);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('addObject', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = addObjectAsync(obj, oaName, id, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(oaName);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('addObject', 0, false, os_, 0, [], {}, varargin{:});
        end
        function removeObject(obj, oaName, id, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(oaName);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeObject', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = removeObjectAsync(obj, oaName, id, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(oaName);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('removeObject', 0, false, os_, 0, [], {}, varargin{:});
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
            id = '::Test::Controller';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.ControllerPrx');
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
            % Returns (Test.ControllerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ControllerPrx.ice_staticId(), 'Test.ControllerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.ControllerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ControllerPrx', varargin{:});
        end
    end
end
