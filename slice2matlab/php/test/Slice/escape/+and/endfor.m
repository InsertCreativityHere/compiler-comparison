
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef endfor
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                and.array.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = and.array.empty();
            if sz > 0
                r(1, sz) = and.array.as;
                for i = 1:sz
                    r(i) = and.array.ice_read(is);
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                and.endfor.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = and.endfor.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
