classdef elsifPrx < BEGIN.breakPrx
    %ELSIFPRX
    %
    %   Creation
    %     Syntax
    %       prx = BEGIN.elsifPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   elsifPrx Methods:
    %     for
    %     forAsync - An asynchronous for.
    %
    %   elsifPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::BEGIN::elsif.
    %     uncheckedCast - Creates a elsifPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = for(obj, freeze, if, methods, context)
            %FOR
            %
            %   Input Arguments
            %     freeze
            %       BEGIN.display scalar | empty array of BEGIN.display
            %     if
            %       BEGIN.breakPrx scalar | empty array of BEGIN.breakPrx
            %     methods
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       BEGIN.END scalar
            %
            %   Exceptions
            %     BEGIN.nil
            
            arguments
                obj (1, 1) BEGIN.elsifPrx
                freeze BEGIN.display {mustBeScalarOrEmpty}
                if BEGIN.breakPrx {mustBeScalarOrEmpty}
                methods (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(freeze);
            os_.writeProxy(if);
            os_.writeInt(methods);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('for', 0, true, os_, true, BEGIN.elsifPrx.for_ex_, context);
            is_.startEncapsulation();
            returnValue = BEGIN.END.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = forAsync(obj, freeze, if, methods, context)
            %FORASYNC
            %
            %   Input Arguments
            %     freeze
            %       BEGIN.display scalar | empty array of BEGIN.display
            %     if
            %       BEGIN.breakPrx scalar | empty array of BEGIN.breakPrx
            %     methods
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also for, Ice.Future.
            
            arguments
                obj (1, 1) BEGIN.elsifPrx
                freeze BEGIN.display {mustBeScalarOrEmpty}
                if BEGIN.breakPrx {mustBeScalarOrEmpty}
                methods (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(freeze);
            os_.writeProxy(if);
            os_.writeInt(methods);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = BEGIN.END.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('for', 0, true, os_, 1, @unmarshal, BEGIN.elsifPrx.for_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::BEGIN::elsif';
        end

        function r = ice_read(is)
            r = is.readProxy('BEGIN.elsifPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::BEGIN::elsif.
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
            %     r - A BEGIN.elsifPrx scalar if the target object implements Slice interface 
            %       ::BEGIN::elsif; otherwise, an empty array of BEGIN.elsifPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, BEGIN.elsifPrx.ice_staticId(), 'BEGIN.elsifPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a BEGIN.elsifPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new BEGIN.elsifPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'BEGIN.elsifPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        for_ex_ = { 'BEGIN.nil' }
    end
end
