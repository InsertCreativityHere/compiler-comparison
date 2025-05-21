
% Copyright (c) ZeroC, Inc.
% Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

classdef S7
    properties
        c1seqseq
    end
    methods
        function obj = S7(c1seqseq)
            if nargin == 0
                obj.c1seqseq = [];
            elseif ne(c1seqseq, IceInternal.NoInit.Instance)
                obj.c1seqseq = c1seqseq;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.c1seqseq = LocalTest.C1SeqSeq.convert(obj.c1seqseq);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = LocalTest.S7(IceInternal.NoInit.Instance);
            r.c1seqseq = LocalTest.C1SeqSeq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S7();
            end
            LocalTest.C1SeqSeq.write(os, v.c1seqseq);
        end
    end
end
