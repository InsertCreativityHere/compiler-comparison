classdef (Sealed) DataSample
    %DATASAMPLE Represents a data sample, the fundamental unit of data exchanged between DataStorm readers and writers.
    %
    %   Creation
    %     Syntax
    %       obj = DataStormContract.DataSample()
    %       obj = DataStormContract.DataSample(id, keyId, keyValue, timestamp, tag, event, value)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   DataSample Properties:
    %     id - The unique identifier for the sample.
    %     keyId - The unique identifier for the associated key.
    %     keyValue - The encoded key value, used when keyId < 0 (key filter).
    %     timestamp - The timestamp when the sample was written, in milliseconds since the epoch.
    %     tag - An update tag, used for PartialUpdate sample events.
    %     event - The event type associated with this sample (e.g., Add, Update, PartialUpdate, Remove).
    %     value - The payload data of the sample.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The unique identifier for the sample.
        %   int64 scalar
        id (1, 1) int64
        
        % KEYID The unique identifier for the associated key.
        %   A negative value (< 0) indicates a key filter.
        %   int64 scalar
        keyId (1, 1) int64
        
        % KEYVALUE The encoded key value, used when keyId < 0 (key filter).
        %   uint8 vector
        keyValue (1, :) uint8
        
        % TIMESTAMP The timestamp when the sample was written, in milliseconds since the epoch.
        %   int64 scalar
        timestamp (1, 1) int64
        
        % TAG An update tag, used for PartialUpdate sample events.
        %   int64 scalar
        tag (1, 1) int64
        
        % EVENT The event type associated with this sample (e.g., Add, Update, PartialUpdate, Remove).
        %   DataStorm.SampleEvent scalar
        event (1, 1) DataStorm.SampleEvent
        
        % VALUE The payload data of the sample.
        %   uint8 vector
        value (1, :) uint8
    end
    methods
        function obj = DataSample(id, keyId, keyValue, timestamp, tag, event, value)
            if nargin > 0
                assert(nargin == 7, 'Invalid number of arguments');
                obj.id = id;
                obj.keyId = keyId;
                obj.keyValue = keyValue;
                obj.timestamp = timestamp;
                obj.tag = tag;
                obj.event = event;
                obj.value = value;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = DataStormContract.DataSample();
            r.id = is.readLong();
            r.keyId = is.readLong();
            r.keyValue = is.readByteSeq();
            r.timestamp = is.readLong();
            r.tag = is.readLong();
            r.event = DataStorm.SampleEvent.ice_read(is);
            r.value = is.readByteSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = DataStormContract.DataSample();
            end
            os.writeLong(v.id);
            os.writeLong(v.keyId);
            os.writeByteSeq(v.keyValue);
            os.writeLong(v.timestamp);
            os.writeLong(v.tag);
            DataStorm.SampleEvent.ice_write(os, v.event);
            os.writeByteSeq(v.value);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = DataStormContract.DataSample.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                DataStormContract.DataSample.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
