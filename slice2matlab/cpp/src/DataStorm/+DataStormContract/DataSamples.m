% DataSamples   Summary of DataSamples
%
% Represents a collection of data samples produced by a specific writer.
%
% DataSamples Properties:
%   id - The unique identifier for the writer.
%   samples - The sequence of samples produced by the writer.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef DataSamples
    properties
        % id - The unique identifier for the writer.
        id int64
        % samples - The sequence of samples produced by the writer.
        samples
    end
    methods
        function obj = DataSamples(id, samples)
            if nargin == 0
                obj.id = 0;
                obj.samples = [];
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.samples = samples;
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
            r = DataStormContract.DataSamples(IceInternal.NoInit.Instance);
            r.id = is.readLong();
            r.samples = DataStormContract.DataSampleSeq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = DataStormContract.DataSamples();
            end
            os.writeLong(v.id);
            DataStormContract.DataSampleSeq.write(os, v.samples);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = DataStormContract.DataSamples.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                DataStormContract.DataSamples.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
