% OptionalParameters3Prx   Summary of OptionalParameters3Prx
%
% OptionalParameters3Prx Methods:
%   op1
%   op1Async
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from CTypes.ice by slice2matlab version 3.7.10

classdef OptionalParameters3Prx < Ice.ObjectPrx
    methods
        function op1(obj, firstName, emailAddress, secondName, varargin)
            % op1
            %
            % Parameters:
            %   firstName (char)
            %   emailAddress (char)
            %   secondName (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(firstName);
            os_.writeString(secondName);
            os_.writeStringOpt(1, emailAddress);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('op1', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = op1Async(obj, firstName, emailAddress, secondName, varargin)
            % op1Async
            %
            % Parameters:
            %   firstName (char)
            %   emailAddress (char)
            %   secondName (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(firstName);
            os_.writeString(secondName);
            os_.writeStringOpt(1, emailAddress);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('op1', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::OptionalParameters3';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.OptionalParameters3Prx');
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
            % Returns (Test.OptionalParameters3Prx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.OptionalParameters3Prx.ice_staticId(), 'Test.OptionalParameters3Prx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.OptionalParameters3Prx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.OptionalParameters3Prx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = OptionalParameters3Prx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
