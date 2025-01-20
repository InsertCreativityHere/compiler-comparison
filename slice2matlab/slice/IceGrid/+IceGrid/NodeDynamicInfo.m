% NodeDynamicInfo   Summary of NodeDynamicInfo
%
% Dynamic information about the state of a node.
%
% NodeDynamicInfo Properties:
%   info - Some static information about the node.
%   servers - The dynamic information of the servers deployed on this node.
%   adapters - The dynamic information of the adapters deployed on this node.

% Copyright (c) ZeroC, Inc.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef NodeDynamicInfo
    properties
        % info - Some static information about the node.
        info IceGrid.NodeInfo
        % servers - The dynamic information of the servers deployed on this node.
        servers
        % adapters - The dynamic information of the adapters deployed on this node.
        adapters
    end
    methods
        function obj = NodeDynamicInfo(info, servers, adapters)
            if nargin == 0
                obj.info = IceGrid.NodeInfo();
                obj.servers = [];
                obj.adapters = [];
            elseif ne(info, IceInternal.NoInit.Instance)
                obj.info = info;
                obj.servers = servers;
                obj.adapters = adapters;
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
            r = IceGrid.NodeDynamicInfo(IceInternal.NoInit.Instance);
            r.info = IceGrid.NodeInfo.ice_read(is);
            r.servers = IceGrid.ServerDynamicInfoSeq.read(is);
            r.adapters = IceGrid.AdapterDynamicInfoSeq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.NodeDynamicInfo();
            end
            IceGrid.NodeInfo.ice_write(os, v.info);
            IceGrid.ServerDynamicInfoSeq.write(os, v.servers);
            IceGrid.AdapterDynamicInfoSeq.write(os, v.adapters);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.NodeDynamicInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.NodeDynamicInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
