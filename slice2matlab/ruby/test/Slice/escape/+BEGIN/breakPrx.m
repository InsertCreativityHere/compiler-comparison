classdef breakPrx < Ice.ObjectPrx
    %BREAKPRX
    %
    %   Creation
    %     Syntax
    %       prx = BEGIN.breakPrx(communicator, proxyString)
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
    %     instance_variables
    %     instance_variablesAsync - An asynchronous instance_variables.
    %
    %   breakPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::BEGIN::break.
    %     uncheckedCast - Creates a breakPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function def = case(obj, clone, context)
            %CASE
            %
            %   Input Arguments
            %     clone
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     def
            %       int32 scalar
            
            arguments
                obj (1, 1) BEGIN.breakPrx
                clone (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(clone);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('case', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            def = is_.readInt();
            is_.endEncapsulation();
        end

        function future = caseAsync(obj, clone, context)
            %CASEASYNC
            %
            %   Input Arguments
            %     clone
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
                obj (1, 1) BEGIN.breakPrx
                clone (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(clone);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                def = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = def;
            end
            future = obj.iceInvokeAsync('case', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = instance_variables(obj, context)
            %INSTANCE_VARIABLES
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       BEGIN.END scalar
            
            arguments
                obj (1, 1) BEGIN.breakPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('instance_variables', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = BEGIN.END.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = instance_variablesAsync(obj, context)
            %INSTANCE_VARIABLESASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also instance_variables, Ice.Future.
            
            arguments
                obj (1, 1) BEGIN.breakPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = BEGIN.END.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('instance_variables', 0, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::BEGIN::break';
        end

        function r = ice_read(is)
            r = is.readProxy('BEGIN.breakPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::BEGIN::break.
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
            %     r - A BEGIN.breakPrx scalar if the target object implements Slice interface 
            %       ::BEGIN::break; otherwise, an empty array of BEGIN.breakPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, BEGIN.breakPrx.ice_staticId(), 'BEGIN.breakPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a BEGIN.breakPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new BEGIN.breakPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'BEGIN.breakPrx', varargin{:});
        end
    end
end
