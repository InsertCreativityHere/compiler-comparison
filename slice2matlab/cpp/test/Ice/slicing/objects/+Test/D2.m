% D2   Summary of D2
%
% D2 Properties:
%   sd2
%   pd2

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.7.10

classdef D2 < Test.B
    properties
        sd2 char
        pd2
    end
    methods
        function obj = D2(sb, pb, sd2, pd2)
            if nargin == 0
                sb = '';
                pb = [];
                sd2 = '';
                pd2 = [];
                v = { sb, pb };
            elseif eq(sb, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [] };
            else
                v = { sb, pb };
            end;
            obj = obj@Test.B(v{:});
            if ne(sb, IceInternal.NoInit.Instance)
                obj.sd2 = sd2;
                obj.pd2 = pd2;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::D2', -1, false);
            os.writeString(obj.sd2);
            os.writeValue(obj.pd2);
            os.endSlice();
            iceWriteImpl@Test.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sd2 = is.readString();
            is.readValue(@obj.iceSetMember_pd2, 'Test.B');
            is.endSlice();
            iceReadImpl@Test.B(obj, is);
        end
        function iceSetMember_pd2(obj, v)
            obj.pd2 = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::D2';
        end
    end
end
