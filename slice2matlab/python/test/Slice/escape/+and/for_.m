% for_   Summary of for_
%
% for_ Properties:
%   lambda
%   from
%   global_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef for_ < Ice.Value
    properties
        lambda int32
        from
        global_ int32
    end
    methods
        function obj = for_(lambda, from, global_)
            if nargin == 0
                obj.lambda = 0;
                obj.from = [];
                obj.global_ = 0;
            elseif ne(lambda, IceInternal.NoInit.Instance)
                obj.lambda = lambda;
                obj.from = from;
                obj.global_ = global_;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::and::for', -1, true);
            os.writeInt(obj.lambda);
            os.writeProxy(obj.from);
            os.writeInt(obj.global_);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.lambda = is.readInt();
            obj.from = and.execPrx.ice_read(is);
            obj.global_ = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::for';
        end
    end
end
