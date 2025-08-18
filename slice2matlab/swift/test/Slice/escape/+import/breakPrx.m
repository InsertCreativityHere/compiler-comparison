classdef breakPrx < Ice.ObjectPrx
    %BREAKPRX
    %
    %   Creation
    %     Syntax
    %       prx = import.breakPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   breakPrx Methods:
    %     case
    %     caseAsync - An asynchronous case.
    %
    %   breakPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::import::break.
    %     uncheckedCast - Creates a breakPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function try = case(obj, class, context)
            %CASE
            %
            %   Input Arguments
            %     class
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     try
            %       int32 scalar
            
            arguments
                obj (1, 1) import.breakPrx
                class (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(class);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('case', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            try = is_.readInt();
            is_.endEncapsulation();
        end

        function future = caseAsync(obj, class, context)
            %CASEASYNC
            %
            %   Input Arguments
            %     class
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also case, Ice.Future.
            
            arguments
                obj (1, 1) import.breakPrx
                class (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(class);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                try = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = try;
            end
            future = obj.iceInvokeAsync('case', 0, true, os_, 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::import::break';
        end

        function r = ice_read(is)
            r = is.readProxy('import.breakPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::import::break.
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
            %     r - A import.breakPrx scalar if the target object implements Slice interface 
            %       ::import::break; otherwise, an empty array of import.breakPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, import.breakPrx.ice_staticId(), 'import.breakPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a import.breakPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new import.breakPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'import.breakPrx', varargin{:});
        end
    end
end
