% SampleEvent   Summary of SampleEvent
%
% The sample event matches the operation used by the DataWriter to update the data element. It also provides
% information on what to expect from the sample. A sample with the Add or Update event always provide a value
% while a sample with the Remove type doesn't.
%
% SampleEvent Properties:
%   Add - The element has been added.
%   Update - The element has been updated.
%   PartialUpdate - The element has been partially updated.
%   Remove - The element has been removed.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Sample.ice by slice2matlab version 3.8.0-alpha.0

classdef SampleEvent < uint8
    enumeration% Add   Summary of Add
        %
        % The element has been added.
        
        Add (0)% Update   Summary of Update
        %
        % The element has been updated.
        
        Update (1)% PartialUpdate   Summary of PartialUpdate
        %
        % The element has been partially updated.
        
        PartialUpdate (2)% Remove   Summary of Remove
        %
        % The element has been removed.
        
        Remove (3)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(DataStorm.SampleEvent.Add), 3);
            else
                os.writeEnum(int32(v), 3);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(3);
            r = DataStorm.SampleEvent.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                DataStorm.SampleEvent.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = DataStorm.SampleEvent.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = DataStorm.SampleEvent.Add;
                case 1
                    r = DataStorm.SampleEvent.Update;
                case 2
                    r = DataStorm.SampleEvent.PartialUpdate;
                case 3
                    r = DataStorm.SampleEvent.Remove;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
