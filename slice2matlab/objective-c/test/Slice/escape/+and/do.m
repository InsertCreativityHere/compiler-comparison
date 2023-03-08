% do   Summary of do
%
% do Properties:
%   if_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

classdef do < Ice.Value
    properties
        if_ int32
    end
    methods
        function obj = do(if_)
            if nargin == 0
                obj.if_ = 0;
            elseif ne(if_, IceInternal.NoInit.Instance)
                obj.if_ = if_;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::and::do', -1, true);
            os.writeInt(obj.if_);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.if_ = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::do';
        end
    end
end
