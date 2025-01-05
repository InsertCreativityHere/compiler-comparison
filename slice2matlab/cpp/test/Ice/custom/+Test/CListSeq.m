
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef CListSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Test.CList.write(os, seq{i});
            end
        end
        function r = read(is)
            sz = is.readSize();
            if sz == 0
                r = {};
            else
                r = cell(1, sz);
                for i = 1:sz
                    r{i} = Test.CList.read(is);
                end
            end
        end
        function r = convert(seq)
            sz = length(seq);
            if sz > 0
                r = cell(1, sz);
                for i = 1:sz
                    r{i} = Test.CList.convert(seq{i});
                    end
            else
                r = seq;
            end
        end
    end
end
