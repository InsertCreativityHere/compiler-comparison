classdef (Sealed) LogUpdate
    %LOGUPDATE A struct used for marking the last log update.
    %
    %   Creation
    %     Syntax
    %       obj = IceStormElection.LogUpdate()
    %       obj = IceStormElection.LogUpdate(generation, iteration)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   LogUpdate Properties:
    %     generation - The generation.
    %     iteration - The iteration within this generation.
    %
    %   Generated from LLURecord.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % GENERATION The generation.
        %   int64 scalar
        generation (1, 1) int64
        
        % ITERATION The iteration within this generation.
        %   int64 scalar
        iteration (1, 1) int64
    end
    methods
        function obj = LogUpdate(generation, iteration)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.generation = generation;
                obj.iteration = iteration;
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
            r = IceStormElection.LogUpdate();
            r.generation = is.readLong();
            r.iteration = is.readLong();
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStormElection.LogUpdate();
            end
            os.writeLong(v.generation);
            os.writeLong(v.iteration);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = IceStormElection.LogUpdate.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(16);
                IceStormElection.LogUpdate.ice_write(os, v);
            end
        end
    end
end
