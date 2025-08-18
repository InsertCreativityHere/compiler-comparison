classdef EventPrx < Ice.ObjectPrx
    %EVENTPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.EventPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   EventPrx Methods:
    %     pub
    %     pubAsync - An asynchronous pub.
    %
    %   EventPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Event.
    %     uncheckedCast - Creates a EventPrx from another proxy without any validation.
    %
    %   Generated from Event.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function pub(obj, counter, context)
            %PUB
            %
            %   Input Arguments
            %     counter
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.EventPrx
                counter (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(counter);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('pub', 0, false, os_, false, {}, context);
        end

        function future = pubAsync(obj, counter, context)
            %PUBASYNC
            %
            %   Input Arguments
            %     counter
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also pub, Ice.Future.
            
            arguments
                obj (1, 1) Test.EventPrx
                counter (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(counter);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('pub', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Event';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.EventPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Event.
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
            %     r - A Test.EventPrx scalar if the target object implements Slice interface 
            %       ::Test::Event; otherwise, an empty array of Test.EventPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.EventPrx.ice_staticId(), 'Test.EventPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.EventPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.EventPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.EventPrx', varargin{:});
        end
    end
end
