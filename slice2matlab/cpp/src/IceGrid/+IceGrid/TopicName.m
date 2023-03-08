% TopicName   Summary of TopicName
%
% TopicName Properties:
%   RegistryObserverTopicName
%   NodeObserverTopicName
%   ApplicationObserverTopicName
%   AdapterObserverTopicName
%   ObjectObserverTopicName

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.9

classdef TopicName < uint8
    enumeration
        RegistryObserverTopicName (0)
        NodeObserverTopicName (1)
        ApplicationObserverTopicName (2)
        AdapterObserverTopicName (3)
        ObjectObserverTopicName (4)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(IceGrid.TopicName.RegistryObserverTopicName), 4);
            else
                os.writeEnum(int32(v), 4);
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                IceGrid.TopicName.ice_write(os, v);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(4);
            r = IceGrid.TopicName.ice_getValue(v);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = IceGrid.TopicName.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = IceGrid.TopicName.RegistryObserverTopicName;
                case 1
                    r = IceGrid.TopicName.NodeObserverTopicName;
                case 2
                    r = IceGrid.TopicName.ApplicationObserverTopicName;
                case 3
                    r = IceGrid.TopicName.AdapterObserverTopicName;
                case 4
                    r = IceGrid.TopicName.ObjectObserverTopicName;
                otherwise
                    throw(Ice.MarshalException('', '', sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
