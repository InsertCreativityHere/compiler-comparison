classdef explicitPrx < await.typeofPrx & await.casePrx
    %EXPLICITPRX
    %
    %   Creation
    %     Syntax
    %       prx = await.explicitPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   explicitPrx Methods:
    %     in
    %     inAsync - An asynchronous in.
    %
    %   explicitPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::await::explicit.
    %     uncheckedCast - Creates a explicitPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = in(obj, internal, new, null, override, context)
            %IN
            %
            %   Input Arguments
            %     internal
            %       await.break scalar
            %     new
            %       await.typeofPrx scalar | empty array of await.typeofPrx
            %     null
            %       await.delete scalar | empty array of await.delete
            %     override
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       await.var scalar
            %
            %   Exceptions
            %     await.fixed
            %     await.foreach
            
            arguments
                obj (1, 1) await.explicitPrx
                internal (1, 1) await.break
                new await.typeofPrx {mustBeScalarOrEmpty}
                null await.delete {mustBeScalarOrEmpty}
                override (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            await.break.ice_write(os_, internal);
            os_.writeProxy(new);
            os_.writeValue(null);
            os_.writeInt(override);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('in', 0, true, os_, true, await.explicitPrx.in_ex_, context);
            is_.startEncapsulation();
            returnValue = await.var.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = inAsync(obj, internal, new, null, override, context)
            %INASYNC
            %
            %   Input Arguments
            %     internal
            %       await.break scalar
            %     new
            %       await.typeofPrx scalar | empty array of await.typeofPrx
            %     null
            %       await.delete scalar | empty array of await.delete
            %     override
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also in, Ice.Future.
            
            arguments
                obj (1, 1) await.explicitPrx
                internal (1, 1) await.break
                new await.typeofPrx {mustBeScalarOrEmpty}
                null await.delete {mustBeScalarOrEmpty}
                override (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            await.break.ice_write(os_, internal);
            os_.writeProxy(new);
            os_.writeValue(null);
            os_.writeInt(override);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = await.var.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('in', 0, true, os_, 1, @unmarshal, await.explicitPrx.in_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::await::explicit';
        end

        function r = ice_read(is)
            r = is.readProxy('await.explicitPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::await::explicit.
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
            %     r - A await.explicitPrx scalar if the target object implements Slice interface 
            %       ::await::explicit; otherwise, an empty array of await.explicitPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, await.explicitPrx.ice_staticId(), 'await.explicitPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a await.explicitPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new await.explicitPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'await.explicitPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        in_ex_ = { 'await.foreach', 'await.fixed' }
    end
end
