% Opt   Summary of Opt
%
% Opt Properties:
%   s1
%   c1seq
%   s1dict

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.7.9

classdef Opt < Ice.Value
    properties
        s1
        c1seq
        s1dict
    end
    methods
        function obj = Opt(s1, c1seq, s1dict)
            if nargin == 0
                obj.s1 = IceInternal.UnsetI.Instance;
                obj.c1seq = IceInternal.UnsetI.Instance;
                obj.s1dict = IceInternal.UnsetI.Instance;
            elseif ne(s1, IceInternal.NoInit.Instance)
                obj.s1 = s1;
                obj.c1seq = c1seq;
                obj.s1dict = s1dict;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Hidden=true)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            if obj.s1 ~= Ice.Unset
                obj.s1 = obj.s1.ice_convert();
            end
            if obj.c1seq ~= Ice.Unset
                obj.c1seq = LocalTest.C1Seq.convert(obj.c1seq);
            end
            if obj.s1dict ~= Ice.Unset
                obj.s1dict = LocalTest.S1Dict.convert(obj.s1dict);
            end
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::Opt', -1, true);
            LocalTest.S1.ice_writeOpt(os, 1, obj.s1);
            LocalTest.C1Seq.writeOpt(os, 2, obj.c1seq);
            LocalTest.S1Dict.writeOpt(os, 3, obj.s1dict);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s1 = LocalTest.S1.ice_readOpt(is, 1);
            obj.c1seq = LocalTest.C1Seq.readOpt(is, 2);
            obj.s1dict = LocalTest.S1Dict.readOpt(is, 3);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::LocalTest::Opt';
        end
    end
end
