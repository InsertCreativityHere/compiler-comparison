classdef doPrx < import.breakPrx
    %DOPRX
    %
    %   Creation
    %     Syntax
    %       prx = import.doPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   doPrx Methods:
    %     goto
    %     gotoAsync - An asynchronous goto.
    %     public
    %     publicAsync - An asynchronous public.
    %
    %   doPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::import::do.
    %     uncheckedCast - Creates a doPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function public(obj, context)
            %PUBLIC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) import.doPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('public', 0, false, [], false, {}, context);
        end

        function future = publicAsync(obj, context)
            %PUBLICASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also public, Ice.Future.
            
            arguments
                obj (1, 1) import.doPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('public', 0, false, [], 0, [], {}, context);
        end

        function returnValue = goto(obj, if, d, private, mutable, namespace, not, or, context)
            %GOTO
            %
            %   Input Arguments
            %     if
            %       import.continue scalar
            %     d
            %       import.guard scalar
            %     private
            %       import.switch scalar | empty array of import.switch
            %     mutable
            %       import.doPrx scalar | empty array of import.doPrx
            %     namespace
            %       import.breakPrx scalar | empty array of import.breakPrx
            %     not
            %       import.switch scalar | empty array of import.switch
            %     or
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       import.guard scalar
            %
            %   Exceptions
            %     import.return
            %     import.as
            
            arguments
                obj (1, 1) import.doPrx
                if (1, 1) import.continue
                d (1, 1) import.guard
                private import.switch {mustBeScalarOrEmpty}
                mutable import.doPrx {mustBeScalarOrEmpty}
                namespace import.breakPrx {mustBeScalarOrEmpty}
                not import.switch {mustBeScalarOrEmpty}
                or (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            import.continue.ice_write(os_, if);
            import.guard.ice_write(os_, d);
            os_.writeValue(private);
            os_.writeProxy(mutable);
            os_.writeProxy(namespace);
            os_.writeValue(not);
            os_.writeLong(or);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('goto', 0, true, os_, true, import.doPrx.goto_ex_, context);
            is_.startEncapsulation();
            returnValue = import.guard.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = gotoAsync(obj, if, d, private, mutable, namespace, not, or, context)
            %GOTOASYNC
            %
            %   Input Arguments
            %     if
            %       import.continue scalar
            %     d
            %       import.guard scalar
            %     private
            %       import.switch scalar | empty array of import.switch
            %     mutable
            %       import.doPrx scalar | empty array of import.doPrx
            %     namespace
            %       import.breakPrx scalar | empty array of import.breakPrx
            %     not
            %       import.switch scalar | empty array of import.switch
            %     or
            %       int64 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also goto, Ice.Future.
            
            arguments
                obj (1, 1) import.doPrx
                if (1, 1) import.continue
                d (1, 1) import.guard
                private import.switch {mustBeScalarOrEmpty}
                mutable import.doPrx {mustBeScalarOrEmpty}
                namespace import.breakPrx {mustBeScalarOrEmpty}
                not import.switch {mustBeScalarOrEmpty}
                or (1, 1) int64
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            import.continue.ice_write(os_, if);
            import.guard.ice_write(os_, d);
            os_.writeValue(private);
            os_.writeProxy(mutable);
            os_.writeProxy(namespace);
            os_.writeValue(not);
            os_.writeLong(or);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = import.guard.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('goto', 0, true, os_, 1, @unmarshal, import.doPrx.goto_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::import::do';
        end

        function r = ice_read(is)
            r = is.readProxy('import.doPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::import::do.
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
            %     r - A import.doPrx scalar if the target object implements Slice interface 
            %       ::import::do; otherwise, an empty array of import.doPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, import.doPrx.ice_staticId(), 'import.doPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a import.doPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new import.doPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'import.doPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        goto_ex_ = { 'import.as', 'import.return' }
    end
end
