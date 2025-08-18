classdef optionalParamsPrx < Ice.ObjectPrx
    %OPTIONALPARAMSPRX
    %
    %   Creation
    %     Syntax
    %       prx = await.optionalParamsPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   optionalParamsPrx Methods:
    %     continue
    %     continueAsync - An asynchronous continue.
    %     in
    %     inAsync - An asynchronous in.
    %
    %   optionalParamsPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::await::optionalParams.
    %     uncheckedCast - Creates a optionalParamsPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, namespace, null] = in(obj, goto, if, internal, context)
            %IN
            %
            %   Input Arguments
            %     goto
            %       await.var scalar | Ice.Unset
            %     if
            %       await.explicitPrx scalar | empty array of await.explicitPrx | Ice.Unset
            %     internal
            %       string, await.break) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       await.break scalar | Ice.Unset
            %     namespace
            %       character vector | Ice.Unset
            %     null
            %       await.explicitPrx scalar | empty array of await.explicitPrx | Ice.Unset
            
            arguments
                obj (1, 1) await.optionalParamsPrx
                goto (1, 1)
                if {mustBeScalarOrEmpty}
                internal (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            await.var.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            await.while.writeOpt(os_, 5, internal);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('in', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = await.break.ice_readOpt(is_, 1);
            namespace = is_.readStringOpt(7);
            null = is_.readProxyOpt(8, 'await.explicitPrx');
            is_.endEncapsulation();
        end

        function future = inAsync(obj, goto, if, internal, context)
            %INASYNC
            %
            %   Input Arguments
            %     goto
            %       await.var scalar | Ice.Unset
            %     if
            %       await.explicitPrx scalar | empty array of await.explicitPrx | Ice.Unset
            %     internal
            %       string, await.break) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also in, Ice.Future.
            
            arguments
                obj (1, 1) await.optionalParamsPrx
                goto (1, 1)
                if {mustBeScalarOrEmpty}
                internal (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            await.var.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            await.while.writeOpt(os_, 5, internal);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = await.break.ice_readOpt(is_, 1);
                namespace = is_.readStringOpt(7);
                null = is_.readProxyOpt(8, 'await.explicitPrx');
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = namespace;
                varargout{3} = null;
            end
            future = obj.iceInvokeAsync('in', 0, true, os_, 3, @unmarshal, {}, context);
        end

        function [returnValue, namespace, null] = continue(obj, goto, if, internal, context)
            %CONTINUE
            %
            %   Input Arguments
            %     goto
            %       await.var scalar | Ice.Unset
            %     if
            %       await.explicitPrx scalar | empty array of await.explicitPrx | Ice.Unset
            %     internal
            %       string, await.break) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       await.break scalar | Ice.Unset
            %     namespace
            %       character vector | Ice.Unset
            %     null
            %       await.explicitPrx scalar | empty array of await.explicitPrx | Ice.Unset
            
            arguments
                obj (1, 1) await.optionalParamsPrx
                goto (1, 1)
                if {mustBeScalarOrEmpty}
                internal (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            await.var.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            await.while.writeOpt(os_, 5, internal);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('continue', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = await.break.ice_readOpt(is_, 1);
            namespace = is_.readStringOpt(7);
            null = is_.readProxyOpt(8, 'await.explicitPrx');
            is_.endEncapsulation();
        end

        function future = continueAsync(obj, goto, if, internal, context)
            %CONTINUEASYNC
            %
            %   Input Arguments
            %     goto
            %       await.var scalar | Ice.Unset
            %     if
            %       await.explicitPrx scalar | empty array of await.explicitPrx | Ice.Unset
            %     internal
            %       string, await.break) scalar | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also continue, Ice.Future.
            
            arguments
                obj (1, 1) await.optionalParamsPrx
                goto (1, 1)
                if {mustBeScalarOrEmpty}
                internal (1, 1)
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            await.var.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            await.while.writeOpt(os_, 5, internal);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = await.break.ice_readOpt(is_, 1);
                namespace = is_.readStringOpt(7);
                null = is_.readProxyOpt(8, 'await.explicitPrx');
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = namespace;
                varargout{3} = null;
            end
            future = obj.iceInvokeAsync('continue', 0, true, os_, 3, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::await::optionalParams';
        end

        function r = ice_read(is)
            r = is.readProxy('await.optionalParamsPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::await::optionalParams.
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
            %     r - A await.optionalParamsPrx scalar if the target object implements Slice interface 
            %       ::await::optionalParams; otherwise, an empty array of await.optionalParamsPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, await.optionalParamsPrx.ice_staticId(), 'await.optionalParamsPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a await.optionalParamsPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new await.optionalParamsPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'await.optionalParamsPrx', varargin{:});
        end
    end
end
