% NodeDescriptor   Summary of NodeDescriptor
%
% A node descriptor.
%
% NodeDescriptor Properties:
%   variables - The variables defined for the node.
%   serverInstances - The server instances.
%   servers - Servers (which are not template instances).
%   loadFactor - Load factor of the node.
%   description - The description of this node.
%   propertySets - Property set descriptors.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef NodeDescriptor
    properties
        % variables - The variables defined for the node.
        variables containers.Map
        % serverInstances - The server instances.
        serverInstances
        % servers - Servers (which are not template instances).
        servers
        % loadFactor - Load factor of the node.
        loadFactor char
        % description - The description of this node.
        description char
        % propertySets - Property set descriptors.
        propertySets containers.Map
    end
    methods
        function obj = NodeDescriptor(variables, serverInstances, servers, loadFactor, description, propertySets)
            if nargin == 0
                obj.variables = containers.Map('KeyType', 'char', 'ValueType', 'char');
                obj.serverInstances = [];
                obj.servers = [];
                obj.loadFactor = '';
                obj.description = '';
                obj.propertySets = containers.Map('KeyType', 'char', 'ValueType', 'any');
            elseif ne(variables, IceInternal.NoInit.Instance)
                obj.variables = variables;
                obj.serverInstances = serverInstances;
                obj.servers = servers;
                obj.loadFactor = loadFactor;
                obj.description = description;
                obj.propertySets = propertySets;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.servers = IceGrid.ServerDescriptorSeq.convert(obj.servers);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.NodeDescriptor(IceInternal.NoInit.Instance);
            r.variables = IceGrid.StringStringDict.read(is);
            r.serverInstances = IceGrid.ServerInstanceDescriptorSeq.read(is);
            r.servers = IceGrid.ServerDescriptorSeq.read(is);
            r.loadFactor = is.readString();
            r.description = is.readString();
            r.propertySets = IceGrid.PropertySetDescriptorDict.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.NodeDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.NodeDescriptor();
            end
            IceGrid.StringStringDict.write(os, v.variables);
            IceGrid.ServerInstanceDescriptorSeq.write(os, v.serverInstances);
            IceGrid.ServerDescriptorSeq.write(os, v.servers);
            os.writeString(v.loadFactor);
            os.writeString(v.description);
            IceGrid.PropertySetDescriptorDict.write(os, v.propertySets);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.NodeDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
