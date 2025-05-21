
% Copyright (c) ZeroC, Inc.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef S8
    properties
        s1seqseq
    end
    methods
        function obj = S8(s1seqseq)
            if nargin == 0
                obj.s1seqseq = [];
            elseif ne(s1seqseq, IceInternal.NoInit.Instance)
                obj.s1seqseq = s1seqseq;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.s1seqseq = LocalTest.S1SeqSeq.convert(obj.s1seqseq);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = LocalTest.S8(IceInternal.NoInit.Instance);
            r.s1seqseq = LocalTest.S1SeqSeq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S8();
            end
            LocalTest.S1SeqSeq.write(os, v.s1seqseq);
        end
    end
end
