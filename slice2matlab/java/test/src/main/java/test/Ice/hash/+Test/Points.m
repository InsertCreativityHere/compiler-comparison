
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef Points
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Test.Point.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = Test.Point.empty();
            if sz > 0
                r(1, sz) = Test.Point();
                for i = 1:sz
                    r(i).x = is.readInt();
                    r(i).y = is.readInt();
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                len = length(seq);
                if len > 254
                    os.writeSize(len * 8 + 5);
                else
                    os.writeSize(len * 8 + 1);
                end
                Test.Points.write(os, seq);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.Points.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
