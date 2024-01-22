% D   Summary of D
%
% D Properties:
%   ds
%   seq
%   ao

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

classdef D < Test.B
    properties
        ds char
        seq
        ao
    end
    methods
        function obj = D(requiredA, ma, mb, mc, requiredB, md, ds, seq, ao)
            if nargin == 0
                requiredA = 0;
                ma = IceInternal.UnsetI.Instance;
                mb = IceInternal.UnsetI.Instance;
                mc = IceInternal.UnsetI.Instance;
                requiredB = 0;
                md = IceInternal.UnsetI.Instance;
                ds = '';
                seq = IceInternal.UnsetI.Instance;
                ao = IceInternal.UnsetI.Instance;
                v = { requiredA, ma, mb, mc, requiredB, md };
            elseif eq(requiredA, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [], [] };
            else
                v = { requiredA, ma, mb, mc, requiredB, md };
            end;
            obj = obj@Test.B(v{:});
            if ne(requiredA, IceInternal.NoInit.Instance)
                obj.ds = ds;
                obj.seq = seq;
                obj.ao = ao;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::D', -1, false);
            os.writeString(obj.ds);
            os.writeStringSeqOpt(990, obj.seq);
            os.writeValueOpt(1000, obj.ao);
            os.endSlice();
            iceWriteImpl@Test.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.ds = is.readString();
            obj.seq = is.readStringSeqOpt(990);
            is.readValueOpt(1000, @obj.iceSetMember_ao, 'Test.A');
            is.endSlice();
            iceReadImpl@Test.B(obj, is);
        end
        function iceSetMember_ao(obj, v)
            obj.ao = v;
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::D';
        end
    end
end
