% C2   Summary of C2
%
% C2 Properties:
%   l

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from NoNamespace.ice by slice2matlab version 3.8.0-alpha.0

classdef C2 < NoNamespace.C1
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
            end
            obj = obj@NoNamespace.C1(v{:});
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
            os.startSlice('::NoNamespace::C2', -1, false);
            os.writeLong(obj.l);
            os.endSlice();
            iceWriteImpl@NoNamespace.C1(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.l = is.readLong();
            is.endSlice();
            iceReadImpl@NoNamespace.C1(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::NoNamespace::C2';
        end
    end
end
