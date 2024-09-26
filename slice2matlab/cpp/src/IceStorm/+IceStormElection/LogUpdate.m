% LogUpdate   Summary of LogUpdate
%
% A struct used for marking the last log update.
%
% LogUpdate Properties:
%   generation - The generation.
%   iteration - The iteration within this generation.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LLURecord.ice by slice2matlab version 3.8.0-alpha.0

classdef LogUpdate
    properties
        % generation - The generation.
        generation int64
        % iteration - The iteration within this generation.
        iteration int64
    end
    methods
        function obj = LogUpdate(generation, iteration)
            if nargin == 0
                obj.generation = 0;
                obj.iteration = 0;
            elseif ne(generation, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = IceStormElection.LogUpdate(IceInternal.NoInit.Instance);
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
