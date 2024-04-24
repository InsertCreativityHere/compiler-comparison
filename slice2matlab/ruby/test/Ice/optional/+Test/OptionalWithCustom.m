% OptionalWithCustom   Summary of OptionalWithCustom
%
% OptionalWithCustom Properties:
%   l
%   lp

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef OptionalWithCustom < Ice.Value
    properties
        l
    end
    properties(Access=protected)
        lp
    end
    methods
        function obj = OptionalWithCustom(l, lp)
            if nargin == 0
                obj.l = IceInternal.UnsetI.Instance;
                obj.lp = IceInternal.UnsetI.Instance;
            elseif ne(l, IceInternal.NoInit.Instance)
                obj.l = l;
                obj.lp = lp;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::OptionalWithCustom', -1, true);
            Test.SmallStructList.writeOpt(os, 1, obj.l);
            Test.SmallStructList.writeOpt(os, 2, obj.lp);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.l = Test.SmallStructList.readOpt(is, 1);
            obj.lp = Test.SmallStructList.readOpt(is, 2);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::OptionalWithCustom';
        end
    end
end
