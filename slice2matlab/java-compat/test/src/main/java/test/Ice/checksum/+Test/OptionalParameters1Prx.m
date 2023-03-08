% OptionalParameters1Prx   Summary of OptionalParameters1Prx
%
% OptionalParameters1Prx Methods:
%   op1
%   op1Async
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Types.ice by slice2matlab version 3.7.9

classdef OptionalParameters1Prx < Ice.ObjectPrx
    methods
        function op1(obj, firstName, secondName, emailAddress, varargin)
            % op1
            %
            % Parameters:
            %   firstName (char)
            %   secondName (char)
            %   emailAddress (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(firstName);
            os_.writeStringOpt(1, secondName);
            os_.writeStringOpt(2, emailAddress);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('op1', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = op1Async(obj, firstName, secondName, emailAddress, varargin)
            % op1Async
            %
            % Parameters:
            %   firstName (char)
            %   secondName (char)
            %   emailAddress (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(firstName);
            os_.writeStringOpt(1, secondName);
            os_.writeStringOpt(2, emailAddress);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('op1', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::OptionalParameters1';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.OptionalParameters1Prx');
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
            % Returns (Test.OptionalParameters1Prx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.OptionalParameters1Prx.ice_staticId(), 'Test.OptionalParameters1Prx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.OptionalParameters1Prx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.OptionalParameters1Prx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = OptionalParameters1Prx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
