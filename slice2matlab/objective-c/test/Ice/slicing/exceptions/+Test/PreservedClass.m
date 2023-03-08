% PreservedClass   Summary of PreservedClass
%
% PreservedClass Properties:
%   pc

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from SlicingExceptionsTestClient.ice by slice2matlab version 3.7.9

classdef PreservedClass < Test.BaseClass
    properties
        pc char
    end
    methods
        function obj = PreservedClass(bc, pc)
            if nargin == 0
                bc = '';
                pc = '';
                v = { bc };
            elseif eq(bc, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance };
            else
                v = { bc };
            end;
            obj = obj@Test.BaseClass(v{:});
            if ne(bc, IceInternal.NoInit.Instance)
                obj.pc = pc;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::PreservedClass', -1, false);
            os.writeString(obj.pc);
            os.endSlice();
            iceWriteImpl@Test.BaseClass(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.pc = is.readString();
            is.endSlice();
            iceReadImpl@Test.BaseClass(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::PreservedClass';
        end
    end
end
