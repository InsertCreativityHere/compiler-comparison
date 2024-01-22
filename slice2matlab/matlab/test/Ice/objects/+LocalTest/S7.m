% S7   Summary of S7
%
% S7 Properties:
%   c1seqseq

% Copyright (c) ZeroC, Inc. All rights reserved.
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
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = LocalTest.S7.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S7();
            end
            LocalTest.C1SeqSeq.write(os, v.c1seqseq);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                LocalTest.S7.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
