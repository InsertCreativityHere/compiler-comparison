% D3   Summary of D3
%
% D3 Properties:
%   sd3
%   pd3

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.10

classdef D3 < Test.B
    properties
        sd3 char
        pd3
    end
    methods
        function obj = D3(sb, pb, sd3, pd3)
            if nargin == 0
                sb = '';
                pb = [];
                sd3 = '';
                pd3 = [];
                v = { sb, pb };
            elseif eq(sb, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [] };
            else
                v = { sb, pb };
            end;
            obj = obj@Test.B(v{:});
            if ne(sb, IceInternal.NoInit.Instance)
                obj.sd3 = sd3;
                obj.pd3 = pd3;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::D3', -1, false);
            os.writeString(obj.sd3);
            os.writeValue(obj.pd3);
            os.endSlice();
            iceWriteImpl@Test.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sd3 = is.readString();
            is.readValue(@obj.iceSetMember_pd3, 'Test.B');
            is.endSlice();
            iceReadImpl@Test.B(obj, is);
        end
        function iceSetMember_pd3(obj, v)
            obj.pd3 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::D3';
        end
    end
end
