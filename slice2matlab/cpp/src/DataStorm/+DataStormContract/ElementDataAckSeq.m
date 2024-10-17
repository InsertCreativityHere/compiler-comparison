
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef ElementDataAckSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                DataStormContract.ElementDataAck.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = DataStormContract.ElementDataAck.empty();
            if sz > 0
                r(1, sz) = DataStormContract.ElementDataAck();
                for i = 1:sz
                    r(i).id = is.readLong();
                    config_ = IceInternal.ValueHolder();
                    r(i).config = config_;
                    is.readValue(@(v_) config_.set(v_), 'DataStormContract.ElementConfig');
                    r(i).lastIds = DataStormContract.LongLongDict.read(is);
                    r(i).samples = DataStormContract.DataSampleSeq.read(is);
                    r(i).peerId = is.readLong();
                end
            end
        end
        function r = convert(seq)
            r = seq;
            for i = 1:length(seq)
                r(i).config = r(i).config.value;
            end
        end
    end
end
