
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef parfor_
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                classdef_.break_.bitor.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = classdef_.break_.bitor.empty();
            if sz > 0
                r(1, sz) = classdef_.break_.bitor();
                for i = 1:sz
                    r(i).case_ = classdef_.break_.bitand.ice_read(is);
                    r(i).continue_ = is.readInt();
                    r(i).eq_ = is.readInt();
                    r(i).ne_ = is.readInt();
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                classdef_.break_.parfor_.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = classdef_.break_.parfor_.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
