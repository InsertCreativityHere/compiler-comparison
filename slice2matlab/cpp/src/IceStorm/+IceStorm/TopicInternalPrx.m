% TopicInternalPrx   Summary of TopicInternalPrx
%
% Internal operations for a topic.
%
% TopicInternalPrx Methods:
%   getLinkProxy - Retrieve a proxy to the TopicLink interface.
%   getLinkProxyAsync - Retrieve a proxy to the TopicLink interface.
%   reap - Reap the given identities.
%   reapAsync - Reap the given identities.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also IceStorm.Topic

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStormInternal.ice by slice2matlab version 3.7.10

classdef TopicInternalPrx < IceStorm.TopicPrx
    methods
        function result = getLinkProxy(obj, varargin)
            % getLinkProxy   Retrieve a proxy to the TopicLink interface.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (IceStorm.TopicLinkPrx) - The TopicLink for the Topic.
            
            is_ = obj.iceInvoke('getLinkProxy', 2, true, [], true, {}, varargin{:});
            is_.startEncapsulation();
            result = IceStorm.TopicLinkPrx.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = getLinkProxyAsync(obj, varargin)
            % getLinkProxyAsync   Retrieve a proxy to the TopicLink interface.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceStorm.TopicLinkPrx.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getLinkProxy', 2, true, [], 1, @unmarshal, {}, varargin{:});
        end
        function reap(obj, id, varargin)
            % reap   Reap the given identities.
            %
            % Parameters:
            %   id (Ice.IdentitySeq) - The sequence of identities.
            %   context (containers.Map) - Optional request context.
            %
            % Exceptions:
            %   IceStorm.ReapWouldBlock - Raised if the reap call would block.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('reap', 0, true, os_, false, IceStorm.TopicInternalPrx.reap_ex_, varargin{:});
        end
        function r_ = reapAsync(obj, id, varargin)
            % reapAsync   Reap the given identities.
            %
            % Parameters:
            %   id (Ice.IdentitySeq) - The sequence of identities.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceStorm.ReapWouldBlock - Raised if the reap call would block.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.IdentitySeq.write(os_, id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('reap', 0, true, os_, 0, [], IceStorm.TopicInternalPrx.reap_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceStorm::TopicInternal';
        end
        function r = ice_read(is)
            r = is.readProxy('IceStorm.TopicInternalPrx');
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
            % Returns (IceStorm.TopicInternalPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.TopicInternalPrx.ice_staticId(), 'IceStorm.TopicInternalPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceStorm.TopicInternalPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.TopicInternalPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TopicInternalPrx(communicator, encoding, impl, bytes)
            obj = obj@IceStorm.TopicPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        reap_ex_ = { 'IceStorm.ReapWouldBlock' }
    end
end
