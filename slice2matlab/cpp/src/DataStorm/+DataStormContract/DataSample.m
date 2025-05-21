% DataSample   Summary of DataSample
%
% Represents a data sample, the fundamental unit of data exchanged between DataStorm readers and writers.
%
% DataSample Properties:
%   id - The unique identifier for the sample.
%   keyId - The unique identifier for the associated key.
%   keyValue - The encoded key value, used when keyId < 0 (key filter).
%   timestamp - The timestamp when the sample was written, in milliseconds since the epoch.
%   tag - An update tag, used for PartialUpdate sample events.
%   event - The event type associated with this sample (e.g., Add, Update, PartialUpdate, Remove).
%   value - The payload data of the sample.

% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef DataSample
    properties
        % id - The unique identifier for the sample.
        id int64
        % keyId - The unique identifier for the associated key.
        % A negative value (< 0) indicates a key filter.
        keyId int64
        % keyValue - The encoded key value, used when keyId < 0 (key filter).
        keyValue
        % timestamp - The timestamp when the sample was written, in milliseconds since the epoch.
        timestamp int64
        % tag - An update tag, used for PartialUpdate sample events.
        tag int64
        % event - The event type associated with this sample (e.g., Add, Update, PartialUpdate, Remove).
        event DataStorm.SampleEvent
        % value - The payload data of the sample.
        value
    end
    methods
        function obj = DataSample(id, keyId, keyValue, timestamp, tag, event, value)
            if nargin == 0
                obj.id = 0;
                obj.keyId = 0;
                obj.keyValue = [];
                obj.timestamp = 0;
                obj.tag = 0;
                obj.event = DataStorm.SampleEvent.Add;
                obj.value = [];
            elseif ne(id, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = DataStormContract.DataSample(IceInternal.NoInit.Instance);
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
