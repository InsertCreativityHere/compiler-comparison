classdef MyInterfacePrx < Ice.ObjectPrx
    %MYINTERFACEPRX
    %
    %   Creation
    %     Syntax
    %       prx = Inner.NoPrefix.MyInterfacePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   MyInterfacePrx Methods:
    %     opMyClass
    %     opMyClassAsync - An asynchronous opMyClass.
    %     opMyStruct
    %     opMyStructAsync - An asynchronous opMyStruct.
    %
    %   MyInterfacePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Inner::NoPrefix::MyInterface.
    %     uncheckedCast - Creates a MyInterfacePrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, s2] = opMyStruct(obj, s1, context)
            %OPMYSTRUCT
            %
            %   Input Arguments
            %     s1
            %       Test.Inner.MyStruct scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Test.Inner.MyStruct scalar
            %     s2
            %       Test.Inner.MyStruct scalar
            
            arguments
                obj (1, 1) Inner.NoPrefix.MyInterfacePrx
                s1 (1, 1) Test.Inner.MyStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.MyStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyStruct', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            s2 = Test.Inner.MyStruct.ice_read(is_);
            returnValue = Test.Inner.MyStruct.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = opMyStructAsync(obj, s1, context)
            %OPMYSTRUCTASYNC
            %
            %   Input Arguments
            %     s1
            %       Test.Inner.MyStruct scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyStruct, Ice.Future.
            
            arguments
                obj (1, 1) Inner.NoPrefix.MyInterfacePrx
                s1 (1, 1) Test.Inner.MyStruct
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Test.Inner.MyStruct.ice_write(os_, s1);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s2 = Test.Inner.MyStruct.ice_read(is_);
                returnValue = Test.Inner.MyStruct.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = s2;
            end
            future = obj.iceInvokeAsync('opMyStruct', 0, true, os_, 2, @unmarshal, {}, context);
        end

        function [returnValue, c2] = opMyClass(obj, c1, context)
            %OPMYCLASS
            %
            %   Input Arguments
            %     c1
            %       Inner.NoPrefix.MyClass scalar | empty array of Inner.NoPrefix.MyClass
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       Inner.NoPrefix.MyClass scalar | empty array of Inner.NoPrefix.MyClass
            %     c2
            %       Inner.NoPrefix.MyClass scalar | empty array of Inner.NoPrefix.MyClass
            
            arguments
                obj (1, 1) Inner.NoPrefix.MyInterfacePrx
                c1 Inner.NoPrefix.MyClass {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opMyClass', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            c2_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) c2_h_.set(v), 'Inner.NoPrefix.MyClass');
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'Inner.NoPrefix.MyClass');
            is_.readPendingValues();
            is_.endEncapsulation();
            c2 = c2_h_.value;
            returnValue = returnValue_h_.value;
        end

        function future = opMyClassAsync(obj, c1, context)
            %OPMYCLASSASYNC
            %
            %   Input Arguments
            %     c1
            %       Inner.NoPrefix.MyClass scalar | empty array of Inner.NoPrefix.MyClass
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opMyClass, Ice.Future.
            
            arguments
                obj (1, 1) Inner.NoPrefix.MyInterfacePrx
                c1 Inner.NoPrefix.MyClass {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(c1);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                c2 = IceInternal.ValueHolder();
                is_.readValue(@(v) c2.set(v), 'Inner.NoPrefix.MyClass');
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'Inner.NoPrefix.MyClass');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
                varargout{2} = c2.value;
            end
            future = obj.iceInvokeAsync('opMyClass', 0, true, os_, 2, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Inner::NoPrefix::MyInterface';
        end

        function r = ice_read(is)
            r = is.readProxy('Inner.NoPrefix.MyInterfacePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Inner::NoPrefix::MyInterface.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A Inner.NoPrefix.MyInterfacePrx scalar if the target object implements Slice interface 
            %       ::Inner::NoPrefix::MyInterface; otherwise, an empty array of Inner.NoPrefix.MyInterfacePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Inner.NoPrefix.MyInterfacePrx.ice_staticId(), 'Inner.NoPrefix.MyInterfacePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Inner.NoPrefix.MyInterfacePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Inner.NoPrefix.MyInterfacePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Inner.NoPrefix.MyInterfacePrx', varargin{:});
        end
    end
end
