% DataSample   Summary of DataSample
%
% DataSample Properties:
%   id - The sample id.
%   keyId - The key id.
%   keyValue - The key value if the key ID <= 0.
%   timestamp - The timestamp of the sample (write time).
%   tag - The update tag if the sample event is PartialUpdate.
%   event - The sample event.
%   value - The value of the sample.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef DataSample
    properties
        % id - The sample id.
        id int64
        % keyId - The key id.
        keyId int64
        % keyValue - The key value if the key ID <= 0.
        keyValue
        % timestamp - The timestamp of the sample (write time).
        timestamp int64
        % tag - The update tag if the sample event is PartialUpdate.
        tag int64
        % event - The sample event.
        event DataStorm.SampleEvent
        % value - The value of the sample.
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
