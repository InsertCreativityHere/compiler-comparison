
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef Initial2Prx < Ice.ObjectPrx
    methods
        function opClassAndUnknownOptional(obj, p, ovs, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            Test.VarStruct.ice_writeOpt(os_, 1, ovs);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opClassAndUnknownOptional', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opClassAndUnknownOptionalAsync(obj, p, ovs, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            Test.VarStruct.ice_writeOpt(os_, 1, ovs);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opClassAndUnknownOptional', 0, false, os_, 0, [], {}, varargin{:});
        end
        function opVoid(obj, a, v, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, v);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opVoid', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = opVoidAsync(obj, a, v, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, v);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('opVoid', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Initial2';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Initial2Prx');
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
            % Returns (Test.Initial2Prx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Initial2Prx.ice_staticId(), 'Test.Initial2Prx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Initial2Prx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Initial2Prx', varargin{:});
        end
    end
end
