% C2   Summary of C2
%
% C2 Properties:
%   theS2Seq

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.7.9

classdef C2 < Ice.Value
    properties
        theS2Seq
    end
    methods
        function obj = C2(theS2Seq)
            if nargin == 0
                obj.theS2Seq = [];
            elseif ne(theS2Seq, IceInternal.NoInit.Instance)
                obj.theS2Seq = theS2Seq;
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
            obj.theS2Seq = Test.S2Seq.convert(obj.theS2Seq);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::C2', -1, true);
            Test.S2Seq.write(os, obj.theS2Seq);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.theS2Seq = Test.S2Seq.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::C2';
        end
    end
end
