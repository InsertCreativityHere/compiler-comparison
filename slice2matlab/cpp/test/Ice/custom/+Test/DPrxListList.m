
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef DPrxListList
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Test.DPrxList.write(os, seq{i});
            end
        end
        function r = read(is)
            sz = is.readSize();
            if sz == 0
                r = {};
            else
                r = cell(1, sz);
                for i = 1:sz
                    r{i} = Test.DPrxList.read(is);
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.DPrxListList.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.DPrxListList.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
