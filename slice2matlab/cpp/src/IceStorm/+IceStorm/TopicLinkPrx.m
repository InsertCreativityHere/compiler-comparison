classdef TopicLinkPrx < Ice.ObjectPrx
    %TOPICLINKPRX The TopicLink interface. This is used to forward events between federated Topic instances.
    %
    %   Creation
    %     Syntax
    %       prx = IceStorm.TopicLinkPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   TopicLinkPrx Methods:
    %     forward - Forward a sequence of events.
    %     forwardAsync - An asynchronous forward.
    %
    %   TopicLinkPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceStorm::TopicLink.
    %     uncheckedCast - Creates a TopicLinkPrx from another proxy without any validation.
    %
    %   See also IceStorm.TopicInternal
    %
    %   Generated from IceStormInternal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function forward(obj, events, context)
            %FORWARD Forward a sequence of events.
            %
            %   Input Arguments
            %     events - The events to forward.
            %       IceStorm.EventData vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) IceStorm.TopicLinkPrx
                events (1, :) IceStorm.EventData
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStorm.EventDataSeq.write(os_, events);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('forward', 0, false, os_, false, {}, context);
        end

        function future = forwardAsync(obj, events, context)
            %FORWARDASYNC Forward a sequence of events.
            %
            %   Input Arguments
            %     events - The events to forward.
            %       IceStorm.EventData vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also forward, Ice.Future.
            
            arguments
                obj (1, 1) IceStorm.TopicLinkPrx
                events (1, :) IceStorm.EventData
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            IceStorm.EventDataSeq.write(os_, events);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('forward', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceStorm::TopicLink';
        end

        function r = ice_read(is)
            r = is.readProxy('IceStorm.TopicLinkPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceStorm::TopicLink.
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
            %     r - A IceStorm.TopicLinkPrx scalar if the target object implements Slice interface 
            %       ::IceStorm::TopicLink; otherwise, an empty array of IceStorm.TopicLinkPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceStorm.TopicLinkPrx.ice_staticId(), 'IceStorm.TopicLinkPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceStorm.TopicLinkPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceStorm.TopicLinkPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceStorm.TopicLinkPrx', varargin{:});
        end
    end
end
