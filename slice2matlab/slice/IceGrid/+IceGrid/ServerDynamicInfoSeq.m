
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerDynamicInfoSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.ServerDynamicInfo.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.ServerDynamicInfo.empty();
            if sz > 0
                r(1, sz) = IceGrid.ServerDynamicInfo();
                for i = 1:sz
                    r(i).id = is.readString();
                    r(i).state = IceGrid.ServerState.ice_read(is);
                    r(i).pid = is.readInt();
                    r(i).enabled = is.readBool();
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ServerDynamicInfoSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ServerDynamicInfoSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
