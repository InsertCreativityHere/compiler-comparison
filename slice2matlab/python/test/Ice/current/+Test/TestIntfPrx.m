
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function result = getAdapterName(obj, varargin)
            is_ = obj.iceInvoke('getAdapterName', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getAdapterNameAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getAdapterName', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getConnection(obj, varargin)
            is_ = obj.iceInvoke('getConnection', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getConnectionAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getConnection', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getIdentity(obj, varargin)
            is_ = obj.iceInvoke('getIdentity', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.Identity.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getIdentityAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.Identity.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getIdentity', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getFacet(obj, varargin)
            is_ = obj.iceInvoke('getFacet', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getFacetAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getFacet', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getOperation(obj, varargin)
            is_ = obj.iceInvoke('getOperation', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getOperationAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getOperation', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getMode(obj, varargin)
            is_ = obj.iceInvoke('getMode', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getModeAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getMode', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getContext(obj, varargin)
            is_ = obj.iceInvoke('getContext', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.Context.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getContextAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.Context.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getContext', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getRequestId(obj, varargin)
            is_ = obj.iceInvoke('getRequestId', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = getRequestIdAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getRequestId', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = getEncoding(obj, varargin)
            is_ = obj.iceInvoke('getEncoding', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getEncodingAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getEncoding', 0, true, [], 1, @unmarshal, {}, varargin{:});
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
