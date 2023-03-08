% SS1   Summary of SS1
%
% SS1 Properties:
%   s

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef SS1 < Ice.Value
    properties
        s
    end
    methods
        function obj = SS1(s)
            if nargin == 0
                obj.s = [];
            elseif ne(s, IceInternal.NoInit.Instance)
                obj.s = s;
            end;
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Hidden=true)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.s = Test.BSeq.convert(obj.s);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SS1', -1, true);
            Test.BSeq.write(os, obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s = Test.BSeq.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::SS1';
        end
    end
end
