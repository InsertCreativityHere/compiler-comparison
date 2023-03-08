% OptionalWithCustom   Summary of OptionalWithCustom
%
% OptionalWithCustom Properties:
%   l
%   lp
%   s

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OptionalTest.ice by slice2matlab version 3.7.9

classdef OptionalWithCustom < Ice.Value
    properties
        l
        s
    end
    properties(Access=protected)
        lp
    end
    methods
        function obj = OptionalWithCustom(l, lp, s)
            if nargin == 0
                obj.l = IceInternal.UnsetI.Instance;
                obj.lp = IceInternal.UnsetI.Instance;
                obj.s = IceInternal.UnsetI.Instance;
            elseif ne(l, IceInternal.NoInit.Instance)
                obj.l = l;
                obj.lp = lp;
                obj.s = s;
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
            Test.ClassVarStruct.ice_writeOpt(os, 3, obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.l = Test.SmallStructList.readOpt(is, 1);
            obj.lp = Test.SmallStructList.readOpt(is, 2);
            obj.s = Test.ClassVarStruct.ice_readOpt(is, 3);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::OptionalWithCustom';
        end
    end
end
