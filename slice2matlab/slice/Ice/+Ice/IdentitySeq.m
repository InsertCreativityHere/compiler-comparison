
% Copyright (c) ZeroC, Inc.
% Generated from Identity.ice by slice2matlab version 3.8.0-alpha.0

classdef IdentitySeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Ice.Identity.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = Ice.Identity.empty();
            if sz > 0
                r(1, sz) = Ice.Identity();
                for i = 1:sz
                    r(i).name = is.readString();
                    r(i).category = is.readString();
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Ice.IdentitySeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Ice.IdentitySeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
