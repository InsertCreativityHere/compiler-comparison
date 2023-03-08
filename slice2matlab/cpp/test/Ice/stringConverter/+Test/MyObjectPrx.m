% MyObjectPrx   Summary of MyObjectPrx
%
% MyObjectPrx Methods:
%   widen
%   widenAsync
%   narrow
%   narrowAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef MyObjectPrx < Ice.ObjectPrx
    methods
        function result = widen(obj, msg, varargin)
            % widen
            %
            % Parameters:
            %   msg (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(msg);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('widen', 0, true, os_, true, Test.MyObjectPrx.widen_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = widenAsync(obj, msg, varargin)
            % widenAsync
            %
            % Parameters:
            %   msg (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(msg);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('widen', 0, true, os_, 1, @unmarshal, Test.MyObjectPrx.widen_ex_, varargin{:});
        end
        function result = narrow(obj, wmsg, varargin)
            % narrow
            %
            % Parameters:
            %   wmsg (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(wmsg);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('narrow', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = narrowAsync(obj, wmsg, varargin)
            % narrowAsync
            %
            % Parameters:
            %   wmsg (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(wmsg);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('narrow', 0, true, os_, 1, @unmarshal, {}, varargin{:});
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
            id = '::Test::MyObject';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MyObjectPrx');
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
            % Returns (Test.MyObjectPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyObjectPrx.ice_staticId(), 'Test.MyObjectPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MyObjectPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyObjectPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = MyObjectPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        widen_ex_ = { 'Test.BadEncodingException' }
    end
end
