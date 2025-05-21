
% Copyright (c) ZeroC, Inc.
% Generated from WstringAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef WstringClassPrx < Ice.ObjectPrx
    methods
        function [result, s2] = opString(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opString', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = is_.readString();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = opStringAsync(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = is_.readString();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opString', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, s2] = opStruct(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test2.WstringStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opStruct', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test2.WstringStruct.ice_read(is_);
            result = Test2.WstringStruct.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opStructAsync(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test2.WstringStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test2.WstringStruct.ice_read(is_);
                result = Test2.WstringStruct.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opStruct', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function throwExcept(obj, reason, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(reason);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('throwExcept', 0, true, os_, false, Test2.WstringClassPrx.throwExcept_ex_, varargin{:});
        end
        function r_ = throwExceptAsync(obj, reason, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(reason);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('throwExcept', 0, true, os_, 0, [], Test2.WstringClassPrx.throwExcept_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test2::WstringClass';
        end
        function r = ice_read(is)
            r = is.readProxy('Test2.WstringClassPrx');
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
            % Returns (Test2.WstringClassPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test2.WstringClassPrx.ice_staticId(), 'Test2.WstringClassPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test2.WstringClassPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test2.WstringClassPrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        throwExcept_ex_ = { 'Test2.WstringException' }
    end
end
