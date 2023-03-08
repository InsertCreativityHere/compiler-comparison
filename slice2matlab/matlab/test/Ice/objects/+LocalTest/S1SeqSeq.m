
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.7.9

classdef S1SeqSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                LocalTest.S1Seq.write(os, seq{i});
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                LocalTest.S1SeqSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            if sz == 0
                r = {};
            else
                r = cell(1, sz);
                for i = 1:sz
                    r{i} = LocalTest.S1Seq.read(is);
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = LocalTest.S1SeqSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = convert(seq)
            sz = length(seq);
            if sz > 0
                r = cell(1, sz);
                for i = 1:sz
                    r{i} = LocalTest.S1Seq.convert(seq{i});
                    end
            else
                r = seq;
            end
        end
    end
end
