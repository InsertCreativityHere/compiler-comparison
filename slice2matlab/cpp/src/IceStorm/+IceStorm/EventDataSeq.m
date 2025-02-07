
% Copyright (c) ZeroC, Inc.
% Generated from IceStormInternal.ice by slice2matlab version 3.8.0-alpha.0

classdef EventDataSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceStorm.EventData.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceStorm.EventData.empty();
            if sz > 0
                r(1, sz) = IceStorm.EventData();
                for i = 1:sz
                    r(i).op = is.readString();
                    r(i).mode = Ice.OperationMode.ice_read(is);
                    r(i).data = is.readByteSeq();
                    r(i).context = Ice.Context.read(is);
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStorm.EventDataSeq.write(os, seq);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStorm.EventDataSeq.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
