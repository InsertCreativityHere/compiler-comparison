
% Copyright (c) ZeroC, Inc.
% Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

classdef ProcessPrx < Ice.ObjectPrx
    methods
        function waitReady(obj, timeout, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('waitReady', 0, true, os_, false, Test.Common.ProcessPrx.waitReady_ex_, varargin{:});
        end
        function r_ = waitReadyAsync(obj, timeout, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('waitReady', 0, true, os_, 0, [], Test.Common.ProcessPrx.waitReady_ex_, varargin{:});
        end
        function result = waitSuccess(obj, timeout, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('waitSuccess', 0, true, os_, true, Test.Common.ProcessPrx.waitSuccess_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = waitSuccessAsync(obj, timeout, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(timeout);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('waitSuccess', 0, true, os_, 1, @unmarshal, Test.Common.ProcessPrx.waitSuccess_ex_, varargin{:});
        end
        function result = terminate(obj, varargin)
            is_ = obj.iceInvoke('terminate', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = terminateAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('terminate', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Common::Process';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Common.ProcessPrx');
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
            % Returns (Test.Common.ProcessPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Common.ProcessPrx.ice_staticId(), 'Test.Common.ProcessPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Common.ProcessPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Common.ProcessPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        waitReady_ex_ = { 'Test.Common.ProcessFailedException' }
        waitSuccess_ex_ = { 'Test.Common.ProcessFailedException' }
    end
end
