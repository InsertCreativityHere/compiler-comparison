
% Copyright (c) ZeroC, Inc.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef NodeDynamicInfoSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.NodeDynamicInfo.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.NodeDynamicInfo.empty();
            if sz > 0
                r(1, sz) = IceGrid.NodeDynamicInfo();
                for i = 1:sz
                    r(i).info = IceGrid.NodeInfo.ice_read(is);
                    r(i).servers = IceGrid.ServerDynamicInfoSeq.read(is);
                    r(i).adapters = IceGrid.AdapterDynamicInfoSeq.read(is);
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.NodeDynamicInfoSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.NodeDynamicInfoSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
