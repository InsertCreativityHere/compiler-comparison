classdef optionalParamsPrx < Ice.ObjectPrx
    %OPTIONALPARAMSPRX
    %
    %   Creation
    %     Syntax
    %       prx = abstract.optionalParamsPrx(communicator, proxyString)
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
    %     for
    %     forAsync - An asynchronous for.
    %     foreach
    %     foreachAsync - An asynchronous foreach.
    %     in
    %     inAsync - An asynchronous in.
    %
    %   optionalParamsPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::abstract::optionalParams.
    %     uncheckedCast - Creates a optionalParamsPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = for(obj, goto, if, internal, context, context_)
            %FOR
            %
            %   Input Arguments
            %     goto
            %       abstract.as scalar | Ice.Unset
            %     if
            %       abstract.explicitPrx scalar | empty array of abstract.explicitPrx | Ice.Unset
            %     internal
            %       string, abstract.break) scalar | Ice.Unset
            %     context
            %       character vector | Ice.Unset
            %     context_ - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       abstract.break scalar | Ice.Unset
            
            arguments
                obj (1, 1) abstract.optionalParamsPrx
                goto (1, 1)
                if {mustBeScalarOrEmpty}
                internal (1, 1)
                context (1, :)
                context_ (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            abstract.as.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            abstract.while.writeOpt(os_, 5, internal);
            os_.writeStringOpt(7, context);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('for', 0, true, os_, true, {}, context_);
            is_.startEncapsulation();
            returnValue = abstract.break.ice_readOpt(is_, 1);
            is_.endEncapsulation();
        end

        function future = forAsync(obj, goto, if, internal, context, context_)
            %FORASYNC
            %
            %   Input Arguments
            %     goto
            %       abstract.as scalar | Ice.Unset
            %     if
            %       abstract.explicitPrx scalar | empty array of abstract.explicitPrx | Ice.Unset
            %     internal
            %       string, abstract.break) scalar | Ice.Unset
            %     context
            %       character vector | Ice.Unset
            %     context_ - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also for, Ice.Future.
            
            arguments
                obj (1, 1) abstract.optionalParamsPrx
                goto (1, 1)
                if {mustBeScalarOrEmpty}
                internal (1, 1)
                context (1, :)
                context_ (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            abstract.as.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            abstract.while.writeOpt(os_, 5, internal);
            os_.writeStringOpt(7, context);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = abstract.break.ice_readOpt(is_, 1);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('for', 0, true, os_, 1, @unmarshal, {}, context_);
        end

        function returnValue = continue(obj, goto, if, internal, context, context_)
            %CONTINUE
            %
            %   Input Arguments
            %     goto
            %       abstract.as scalar | Ice.Unset
            %     if
            %       abstract.explicitPrx scalar | empty array of abstract.explicitPrx | Ice.Unset
            %     internal
            %       string, abstract.break) scalar | Ice.Unset
            %     context
            %       character vector | Ice.Unset
            %     context_ - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       abstract.break scalar | Ice.Unset
            
            arguments
                obj (1, 1) abstract.optionalParamsPrx
                goto (1, 1)
                if {mustBeScalarOrEmpty}
                internal (1, 1)
                context (1, :)
                context_ (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            abstract.as.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            abstract.while.writeOpt(os_, 5, internal);
            os_.writeStringOpt(7, context);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('continue', 0, true, os_, true, {}, context_);
            is_.startEncapsulation();
            returnValue = abstract.break.ice_readOpt(is_, 1);
            is_.endEncapsulation();
        end

        function future = continueAsync(obj, goto, if, internal, context, context_)
            %CONTINUEASYNC
            %
            %   Input Arguments
            %     goto
            %       abstract.as scalar | Ice.Unset
            %     if
            %       abstract.explicitPrx scalar | empty array of abstract.explicitPrx | Ice.Unset
            %     internal
            %       string, abstract.break) scalar | Ice.Unset
            %     context
            %       character vector | Ice.Unset
            %     context_ - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also continue, Ice.Future.
            
            arguments
                obj (1, 1) abstract.optionalParamsPrx
                goto (1, 1)
                if {mustBeScalarOrEmpty}
                internal (1, 1)
                context (1, :)
                context_ (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            abstract.as.ice_writeOpt(os_, 2, goto);
            os_.writeProxyOpt(3, if);
            abstract.while.writeOpt(os_, 5, internal);
            os_.writeStringOpt(7, context);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = abstract.break.ice_readOpt(is_, 1);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('continue', 0, true, os_, 1, @unmarshal, {}, context_);
        end

        function [returnValue, goto, if, internal, context] = in(obj, context)
            %IN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       abstract.break scalar | Ice.Unset
            %     goto
            %       abstract.as scalar | Ice.Unset
            %     if
            %       abstract.explicitPrx scalar | empty array of abstract.explicitPrx | Ice.Unset
            %     internal
            %       string, abstract.break) scalar | Ice.Unset
            %     context
            %       character vector | Ice.Unset
            
            arguments
                obj (1, 1) abstract.optionalParamsPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('in', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = abstract.break.ice_readOpt(is_, 1);
            goto = abstract.as.ice_readOpt(is_, 2);
            if = is_.readProxyOpt(3, 'abstract.explicitPrx');
            internal = abstract.while.readOpt(is_, 5);
            context = is_.readStringOpt(7);
            is_.endEncapsulation();
        end

        function future = inAsync(obj, context)
            %INASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also in, Ice.Future.
            
            arguments
                obj (1, 1) abstract.optionalParamsPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = abstract.break.ice_readOpt(is_, 1);
                goto = abstract.as.ice_readOpt(is_, 2);
                if = is_.readProxyOpt(3, 'abstract.explicitPrx');
                internal = abstract.while.readOpt(is_, 5);
                context = is_.readStringOpt(7);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = goto;
                varargout{3} = if;
                varargout{4} = internal;
                varargout{5} = context;
            end
            future = obj.iceInvokeAsync('in', 0, true, [], 5, @unmarshal, {}, context);
        end

        function [returnValue, goto, if, internal, context] = foreach(obj, context)
            %FOREACH
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       abstract.break scalar | Ice.Unset
            %     goto
            %       abstract.as scalar | Ice.Unset
            %     if
            %       abstract.explicitPrx scalar | empty array of abstract.explicitPrx | Ice.Unset
            %     internal
            %       string, abstract.break) scalar | Ice.Unset
            %     context
            %       character vector | Ice.Unset
            
            arguments
                obj (1, 1) abstract.optionalParamsPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('foreach', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = abstract.break.ice_readOpt(is_, 1);
            goto = abstract.as.ice_readOpt(is_, 2);
            if = is_.readProxyOpt(3, 'abstract.explicitPrx');
            internal = abstract.while.readOpt(is_, 5);
            context = is_.readStringOpt(7);
            is_.endEncapsulation();
        end

        function future = foreachAsync(obj, context)
            %FOREACHASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also foreach, Ice.Future.
            
            arguments
                obj (1, 1) abstract.optionalParamsPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = abstract.break.ice_readOpt(is_, 1);
                goto = abstract.as.ice_readOpt(is_, 2);
                if = is_.readProxyOpt(3, 'abstract.explicitPrx');
                internal = abstract.while.readOpt(is_, 5);
                context = is_.readStringOpt(7);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = goto;
                varargout{3} = if;
                varargout{4} = internal;
                varargout{5} = context;
            end
            future = obj.iceInvokeAsync('foreach', 0, true, [], 5, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::abstract::optionalParams';
        end

        function r = ice_read(is)
            r = is.readProxy('abstract.optionalParamsPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::abstract::optionalParams.
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
            %     r - A abstract.optionalParamsPrx scalar if the target object implements Slice interface 
            %       ::abstract::optionalParams; otherwise, an empty array of abstract.optionalParamsPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, abstract.optionalParamsPrx.ice_staticId(), 'abstract.optionalParamsPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a abstract.optionalParamsPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new abstract.optionalParamsPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'abstract.optionalParamsPrx', varargin{:});
        end
    end
end
