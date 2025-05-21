
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Base < Ice.Value
    properties
        while_ int32
    end
    methods
        function obj = Base(while_)
            if nargin == 0
                obj.while_ = 1;
            elseif ne(while_, IceInternal.NoInit.Instance)
                obj.while_ = while_;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::classdef::Base', -1, true);
            os.writeInt(obj.while_);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.while_ = is.readInt();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::classdef::Base';
        end
    end
    properties(Constant, Access=private)
        TypeId char = '::classdef::Base'
    end
end
