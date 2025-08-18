classdef enddeclarePrx < and.diePrx & and.functionPrx
    %ENDDECLAREPRX
    %
    %   Creation
    %     Syntax
    %       prx = and.enddeclarePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   enddeclarePrx Methods:
    %     foreach
    %     foreachAsync - An asynchronous foreach.
    %
    %   enddeclarePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::and::enddeclare.
    %     uncheckedCast - Creates a enddeclarePrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function [returnValue, new, static] = foreach(obj, global, include, context)
            %FOREACH
            %
            %   Input Arguments
            %     global
            %       and.echo scalar | empty array of and.echo
            %     include
            %       and.functionPrx scalar | empty array of and.functionPrx | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       and.array scalar
            %     new
            %       and.array vector
            %     static
            %       string, and.array) scalar | Ice.Unset
            %
            %   Exceptions
            %     and.endif
            %     and.endwhile
            
            arguments
                obj (1, 1) and.enddeclarePrx
                global and.echo {mustBeScalarOrEmpty}
                include {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(global);
            os_.writeProxyOpt(1, include);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('foreach', 0, true, os_, true, and.enddeclarePrx.foreach_ex_, context);
            is_.startEncapsulation();
            new = and.endfor.read(is_);
            returnValue = and.array.ice_read(is_);
            static = and.endforeach.readOpt(is_, 2);
            is_.endEncapsulation();
        end

        function future = foreachAsync(obj, global, include, context)
            %FOREACHASYNC
            %
            %   Input Arguments
            %     global
            %       and.echo scalar | empty array of and.echo
            %     include
            %       and.functionPrx scalar | empty array of and.functionPrx | Ice.Unset
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also foreach, Ice.Future.
            
            arguments
                obj (1, 1) and.enddeclarePrx
                global and.echo {mustBeScalarOrEmpty}
                include {mustBeScalarOrEmpty}
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(global);
            os_.writeProxyOpt(1, include);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                new = and.endfor.read(is_);
                returnValue = and.array.ice_read(is_);
                static = and.endforeach.readOpt(is_, 2);
                is_.endEncapsulation();
                varargout{1} = returnValue;
                varargout{2} = new;
                varargout{3} = static;
            end
            future = obj.iceInvokeAsync('foreach', 0, true, os_, 3, @unmarshal, and.enddeclarePrx.foreach_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::and::enddeclare';
        end

        function r = ice_read(is)
            r = is.readProxy('and.enddeclarePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::and::enddeclare.
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
            %     r - A and.enddeclarePrx scalar if the target object implements Slice interface 
            %       ::and::enddeclare; otherwise, an empty array of and.enddeclarePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, and.enddeclarePrx.ice_staticId(), 'and.enddeclarePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a and.enddeclarePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new and.enddeclarePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.enddeclarePrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        foreach_ex_ = { 'and.endwhile', 'and.endif' }
    end
end
