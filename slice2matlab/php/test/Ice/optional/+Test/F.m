% F   Summary of F
%
% F Properties:
%   af

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef F < Test.E
    properties
        af
    end
    methods
        function obj = F(ae, af)
            if nargin == 0
                ae = [];
                af = IceInternal.UnsetI.Instance;
                v = { ae };
            elseif eq(ae, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { ae };
            end;
            obj = obj@Test.E(v{:});
            if ne(ae, IceInternal.NoInit.Instance)
                obj.af = af;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::F', -1, false);
            os.writeValueOpt(1, obj.af);
            os.endSlice();
            iceWriteImpl@Test.E(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValueOpt(1, @obj.iceSetMember_af, 'Test.A');
            is.endSlice();
            iceReadImpl@Test.E(obj, is);
        end
        function iceSetMember_af(obj, v)
            obj.af = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::F';
        end
    end
end
