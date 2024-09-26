% GroupInfo   Summary of GroupInfo
%
% The group info.
%
% GroupInfo Properties:
%   id - The identity of the node.
%   llu - The last known log update for this node.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Election.ice by slice2matlab version 3.8.0-alpha.0

classdef GroupInfo
    properties
        % id - The identity of the node.
        id int32
        % llu - The last known log update for this node.
        llu IceStormElection.LogUpdate
    end
    methods
        function obj = GroupInfo(id, llu)
            if nargin == 0
                obj.id = 0;
                obj.llu = IceStormElection.LogUpdate();
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.llu = llu;
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
            r = IceStormElection.GroupInfo(IceInternal.NoInit.Instance);
            r.id = is.readInt();
            r.llu = IceStormElection.LogUpdate.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStormElection.GroupInfo();
            end
            os.writeInt(v.id);
            IceStormElection.LogUpdate.ice_write(os, v.llu);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = IceStormElection.GroupInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(20);
                IceStormElection.GroupInfo.ice_write(os, v);
            end
        end
    end
end
