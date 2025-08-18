classdef MyInterfacePrx < Ice.ObjectPrx
    %MYINTERFACEPRX
    %
    %   Creation
    %     Syntax
    %       prx = classdef_.MyInterfacePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   MyInterfacePrx Methods:
    %     foobar
    %     foobarAsync - An asynchronous foobar.
    %     func
    %     funcAsync - An asynchronous func.
    %
    %   MyInterfacePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::classdef::operations.
    %     uncheckedCast - Creates a MyInterfacePrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function foobar(obj_, obj, context, context_)
            %FOOBAR
            %
            %   Input Arguments
            %     obj
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context
            %       character vector
            %     context_ - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj_ (1, 1) classdef_.MyInterfacePrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, :) char
                context_ (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            os_.writeString(context);
            obj_.iceEndWriteParams(os_);
            obj_.iceInvoke('events', 0, false, os_, false, {}, context_);
        end

        function future = foobarAsync(obj_, obj, context, context_)
            %FOOBARASYNC
            %
            %   Input Arguments
            %     obj
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     context
            %       character vector
            %     context_ - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also foobar, Ice.Future.
            
            arguments
                obj_ (1, 1) classdef_.MyInterfacePrx
                obj Ice.ObjectPrx {mustBeScalarOrEmpty}
                context (1, :) char
                context_ (1, 1) dictionary = dictionary
            end
            os_ = obj_.iceStartWriteParams([]);
            os_.writeProxy(obj);
            os_.writeString(context);
            obj_.iceEndWriteParams(os_);
            future = obj_.iceInvokeAsync('events', 0, false, os_, 0, [], {}, context_);
        end

        function func(obj, context)
            %FUNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) classdef_.MyInterfacePrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('function', 0, false, [], false, {}, context);
        end

        function future = funcAsync(obj, context)
            %FUNCASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also func, Ice.Future.
            
            arguments
                obj (1, 1) classdef_.MyInterfacePrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('function', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::classdef::operations';
        end

        function r = ice_read(is)
            r = is.readProxy('classdef_.MyInterfacePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::classdef::operations.
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
            %     r - A classdef_.MyInterfacePrx scalar if the target object implements Slice interface 
            %       ::classdef::operations; otherwise, an empty array of classdef_.MyInterfacePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, classdef_.MyInterfacePrx.ice_staticId(), 'classdef_.MyInterfacePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a classdef_.MyInterfacePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new classdef_.MyInterfacePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'classdef_.MyInterfacePrx', varargin{:});
        end
    end
end
