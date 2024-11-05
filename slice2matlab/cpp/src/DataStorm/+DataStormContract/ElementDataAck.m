
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef ElementDataAck
    properties
        % id - The id of the writer or filter.
        id int64
        % config - The config of the writer or reader.
        config
        % lastIds - The lastIds received by the reader.
        lastIds containers.Map
        % samples - The samples of the writer or reader.
        samples
        % peerId - The id of the writer or reader on the peer.
        peerId int64
    end
    methods
        function obj = ElementDataAck(id, config, lastIds, samples, peerId)
            if nargin == 0
                obj.id = 0;
                obj.config = [];
                obj.lastIds = containers.Map('KeyType', 'int64', 'ValueType', 'int64');
                obj.samples = [];
                obj.peerId = 0;
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.config = config;
                obj.lastIds = lastIds;
                obj.samples = samples;
                obj.peerId = peerId;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.config = obj.config.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = DataStormContract.ElementDataAck(IceInternal.NoInit.Instance);
            r.id = is.readLong();
            config_ = IceInternal.ValueHolder();
            r.config = config_;
            is.readValue(@(v_) config_.set(v_), 'DataStormContract.ElementConfig');
            r.lastIds = DataStormContract.LongLongDict.read(is);
            r.samples = DataStormContract.DataSampleSeq.read(is);
            r.peerId = is.readLong();
        end
        function ice_write(os, v)
            if isempty(v)
                v = DataStormContract.ElementDataAck();
            end
            os.writeLong(v.id);
            os.writeValue(v.config);
            DataStormContract.LongLongDict.write(os, v.lastIds);
            DataStormContract.DataSampleSeq.write(os, v.samples);
            os.writeLong(v.peerId);
        end
    end
end
