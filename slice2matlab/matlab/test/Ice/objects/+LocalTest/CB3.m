% CB3   Summary of CB3
%
% CB3 Properties:
%   s1seq

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef CB3 < Ice.Value
    properties
        s1seq
    end
    methods
        function obj = CB3(s1seq)
            if nargin == 0
                obj.s1seq = [];
            elseif ne(s1seq, IceInternal.NoInit.Instance)
                obj.s1seq = s1seq;
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
            obj.s1seq = LocalTest.S1Seq.convert(obj.s1seq);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB3', -1, true);
            LocalTest.S1Seq.write(os, obj.s1seq);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s1seq = LocalTest.S1Seq.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::LocalTest::CB3';
        end
    end
end
