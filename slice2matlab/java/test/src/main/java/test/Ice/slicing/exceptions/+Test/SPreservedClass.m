% SPreservedClass   Summary of SPreservedClass
%
% SPreservedClass Properties:
%   spc

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerPrivate.ice by slice2matlab version 3.7.10

classdef SPreservedClass < Test.BaseClass
    properties
        spc char
    end
    methods
        function obj = SPreservedClass(bc, spc)
            if nargin == 0
                bc = '';
                spc = '';
                v = { bc };
            elseif eq(bc, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { bc };
            end;
            obj = obj@Test.BaseClass(v{:});
            if ne(bc, IceInternal.NoInit.Instance)
                obj.spc = spc;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SPreservedClass', -1, false);
            os.writeString(obj.spc);
            os.endSlice();
            iceWriteImpl@Test.BaseClass(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.spc = is.readString();
            is.endSlice();
            iceReadImpl@Test.BaseClass(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SPreservedClass';
        end
    end
end
