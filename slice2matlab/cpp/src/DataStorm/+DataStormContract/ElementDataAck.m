% ElementDataAck   Summary of ElementDataAck
%
% Represents an acknowledgment of the attachment of data readers or data writers associated with a key or filter.
%
% ElementDataAck Properties:
%   id - The unique identifier for the data reader or data writer.
%   config - The configuration settings for the data reader or data writer.
%   lastIds - A mapping of data writer IDs to the last sample IDs received by the data reader.
%   samples - A sequence of samples in the writer's queue, used to initialize the reader.
%   peerId - The unique identifier for the peer's data reader or data writer.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef ElementDataAck
    properties
        % id - The unique identifier for the data reader or data writer.
        id int64
        % config - The configuration settings for the data reader or data writer.
        config
        % lastIds - A mapping of data writer IDs to the last sample IDs received by the data reader.
        %
        % - The key represents the data writer ID.
        % - The value represents the last sample ID received from the corresponding data writer.
        lastIds containers.Map
        % samples - A sequence of samples in the writer's queue, used to initialize the reader.
        %
        % - When this struct is sent from a subscriber to a publisher, this field is empty.
        % - When sent from a publisher to a subscriber, this field contains the queued samples.
        samples
        % peerId - The unique identifier for the peer's data reader or data writer.
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
