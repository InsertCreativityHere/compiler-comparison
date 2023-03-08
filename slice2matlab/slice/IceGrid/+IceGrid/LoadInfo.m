% LoadInfo   Summary of LoadInfo
%
% Information about the load of a node.
%
% LoadInfo Properties:
%   avg1 - The load average over the past minute.
%   avg5 - The load average over the past 5 minutes.
%   avg15 - The load average over the past 15 minutes.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Admin.ice by slice2matlab version 3.7.9

classdef LoadInfo
    properties
        % avg1 - The load average over the past minute.
        avg1 single
        % avg5 - The load average over the past 5 minutes.
        avg5 single
        % avg15 - The load average over the past 15 minutes.
        avg15 single
    end
    methods
        function obj = LoadInfo(avg1, avg5, avg15)
            if nargin == 0
                obj.avg1 = 0;
                obj.avg5 = 0;
                obj.avg15 = 0;
            elseif ne(avg1, IceInternal.NoInit.Instance)
                obj.avg1 = avg1;
                obj.avg5 = avg5;
                obj.avg15 = avg15;
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
            r = IceGrid.LoadInfo(IceInternal.NoInit.Instance);
            r.avg1 = is.readFloat();
            r.avg5 = is.readFloat();
            r.avg15 = is.readFloat();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = IceGrid.LoadInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.LoadInfo();
            end
            os.writeFloat(v.avg1);
            os.writeFloat(v.avg5);
            os.writeFloat(v.avg15);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(12);
                IceGrid.LoadInfo.ice_write(os, v);
            end
        end
    end
end
