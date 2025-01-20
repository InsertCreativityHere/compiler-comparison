
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef LongFloatDS
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Test.LongFloatD.write(os, seq{i});
            end
        end
        function r = read(is)
            sz = is.readSize();
            if sz == 0
                r = {};
            else
                r = cell(1, sz);
                for i = 1:sz
                    r{i} = Test.LongFloatD.read(is);
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.LongFloatDS.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.LongFloatDS.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
