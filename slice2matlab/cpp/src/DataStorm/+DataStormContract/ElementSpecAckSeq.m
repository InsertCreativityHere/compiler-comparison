
% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef ElementSpecAckSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                DataStormContract.ElementSpecAck.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = DataStormContract.ElementSpecAck.empty();
            if sz > 0
                r(1, sz) = DataStormContract.ElementSpecAck();
                for i = 1:sz
                    r(i).elements = DataStormContract.ElementDataAckSeq.read(is);
                    r(i).id = is.readLong();
                    r(i).name = is.readString();
                    r(i).value = is.readByteSeq();
                    r(i).peerId = is.readLong();
                    r(i).peerName = is.readString();
                end
            end
        end
        function r = convert(seq)
            r = seq;
            for i = 1:length(seq)
                r(i).elements = DataStormContract.ElementDataAckSeq.convert(r(i).elements);
            end
        end
    end
end
