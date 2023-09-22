% C2   Summary of C2
%
% C2 Properties:
%   l

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Package.ice by slice2matlab version 3.7.10

classdef C2 < Test2.C1
    properties
        l int64
    end
    methods
        function obj = C2(i, l)
            if nargin == 0
                i = 0;
                l = 0;
                v = { i };
            elseif eq(i, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { i };
            end;
            obj = obj@Test2.C1(v{:});
            if ne(i, IceInternal.NoInit.Instance)
                obj.l = l;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test2::C2', -1, false);
            os.writeLong(obj.l);
            os.endSlice();
            iceWriteImpl@Test2.C1(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.l = is.readLong();
            is.endSlice();
            iceReadImpl@Test2.C1(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test2::C2';
        end
    end
end
