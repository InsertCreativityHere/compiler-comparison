classdef SinglePrx < Ice.ObjectPrx
    %SINGLEPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.SinglePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   SinglePrx Methods:
    %     event
    %     eventAsync - An asynchronous event.
    %
    %   SinglePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Single.
    %     uncheckedCast - Creates a SinglePrx from another proxy without any validation.
    %
    %   Generated from Single.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function event(obj, i, context)
            %EVENT
            %
            %   Input Arguments
            %     i
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.SinglePrx
                i (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('event', 0, false, os_, false, {}, context);
        end

        function future = eventAsync(obj, i, context)
            %EVENTASYNC
            %
            %   Input Arguments
            %     i
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also event, Ice.Future.
            
            arguments
                obj (1, 1) Test.SinglePrx
                i (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('event', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Single';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.SinglePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Single.
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
            %     r - A Test.SinglePrx scalar if the target object implements Slice interface 
            %       ::Test::Single; otherwise, an empty array of Test.SinglePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.SinglePrx.ice_staticId(), 'Test.SinglePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.SinglePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.SinglePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.SinglePrx', varargin{:});
        end
    end
end
