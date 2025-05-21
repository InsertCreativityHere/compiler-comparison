
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfBidirPrx < Ice.ObjectPrx
    methods
        function makeSleep(obj, aborted, ms, target, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(aborted);
            os_.writeInt(ms);
            os_.writeProxy(target);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('makeSleep', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = makeSleepAsync(obj, aborted, ms, target, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(aborted);
            os_.writeInt(ms);
            os_.writeProxy(target);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('makeSleep', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::TestIntfBidir';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfBidirPrx');
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
            % Returns (Test.TestIntfBidirPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfBidirPrx.ice_staticId(), 'Test.TestIntfBidirPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestIntfBidirPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfBidirPrx', varargin{:});
        end
    end
end
