% ClassNoDefaultsBase   Summary of ClassNoDefaultsBase
%
% ClassNoDefaultsBase Properties:
%   str
%   c1
%   bs

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ClassNoDefaultsBase < Ice.Value
    properties
        str char
        c1 Test.Color
        bs
    end
    methods
        function obj = ClassNoDefaultsBase(str, c1, bs)
            if nargin == 0
                obj.str = '';
                obj.c1 = Test.Color.red;
                obj.bs = [];
            elseif ne(str, IceInternal.NoInit.Instance)
                obj.str = str;
                obj.c1 = c1;
                obj.bs = bs;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::ClassNoDefaultsBase', -1, true);
            os.writeString(obj.str);
            Test.Color.ice_write(os, obj.c1);
            os.writeByteSeq(obj.bs);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            obj.c1 = Test.Color.ice_read(is);
            obj.bs = is.readByteSeq();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::ClassNoDefaultsBase';
        end
    end
end
