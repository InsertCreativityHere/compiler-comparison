% C   Summary of C
%
% C Properties:
%   ss
%   ms

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef C < Test.B
    properties
        ss char
        ms
    end
    methods
        function obj = C(requiredA, ma, mb, mc, requiredB, md, ss, ms)
            if nargin == 0
                requiredA = 0;
                ma = IceInternal.UnsetI.Instance;
                mb = IceInternal.UnsetI.Instance;
                mc = IceInternal.UnsetI.Instance;
                requiredB = 0;
                md = IceInternal.UnsetI.Instance;
                ss = '';
                ms = IceInternal.UnsetI.Instance;
                v = { requiredA, ma, mb, mc, requiredB, md };
            elseif eq(requiredA, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [], [], [] };
            else
                v = { requiredA, ma, mb, mc, requiredB, md };
            end;
            obj = obj@Test.B(v{:});
            if ne(requiredA, IceInternal.NoInit.Instance)
                obj.ss = ss;
                obj.ms = ms;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C', -1, false);
            os.writeString(obj.ss);
            os.writeStringOpt(890, obj.ms);
            os.endSlice();
            iceWriteImpl@Test.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.ss = is.readString();
            obj.ms = is.readStringOpt(890);
            is.endSlice();
            iceReadImpl@Test.B(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::C';
        end
    end
end
