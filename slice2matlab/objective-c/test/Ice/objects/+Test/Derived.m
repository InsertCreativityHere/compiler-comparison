% Derived   Summary of Derived
%
% Derived Properties:
%   b

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ObjectsDerived.ice by slice2matlab version 3.7.9

classdef Derived < Test.Base
    properties
        b char
    end
    methods
        function obj = Derived(theS, str, b)
            if nargin == 0
                theS = Test.S();
                str = '';
                b = '';
                v = { theS, str };
            elseif eq(theS, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [] };
            else
                v = { theS, str };
            end;
            obj = obj@Test.Base(v{:});
            if ne(theS, IceInternal.NoInit.Instance)
                obj.b = b;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Derived', -1, false);
            os.writeString(obj.b);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.b = is.readString();
            is.endSlice();
            iceReadImpl@Test.Base(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Derived';
        end
    end
end
