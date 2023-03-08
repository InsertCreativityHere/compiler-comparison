% MyDerivedClassPrx   Summary of MyDerivedClassPrx
%
% Makes sure that proxy operations are correctly generated when extending an interface from
% a different module (ICE-7639).
%
% MyDerivedClassPrx Methods:
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OperationsTest.ice by slice2matlab version 3.7.9

classdef MyDerivedClassPrx < Test.MyClassPrx
    methods
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test2::MyDerivedClass';
        end
        function r = ice_read(is)
            r = is.readProxy('Test2.MyDerivedClassPrx');
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
            % Returns (Test2.MyDerivedClassPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test2.MyDerivedClassPrx.ice_staticId(), 'Test2.MyDerivedClassPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test2.MyDerivedClassPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test2.MyDerivedClassPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = MyDerivedClassPrx(communicator, encoding, impl, bytes)
            obj = obj@Test.MyClassPrx(communicator, encoding, impl, bytes);
        end
    end
end
