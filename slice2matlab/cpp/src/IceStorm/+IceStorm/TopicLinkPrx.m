% TopicLinkPrx   Summary of TopicLinkPrx
%
% The TopicLink interface. This is used to forward events between federated Topic instances.
%
% TopicLinkPrx Methods:
%   forward - Forward a sequence of events.
%   forwardAsync - Forward a sequence of events.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.
%
% See also IceStorm.TopicInternal

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from IceStormInternal.ice by slice2matlab version 3.7.10

classdef TopicLinkPrx < Ice.ObjectPrx
    methods
        function forward(obj, events_, varargin)
            % forward   Forward a sequence of events.
            %
            % Parameters:
            %   events_ (IceStorm.EventDataSeq) - The events to forward.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            IceStorm.EventDataSeq.write(os_, events_);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('forward', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = forwardAsync(obj, events_, varargin)
            % forwardAsync   Forward a sequence of events.
            %
            % Parameters:
            %   events_ (IceStorm.EventDataSeq) - The events to forward.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            IceStorm.EventDataSeq.write(os_, events_);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('forward', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceStorm::TopicLink';
        end
        function r = ice_read(is)
            r = is.readProxy('IceStorm.TopicLinkPrx');
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
            % Returns (IceStorm.TopicLinkPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.TopicLinkPrx.ice_staticId(), 'IceStorm.TopicLinkPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceStorm.TopicLinkPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.TopicLinkPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TopicLinkPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
