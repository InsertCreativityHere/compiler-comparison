classdef functionPrx < Ice.ObjectPrx
    %FUNCTIONPRX
    %
    %   Creation
    %     Syntax
    %       prx = and.functionPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   functionPrx Methods:
    %     continue
    %     continueAsync - An asynchronous continue.
    %
    %   functionPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::and::function.
    %     uncheckedCast - Creates a functionPrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function continue(obj, declare, default, context)
            %CONTINUE
            %
            %   Input Arguments
            %     declare
            %       int32 scalar
            %     default
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) and.functionPrx
                declare (1, 1) int32
                default (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(declare);
            os_.writeInt(default);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('continue', 0, false, os_, false, {}, context);
        end

        function future = continueAsync(obj, declare, default, context)
            %CONTINUEASYNC
            %
            %   Input Arguments
            %     declare
            %       int32 scalar
            %     default
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also continue, Ice.Future.
            
            arguments
                obj (1, 1) and.functionPrx
                declare (1, 1) int32
                default (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(declare);
            os_.writeInt(default);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('continue', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::and::function';
        end

        function r = ice_read(is)
            r = is.readProxy('and.functionPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::and::function.
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
            %     r - A and.functionPrx scalar if the target object implements Slice interface 
            %       ::and::function; otherwise, an empty array of and.functionPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, and.functionPrx.ice_staticId(), 'and.functionPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a and.functionPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new and.functionPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.functionPrx', varargin{:});
        end
    end
end
