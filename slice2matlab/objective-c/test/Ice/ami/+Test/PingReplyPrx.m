% PingReplyPrx   Summary of PingReplyPrx
%
% PingReplyPrx Methods:
%   reply
%   replyAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from AMITest.ice by slice2matlab version 3.7.9

classdef PingReplyPrx < Ice.ObjectPrx
    methods
        function reply(obj, varargin)
            % reply
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('reply', 0, false, [], false, {}, varargin{:});
        end
        function r_ = replyAsync(obj, varargin)
            % replyAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('reply', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::PingReply';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.PingReplyPrx');
        end
        function r = checkedCast(p, varargin)
            % checkedCast   Contacts the remote server to verify that the object implements this type.
            %   Raises a local exception if a communication error occurs. You can optionally supply a
            %   facet name and a context map.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %   context - The optional context map to send with the invocation.
            %
            % Returns (Test.PingReplyPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.PingReplyPrx.ice_staticId(), 'Test.PingReplyPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.PingReplyPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.PingReplyPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = PingReplyPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
