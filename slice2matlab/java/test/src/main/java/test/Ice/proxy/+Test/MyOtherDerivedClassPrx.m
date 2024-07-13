% MyOtherDerivedClassPrx   Summary of MyOtherDerivedClassPrx
%
% MyOtherDerivedClassPrx Methods:
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyOtherDerivedClassPrx < Test.MyClassPrx
    methods
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MyOtherDerivedClass';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MyOtherDerivedClassPrx');
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
            % Returns (Test.MyOtherDerivedClassPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyOtherDerivedClassPrx.ice_staticId(), 'Test.MyOtherDerivedClassPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MyOtherDerivedClassPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyOtherDerivedClassPrx', varargin{:});
        end
    end
end
