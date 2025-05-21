
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyInterfacePrx < Ice.ObjectPrx
    methods
        function [result, s2] = opMyStruct(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.MyStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyStruct', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            s2 = Test.Inner.MyStruct.ice_read(is_);
            result = Test.Inner.MyStruct.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = opMyStructAsync(obj, s1, varargin)
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.MyStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.Inner.MyStruct.ice_read(is_);
                result = Test.Inner.MyStruct.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = s2;
            end
            r_ = obj.iceInvokeAsync('opMyStruct', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, c2] = opMyClass(obj, c1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyClass', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            c2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) c2_h_.set(v), 'Inner.MyClass');
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'Inner.MyClass');
            is_.readPendingValues();
            is_.endEncapsulation();
            c2 = c2_h_.value;
            result = result_h_.value;
        end
        function r_ = opMyClassAsync(obj, c1, varargin)
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                c2 = IceInternal.ValueHolder();
                is_.readValue(@(v) c2.set(v), 'Inner.MyClass');
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'Inner.MyClass');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
                varargout{2} = c2.value;
            end
            r_ = obj.iceInvokeAsync('opMyClass', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Inner::MyInterface';
        end
        function r = ice_read(is)
            r = is.readProxy('Inner.MyInterfacePrx');
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
            % Returns (Inner.MyInterfacePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Inner.MyInterfacePrx.ice_staticId(), 'Inner.MyInterfacePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Inner.MyInterfacePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Inner.MyInterfacePrx', varargin{:});
        end
    end
end
