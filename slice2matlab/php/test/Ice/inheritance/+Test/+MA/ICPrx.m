
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ICPrx < Test.MB.IB1Prx & Test.MB.IB2Prx
    methods
        function result = icop(obj, p, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('icop', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Test.MA.ICPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = icopAsync(obj, p, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(p);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Test.MA.ICPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('icop', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MA::IC';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MA.ICPrx');
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
            % Returns (Test.MA.ICPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MA.ICPrx.ice_staticId(), 'Test.MA.ICPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MA.ICPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MA.ICPrx', varargin{:});
        end
    end
end
