% BaseInterface9Prx   Summary of BaseInterface9Prx
%
% BaseInterface9Prx Methods:
%   baseOp
%   baseOpAsync
%   baseOp2
%   baseOp2Async
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Types.ice by slice2matlab version 3.7.9

classdef BaseInterface9Prx < Ice.ObjectPrx
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
        function s = baseOp2(obj, i, varargin)
            % baseOp2
            %
            % Parameters:
            %   i (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('baseOp2', 0, true, os_, true, Test.BaseInterface9Prx.baseOp2_ex_, varargin{:});
            is_.startEncapsulation();
            s = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = baseOp2Async(obj, i, varargin)
            % baseOp2Async
            %
            % Parameters:
            %   i (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                s = is_.readString();
                is_.endEncapsulation();
                varargout{1} = s;
            end
            r_ = obj.iceInvokeAsync('baseOp2', 0, true, os_, 1, @unmarshal, Test.BaseInterface9Prx.baseOp2_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::BaseInterface9';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.BaseInterface9Prx');
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
            % Returns (Test.BaseInterface9Prx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.BaseInterface9Prx.ice_staticId(), 'Test.BaseInterface9Prx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.BaseInterface9Prx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.BaseInterface9Prx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = BaseInterface9Prx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        baseOp2_ex_ = { 'Test.Exception1' }
    end
end
