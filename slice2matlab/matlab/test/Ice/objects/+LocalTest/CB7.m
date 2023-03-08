% CB7   Summary of CB7
%
% CB7 Properties:
%   s1seqseq

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.7.9

classdef CB7 < Ice.Value
    properties
        s1seqseq
    end
    methods
        function obj = CB7(s1seqseq)
            if nargin == 0
                obj.s1seqseq = [];
            elseif ne(s1seqseq, IceInternal.NoInit.Instance)
                obj.s1seqseq = s1seqseq;
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
            obj.s1seqseq = LocalTest.S1SeqSeq.convert(obj.s1seqseq);
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB7', -1, true);
            LocalTest.S1SeqSeq.write(os, obj.s1seqseq);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s1seqseq = LocalTest.S1SeqSeq.read(is);
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::LocalTest::CB7';
        end
    end
end
