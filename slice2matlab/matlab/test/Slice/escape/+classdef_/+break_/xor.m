% xor   Summary of xor
%
% xor Properties:
%   return_

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef xor < classdef_.break_.logical
    properties
        return_ int32
    end
    methods
        function obj = xor(else_, for_, int64, return_)
            if nargin == 0
                else_ = classdef_.break_.bitand.enumeration_;
                for_ = classdef_.break_.bitor();
                int64 = true;
                return_ = 1;
                v = { else_, for_, int64 };
            elseif eq(else_, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [] };
            else
                v = { else_, for_, int64 };
            end
            obj = obj@classdef_.break_.logical(v{:});
            if ne(else_, IceInternal.NoInit.Instance)
                obj.return_ = return_;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::classdef::break::xor', -1, false);
            os.writeInt(obj.return_);
            os.endSlice();
            iceWriteImpl@classdef_.break_.logical(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.return_ = is.readInt();
            is.endSlice();
            iceReadImpl@classdef_.break_.logical(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::classdef::break::xor';
        end
    end
end
