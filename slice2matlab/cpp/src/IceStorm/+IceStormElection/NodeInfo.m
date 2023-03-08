% NodeInfo   Summary of NodeInfo
%
% All nodes in the replication group.
%
% NodeInfo Properties:
%   id - The identity of the node.
%   n - The node proxy.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Election.ice by slice2matlab version 3.7.9

classdef NodeInfo
    properties
        % id - The identity of the node.
        id int32
        % n - The node proxy.
        n
    end
    methods
        function obj = NodeInfo(id, n)
            if nargin == 0
                obj.id = 0;
                obj.n = [];
            elseif ne(id, IceInternal.NoInit.Instance)
                obj.id = id;
                obj.n = n;
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
            r = IceStormElection.NodeInfo(IceInternal.NoInit.Instance);
            r.id = is.readInt();
            r.n = IceStormElection.NodePrx.ice_read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceStormElection.NodeInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceStormElection.NodeInfo();
            end
            os.writeInt(v.id);
            os.writeProxy(v.n);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceStormElection.NodeInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
