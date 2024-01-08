% CB6   Summary of CB6
%
% CB6 Properties:
%   c1seqseq

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.7.10

classdef CB6 < Ice.Value
    properties
        c1seqseq
    end
    methods
        function obj = CB6(c1seqseq)
            if nargin == 0
                obj.c1seqseq = [];
            elseif ne(c1seqseq, IceInternal.NoInit.Instance)
                obj.c1seqseq = c1seqseq;
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
            obj.c1seqseq = LocalTest.C1SeqSeq.convert(obj.c1seqseq);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB6', -1, true);
            LocalTest.C1SeqSeq.write(os, obj.c1seqseq);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.c1seqseq = LocalTest.C1SeqSeq.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::LocalTest::CB6';
        end
    end
end
