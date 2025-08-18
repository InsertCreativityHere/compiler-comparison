classdef (Sealed) ElementDataAck
    %ELEMENTDATAACK Represents an acknowledgment of the attachment of data readers or data writers associated with a key or filter.
    %
    %   Creation
    %     Syntax
    %       obj = DataStormContract.ElementDataAck()
    %       obj = DataStormContract.ElementDataAck(id, config, lastIds, samples, peerId)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ElementDataAck Properties:
    %     id - The unique identifier for the data reader or data writer.
    %     config - The configuration settings for the data reader or data writer.
    %     lastIds - A mapping of data writer IDs to the last sample IDs received by the data reader.
    %     samples - A sequence of samples in the writer's queue, used to initialize the reader.
    %     peerId - The unique identifier for the peer's data reader or data writer.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The unique identifier for the data reader or data writer.
        %   int64 scalar
        id (1, 1) int64
        
        % CONFIG The configuration settings for the data reader or data writer.
        %   DataStormContract.ElementConfig scalar | empty array of DataStormContract.ElementConfig
        config {mustBeScalarOrEmpty} = DataStormContract.ElementConfig.empty
        
        % LASTIDS A mapping of data writer IDs to the last sample IDs received by the data reader.
        %
        %   - The key represents the data writer ID.
        %   - The value represents the last sample ID received from the corresponding data writer.
        %   int64, int64) scalar
        lastIds (1, 1) dictionary = configureDictionary('int64', 'int64')
        
        % SAMPLES A sequence of samples in the writer's queue, used to initialize the reader.
        %
        %   - When this struct is sent from a subscriber to a publisher, this field is empty.
        %   - When sent from a publisher to a subscriber, this field contains the queued samples.
        %   DataStormContract.DataSample vector
        samples (1, :) DataStormContract.DataSample
        
        % PEERID The unique identifier for the peer's data reader or data writer.
        %   int64 scalar
        peerId (1, 1) int64
    end
    methods
        function obj = ElementDataAck(id, config, lastIds, samples, peerId)
            if nargin > 0
                assert(nargin == 5, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = DataStormContract.ElementDataAck();
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
