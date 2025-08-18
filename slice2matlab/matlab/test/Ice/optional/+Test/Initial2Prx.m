classdef Initial2Prx < Ice.ObjectPrx
    %INITIAL2PRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.Initial2Prx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   Initial2Prx Methods:
    %     opClassAndUnknownOptional
    %     opClassAndUnknownOptionalAsync - An asynchronous opClassAndUnknownOptional.
    %     opVoid
    %     opVoidAsync - An asynchronous opVoid.
    %
    %   Initial2Prx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Initial2.
    %     uncheckedCast - Creates a Initial2Prx from another proxy without any validation.
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function opClassAndUnknownOptional(obj, p, ovs, context)
            %OPCLASSANDUNKNOWNOPTIONAL
            %
            %   Input Arguments
            %     p
            %       Test.A scalar | empty array of Test.A
            %     ovs
            %       Test.VarStruct scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.Initial2Prx
                p Test.A {mustBeScalarOrEmpty}
                ovs (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            Test.VarStruct.ice_writeOpt(os_, 1, ovs);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opClassAndUnknownOptional', 0, false, os_, false, {}, context);
        end

        function future = opClassAndUnknownOptionalAsync(obj, p, ovs, context)
            %OPCLASSANDUNKNOWNOPTIONALASYNC
            %
            %   Input Arguments
            %     p
            %       Test.A scalar | empty array of Test.A
            %     ovs
            %       Test.VarStruct scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opClassAndUnknownOptional, Ice.Future.
            
            arguments
                obj (1, 1) Test.Initial2Prx
                p Test.A {mustBeScalarOrEmpty}
                ovs (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(p);
            Test.VarStruct.ice_writeOpt(os_, 1, ovs);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('opClassAndUnknownOptional', 0, false, os_, 0, [], {}, context);
        end

        function opVoid(obj, a, v, context)
            %OPVOID
            %
            %   Input Arguments
            %     a
            %       int32 scalar | Ice.Unset
            %     v
            %       character vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.Initial2Prx
                a (1, 1)
                v (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, v);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('opVoid', 0, false, os_, false, {}, context);
        end

        function future = opVoidAsync(obj, a, v, context)
            %OPVOIDASYNC
            %
            %   Input Arguments
            %     a
            %       int32 scalar | Ice.Unset
            %     v
            %       character vector | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also opVoid, Ice.Future.
            
            arguments
                obj (1, 1) Test.Initial2Prx
                a (1, 1)
                v (1, :)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeIntOpt(1, a);
            os_.writeStringOpt(2, v);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('opVoid', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Initial2';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.Initial2Prx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Initial2.
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
            %     r - A Test.Initial2Prx scalar if the target object implements Slice interface 
            %       ::Test::Initial2; otherwise, an empty array of Test.Initial2Prx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Initial2Prx.ice_staticId(), 'Test.Initial2Prx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.Initial2Prx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.Initial2Prx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Initial2Prx', varargin{:});
        end
    end
end
