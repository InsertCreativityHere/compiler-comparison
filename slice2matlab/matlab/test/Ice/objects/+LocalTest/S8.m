% S8   Summary of S8
%
% S8 Properties:
%   s1seqseq

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.7.9

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
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = LocalTest.S8.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S8();
            end
            LocalTest.S1SeqSeq.write(os, v.s1seqseq);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                LocalTest.S8.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
