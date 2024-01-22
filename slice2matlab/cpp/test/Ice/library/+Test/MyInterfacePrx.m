% MyInterfacePrx   Summary of MyInterfacePrx
%
% MyInterfacePrx Methods:
%   op
%   opAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyInterfacePrx < Ice.ObjectPrx
    methods
        function op(obj, throwIt, varargin)
            % op
            %
            % Parameters:
            %   throwIt (logical)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(throwIt);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('op', 0, true, os_, false, Test.MyInterfacePrx.op_ex_, varargin{:});
        end
        function r_ = opAsync(obj, throwIt, varargin)
            % opAsync
            %
            % Parameters:
            %   throwIt (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(throwIt);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('op', 0, true, os_, 0, [], Test.MyInterfacePrx.op_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MyInterface';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MyInterfacePrx');
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
            % Returns (Test.MyInterfacePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyInterfacePrx.ice_staticId(), 'Test.MyInterfacePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MyInterfacePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyInterfacePrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = MyInterfacePrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        op_ex_ = { 'Test.UserError' }
    end
end
