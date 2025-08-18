classdef PingReplyPrx < Ice.ObjectPrx
    %PINGREPLYPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.PingReplyPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   PingReplyPrx Methods:
    %     reply
    %     replyAsync - An asynchronous reply.
    %
    %   PingReplyPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::PingReply.
    %     uncheckedCast - Creates a PingReplyPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function reply(obj, context)
            %REPLY
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.PingReplyPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('reply', 0, false, [], false, {}, context);
        end

        function future = replyAsync(obj, context)
            %REPLYASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also reply, Ice.Future.
            
            arguments
                obj (1, 1) Test.PingReplyPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('reply', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::PingReply';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.PingReplyPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::PingReply.
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
            %     r - A Test.PingReplyPrx scalar if the target object implements Slice interface 
            %       ::Test::PingReply; otherwise, an empty array of Test.PingReplyPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.PingReplyPrx.ice_staticId(), 'Test.PingReplyPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.PingReplyPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.PingReplyPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.PingReplyPrx', varargin{:});
        end
    end
end
