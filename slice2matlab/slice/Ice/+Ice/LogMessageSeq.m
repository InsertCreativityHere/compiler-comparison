
% Copyright (c) ZeroC, Inc.
% Generated from RemoteLogger.ice by slice2matlab version 3.8.0-alpha.0

classdef LogMessageSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                Ice.LogMessage.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = Ice.LogMessage.empty();
            if sz > 0
                r(1, sz) = Ice.LogMessage();
                for i = 1:sz
                    r(i).type = Ice.LogMessageType.ice_read(is);
                    r(i).timestamp = is.readLong();
                    r(i).traceCategory = is.readString();
                    r(i).message = is.readString();
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Ice.LogMessageSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Ice.LogMessageSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
