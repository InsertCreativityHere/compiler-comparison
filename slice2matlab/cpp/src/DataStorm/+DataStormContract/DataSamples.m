classdef (Sealed) DataSamples
    %DATASAMPLES Represents a collection of data samples produced by a specific writer.
    %
    %   Creation
    %     Syntax
    %       obj = DataStormContract.DataSamples()
    %       obj = DataStormContract.DataSamples(id, samples)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   DataSamples Properties:
    %     id - The unique identifier for the writer.
    %     samples - The sequence of samples produced by the writer.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ID The unique identifier for the writer.
        %   int64 scalar
        id (1, 1) int64
        
        % SAMPLES The sequence of samples produced by the writer.
        %   DataStormContract.DataSample vector
        samples (1, :) DataStormContract.DataSample
    end
    methods
        function obj = DataSamples(id, samples)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = DataStormContract.DataSamples();
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
