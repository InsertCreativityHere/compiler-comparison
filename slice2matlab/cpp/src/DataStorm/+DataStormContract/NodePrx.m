% NodePrx   Summary of NodePrx
%
% NodePrx Methods:
%   initiateCreateSession
%   initiateCreateSessionAsync
%   createSession
%   createSessionAsync
%   confirmCreateSession
%   confirmCreateSessionAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef NodePrx < Ice.ObjectPrx
    methods
        function initiateCreateSession(obj, publisher, varargin)
            % initiateCreateSession
            %
            % Parameters:
            %   publisher (DataStormContract.NodePrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('initiateCreateSession', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = initiateCreateSessionAsync(obj, publisher, varargin)
            % initiateCreateSessionAsync
            %
            % Parameters:
            %   publisher (DataStormContract.NodePrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('initiateCreateSession', 0, false, os_, 0, [], {}, varargin{:});
        end
        function createSession(obj, subscriber, session, fromRelay, varargin)
            % createSession
            %
            % Parameters:
            %   subscriber (DataStormContract.NodePrx)
            %   session (DataStormContract.SubscriberSessionPrx)
            %   fromRelay (logical)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(subscriber);
            os_.writeProxy(session);
            os_.writeBool(fromRelay);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('createSession', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = createSessionAsync(obj, subscriber, session, fromRelay, varargin)
            % createSessionAsync
            %
            % Parameters:
            %   subscriber (DataStormContract.NodePrx)
            %   session (DataStormContract.SubscriberSessionPrx)
            %   fromRelay (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(subscriber);
            os_.writeProxy(session);
            os_.writeBool(fromRelay);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('createSession', 0, false, os_, 0, [], {}, varargin{:});
        end
        function confirmCreateSession(obj, publisher, session, varargin)
            % confirmCreateSession
            %
            % Parameters:
            %   publisher (DataStormContract.NodePrx)
            %   session (DataStormContract.PublisherSessionPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            os_.writeProxy(session);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('confirmCreateSession', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = confirmCreateSessionAsync(obj, publisher, session, varargin)
            % confirmCreateSessionAsync
            %
            % Parameters:
            %   publisher (DataStormContract.NodePrx)
            %   session (DataStormContract.PublisherSessionPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(publisher);
            os_.writeProxy(session);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('confirmCreateSession', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::DataStormContract::Node';
        end
        function r = ice_read(is)
            r = is.readProxy('DataStormContract.NodePrx');
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
            % Returns (DataStormContract.NodePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, DataStormContract.NodePrx.ice_staticId(), 'DataStormContract.NodePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (DataStormContract.NodePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'DataStormContract.NodePrx', varargin{:});
        end
    end
end
