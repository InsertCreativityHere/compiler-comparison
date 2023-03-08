% D1   Summary of D1
%
% D1 Properties:
%   sd1
%   pd1

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef D1 < Test.B
    properties
        sd1 char
        pd1
    end
    methods
        function obj = D1(sb, pb, sd1, pd1)
            if nargin == 0
                sb = '';
                pb = [];
                sd1 = '';
                pd1 = [];
                v = { sb, pb };
            elseif eq(sb, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [] };
            else
                v = { sb, pb };
            end;
            obj = obj@Test.B(v{:});
            if ne(sb, IceInternal.NoInit.Instance)
                obj.sd1 = sd1;
                obj.pd1 = pd1;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::D1', -1, false);
            os.writeString(obj.sd1);
            os.writeValue(obj.pd1);
            os.endSlice();
            iceWriteImpl@Test.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sd1 = is.readString();
            is.readValue(@obj.iceSetMember_pd1, 'Test.B');
            is.endSlice();
            iceReadImpl@Test.B(obj, is);
        end
        function iceSetMember_pd1(obj, v)
            obj.pd1 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::D1';
        end
    end
end
