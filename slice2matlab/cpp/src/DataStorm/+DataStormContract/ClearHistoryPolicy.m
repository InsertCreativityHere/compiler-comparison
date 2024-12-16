% ClearHistoryPolicy   Summary of ClearHistoryPolicy
%
% Defines policies for clearing the data sample history of a reader in response to sample events.
%
% ClearHistoryPolicy Properties:
%   OnAdd - The reader clears its history when a new data sample is added.
%   OnRemove - The reader clears its history when a data sample is removed.
%   OnAll - The reader clears its history when any data sample event occurs.
%   OnAllExceptPartialUpdate - The reader clears its history for all data sample events except for partial update events.
%   Never - The reader never clears its history.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef ClearHistoryPolicy < uint8
    enumeration% OnAdd   Summary of OnAdd
        %
        % The reader clears its history when a new data sample is added.
        
        OnAdd (0)% OnRemove   Summary of OnRemove
        %
        % The reader clears its history when a data sample is removed.
        
        OnRemove (1)% OnAll   Summary of OnAll
        %
        % The reader clears its history when any data sample event occurs.
        
        OnAll (2)% OnAllExceptPartialUpdate   Summary of OnAllExceptPartialUpdate
        %
        % The reader clears its history for all data sample events except for partial update events.
        
        OnAllExceptPartialUpdate (3)% Never   Summary of Never
        %
        % The reader never clears its history.
        
        Never (4)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(DataStormContract.ClearHistoryPolicy.OnAdd), 4);
            else
                os.writeEnum(int32(v), 4);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(4);
            r = DataStormContract.ClearHistoryPolicy.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                DataStormContract.ClearHistoryPolicy.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = DataStormContract.ClearHistoryPolicy.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = DataStormContract.ClearHistoryPolicy.OnAdd;
                case 1
                    r = DataStormContract.ClearHistoryPolicy.OnRemove;
                case 2
                    r = DataStormContract.ClearHistoryPolicy.OnAll;
                case 3
                    r = DataStormContract.ClearHistoryPolicy.OnAllExceptPartialUpdate;
                case 4
                    r = DataStormContract.ClearHistoryPolicy.Never;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
