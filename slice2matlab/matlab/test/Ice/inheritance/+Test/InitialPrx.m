
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef InitialPrx < Ice.ObjectPrx
    methods
        function shutdown(obj, varargin)
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function result = iaop(obj, varargin)
            is_ = obj.iceInvoke('iaop', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.MA.IAPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = iaopAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.MA.IAPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('iaop', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = ib1op(obj, varargin)
            is_ = obj.iceInvoke('ib1op', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.MB.IB1Prx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = ib1opAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.MB.IB1Prx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('ib1op', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = ib2op(obj, varargin)
            is_ = obj.iceInvoke('ib2op', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.MB.IB2Prx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = ib2opAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.MB.IB2Prx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('ib2op', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function result = icop(obj, varargin)
            is_ = obj.iceInvoke('icop', 0, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.MA.ICPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = icopAsync(obj, varargin)
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.MA.ICPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('icop', 0, true, [], 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Initial';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.InitialPrx');
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
            % Returns (Test.InitialPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.InitialPrx.ice_staticId(), 'Test.InitialPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.InitialPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.InitialPrx', varargin{:});
        end
    end
end
