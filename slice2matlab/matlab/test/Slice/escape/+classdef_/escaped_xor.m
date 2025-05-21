
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef escaped_xor < classdef_.logical_
    properties
        return_ int32
    end
    methods
        function obj = escaped_xor(else_, for_, int64, return_)
            if nargin == 0
                else_ = classdef_.persistent_.break_;
                for_ = classdef_.global_();
                int64 = true;
                return_ = 1;
                v = { else_, for_, int64 };
            elseif eq(else_, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [] };
            else
                v = { else_, for_, int64 };
            end
            obj = obj@classdef_.logical_(v{:});
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
            os.startSlice('::classdef::xor', -1, false);
            os.writeInt(obj.return_);
            os.endSlice();
            iceWriteImpl@classdef_.logical_(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.return_ = is.readInt();
            is.endSlice();
            iceReadImpl@classdef_.logical_(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::classdef::xor';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::classdef::xor'
    end
end
