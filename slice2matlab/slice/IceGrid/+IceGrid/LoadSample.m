% LoadSample   Summary of LoadSample
%
% Determines which load sampling interval to use.
%
% LoadSample Properties:
%   LoadSample1 - Sample every minute.
%   LoadSample5 - Sample every five minutes.
%   LoadSample15 - Sample every fifteen minutes.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Registry.ice by slice2matlab version 3.8.0-alpha.0

classdef LoadSample < uint8
    enumeration
        % Sample every minute.
        LoadSample1 (0)
        % Sample every five minutes.
        LoadSample5 (1)
        % Sample every fifteen minutes.
        LoadSample15 (2)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(IceGrid.LoadSample.LoadSample1), 2);
            else
                os.writeEnum(int32(v), 2);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(2);
            r = IceGrid.LoadSample.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                IceGrid.LoadSample.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = IceGrid.LoadSample.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = IceGrid.LoadSample.LoadSample1;
                case 1
                    r = IceGrid.LoadSample.LoadSample5;
                case 2
                    r = IceGrid.LoadSample.LoadSample15;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
