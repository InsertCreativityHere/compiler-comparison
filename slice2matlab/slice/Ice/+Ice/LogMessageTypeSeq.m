
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from RemoteLogger.ice by slice2matlab version 3.7.9

classdef LogMessageTypeSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Ice.LogMessageType.ice_write(os, seq(i));
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Ice.LogMessageTypeSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = Ice.LogMessageType.empty();
            if sz > 0
                r(1, sz) = Ice.LogMessageType.PrintMessage;
                for i = 1:sz
                    r(i) = Ice.LogMessageType.ice_read(is);
                end
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Ice.LogMessageTypeSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
