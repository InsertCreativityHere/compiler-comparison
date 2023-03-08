% BaseInterface5Prx   Summary of BaseInterface5Prx
%
% BaseInterface5Prx Methods:
%   baseOp
%   baseOpAsync
%   baseOp2
%   baseOp2Async
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef BaseInterface5Prx < Ice.ObjectPrx
    methods
        function baseOp(obj, varargin)
            % baseOp
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('baseOp', 0, false, [], false, {}, varargin{:});
        end
        function r_ = baseOpAsync(obj, varargin)
            % baseOpAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('baseOp', 0, false, [], 0, [], {}, varargin{:});
        end
        function baseOp2(obj, i, s, varargin)
            % baseOp2
            %
            % Parameters:
            %   i (int32)
            %   s (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            os_.writeString(s);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('baseOp2', 0, true, os_, false, Test.BaseInterface5Prx.baseOp2_ex_, varargin{:});
        end
        function r_ = baseOp2Async(obj, i, s, varargin)
            % baseOp2Async
            %
            % Parameters:
            %   i (int32)
            %   s (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            os_.writeString(s);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('baseOp2', 0, true, os_, 0, [], Test.BaseInterface5Prx.baseOp2_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::BaseInterface5';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.BaseInterface5Prx');
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
            % Returns (Test.BaseInterface5Prx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.BaseInterface5Prx.ice_staticId(), 'Test.BaseInterface5Prx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.BaseInterface5Prx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.BaseInterface5Prx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = BaseInterface5Prx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        baseOp2_ex_ = { 'Test.Exception1' }
    end
end
