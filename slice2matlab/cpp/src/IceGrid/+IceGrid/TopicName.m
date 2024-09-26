% TopicName   Summary of TopicName
%
% TopicName Properties:
%   RegistryObserver
%   NodeObserver
%   ApplicationObserver
%   AdapterObserver
%   ObjectObserver

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

classdef TopicName < uint8
    enumeration
        RegistryObserver (0)
        NodeObserver (1)
        ApplicationObserver (2)
        AdapterObserver (3)
        ObjectObserver (4)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(IceGrid.TopicName.RegistryObserver), 4);
            else
                os.writeEnum(int32(v), 4);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(4);
            r = IceGrid.TopicName.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                IceGrid.TopicName.ice_write(os, v);
            end
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
                    r = IceGrid.TopicName.RegistryObserver;
                case 1
                    r = IceGrid.TopicName.NodeObserver;
                case 2
                    r = IceGrid.TopicName.ApplicationObserver;
                case 3
                    r = IceGrid.TopicName.AdapterObserver;
                case 4
                    r = IceGrid.TopicName.ObjectObserver;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
