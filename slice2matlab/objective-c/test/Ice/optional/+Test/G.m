% G   Summary of G
%
% G Properties:
%   gg1Opt
%   gg2
%   gg2Opt
%   gg1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OptionalTest.ice by slice2matlab version 3.7.9

classdef G < Ice.Value
    properties
        gg1Opt
        gg2
        gg2Opt
        gg1
    end
    methods
        function obj = G(gg1Opt, gg2, gg2Opt, gg1)
            if nargin == 0
                obj.gg1Opt = IceInternal.UnsetI.Instance;
                obj.gg2 = [];
                obj.gg2Opt = IceInternal.UnsetI.Instance;
                obj.gg1 = [];
            elseif ne(gg1Opt, IceInternal.NoInit.Instance)
                obj.gg1Opt = gg1Opt;
                obj.gg2 = gg2;
                obj.gg2Opt = gg2Opt;
                obj.gg1 = gg1;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::G', -1, true);
            os.writeValue(obj.gg2);
            os.writeValue(obj.gg1);
            os.writeValueOpt(0, obj.gg2Opt);
            os.writeValueOpt(1, obj.gg1Opt);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_gg2, 'Test.G2');
            is.readValue(@obj.iceSetMember_gg1, 'Test.G1');
            is.readValueOpt(0, @obj.iceSetMember_gg2Opt, 'Test.G2');
            is.readValueOpt(1, @obj.iceSetMember_gg1Opt, 'Test.G1');
            is.endSlice();
        end
        function iceSetMember_gg1Opt(obj, v)
            obj.gg1Opt = v;
        end
        function iceSetMember_gg2(obj, v)
            obj.gg2 = v;
        end
        function iceSetMember_gg2Opt(obj, v)
            obj.gg2Opt = v;
        end
        function iceSetMember_gg1(obj, v)
            obj.gg1 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::G';
        end
    end
end
