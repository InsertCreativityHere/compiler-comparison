% EventPrx   Summary of EventPrx
%
% EventPrx Methods:
%   pub
%   pubAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Event.ice by slice2matlab version 3.7.10

classdef EventPrx < Ice.ObjectPrx
    methods
        function pub(obj, counter, varargin)
            % pub
            %
            % Parameters:
            %   counter (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(counter);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('pub', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = pubAsync(obj, counter, varargin)
            % pubAsync
            %
            % Parameters:
            %   counter (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(counter);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('pub', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Event';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.EventPrx');
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
            % Returns (Test.EventPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.EventPrx.ice_staticId(), 'Test.EventPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.EventPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.EventPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = EventPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
