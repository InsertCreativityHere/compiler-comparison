% CB2   Summary of CB2
%
% CB2 Properties:
%   c1seq

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef CB2 < Ice.Value
    properties
        c1seq
    end
    methods
        function obj = CB2(c1seq)
            if nargin == 0
                obj.c1seq = [];
            elseif ne(c1seq, IceInternal.NoInit.Instance)
                obj.c1seq = c1seq;
            end
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
            obj.c1seq = LocalTest.C1Seq.convert(obj.c1seq);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB2', -1, true);
            LocalTest.C1Seq.write(os, obj.c1seq);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.c1seq = LocalTest.C1Seq.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::LocalTest::CB2';
        end
    end
end
