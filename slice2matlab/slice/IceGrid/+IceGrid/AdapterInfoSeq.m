
% Copyright (c) ZeroC, Inc.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef AdapterInfoSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.AdapterInfo.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.AdapterInfo.empty();
            if sz > 0
                r(1, sz) = IceGrid.AdapterInfo();
                for i = 1:sz
                    r(i).id = is.readString();
                    r(i).proxy = is.readProxy();
                    r(i).replicaGroupId = is.readString();
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.AdapterInfoSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.AdapterInfoSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
