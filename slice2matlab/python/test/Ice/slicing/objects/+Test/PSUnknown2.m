
% Copyright (c) ZeroC, Inc.
% Generated from ServerPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef PSUnknown2 < Test.Preserved
    properties
        pb
    end
    methods
        function obj = PSUnknown2(pi, ps, pb)
            if nargin == 0
                pi = 0;
                ps = '';
                pb = [];
                v = { pi, ps };
            elseif eq(pi, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [] };
            else
                v = { pi, ps };
            end
            obj = obj@Test.Preserved(v{:});
            if ne(pi, IceInternal.NoInit.Instance)
                obj.pb = pb;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PSUnknown2', -1, false);
            os.writeValue(obj.pb);
            os.endSlice();
            iceWriteImpl@Test.Preserved(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetMember_pb, 'Test.PBase');
            is.endSlice();
            iceReadImpl@Test.Preserved(obj, is);
        end
        function iceSetMember_pb(obj, v)
            obj.pb = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::PSUnknown2';
        end
    end
end
