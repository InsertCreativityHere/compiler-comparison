% NodeUpdateDescriptor   Summary of NodeUpdateDescriptor
%
% A node update descriptor to describe the updates to apply to a
% node of a deployed application.
%
% NodeUpdateDescriptor Properties:
%   name - The name of the node to update.
%   description - The updated description (or null if the description wasn't updated.)
%   variables - The variables to update.
%   removeVariables - The variables to remove.
%   propertySets - The property sets to update.
%   removePropertySets - The property sets to remove.
%   serverInstances - The server instances to update.
%   servers - The servers which are not template instances to update.
%   removeServers - The ids of the servers to remove.
%   loadFactor - The updated load factor of the node (or null if the load factor was not updated).

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.7.9

classdef NodeUpdateDescriptor
    properties
        % name - The name of the node to update.
        name char
        % description - The updated description (or null if the description wasn't
        % updated.)
        description
        % variables - The variables to update.
        variables containers.Map
        % removeVariables - The variables to remove.
        removeVariables
        % propertySets - The property sets to update.
        propertySets containers.Map
        % removePropertySets - The property sets to remove.
        removePropertySets
        % serverInstances - The server instances to update.
        serverInstances
        % servers - The servers which are not template instances to update.
        servers
        % removeServers - The ids of the servers to remove.
        removeServers
        % loadFactor - The updated load factor of the node (or null if the load factor
        % was not updated).
        loadFactor
    end
    methods
        function obj = NodeUpdateDescriptor(name, description, variables, removeVariables, propertySets, removePropertySets, serverInstances, servers, removeServers, loadFactor)
            if nargin == 0
                obj.name = '';
                obj.description = [];
                obj.variables = containers.Map('KeyType', 'char', 'ValueType', 'char');
                obj.removeVariables = [];
                obj.propertySets = containers.Map('KeyType', 'char', 'ValueType', 'any');
                obj.removePropertySets = [];
                obj.serverInstances = [];
                obj.servers = [];
                obj.removeServers = [];
                obj.loadFactor = [];
            elseif ne(name, IceInternal.NoInit.Instance)
                obj.name = name;
                obj.description = description;
                obj.variables = variables;
                obj.removeVariables = removeVariables;
                obj.propertySets = propertySets;
                obj.removePropertySets = removePropertySets;
                obj.serverInstances = serverInstances;
                obj.servers = servers;
                obj.removeServers = removeServers;
                obj.loadFactor = loadFactor;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.description = obj.description.value;
            obj.servers = IceGrid.ServerDescriptorSeq.convert(obj.servers);
            obj.loadFactor = obj.loadFactor.value;
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.NodeUpdateDescriptor(IceInternal.NoInit.Instance);
            r.name = is.readString();
            description_ = IceInternal.ValueHolder();
            r.description = description_;
            is.readValue(@(v_) description_.set(v_), 'IceGrid.BoxedString');
            r.variables = IceGrid.StringStringDict.read(is);
            r.removeVariables = is.readStringSeq();
            r.propertySets = IceGrid.PropertySetDescriptorDict.read(is);
            r.removePropertySets = is.readStringSeq();
            r.serverInstances = IceGrid.ServerInstanceDescriptorSeq.read(is);
            r.servers = IceGrid.ServerDescriptorSeq.read(is);
            r.removeServers = is.readStringSeq();
            loadFactor_ = IceInternal.ValueHolder();
            r.loadFactor = loadFactor_;
            is.readValue(@(v_) loadFactor_.set(v_), 'IceGrid.BoxedString');
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.NodeUpdateDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.NodeUpdateDescriptor();
            end
            os.writeString(v.name);
            os.writeValue(v.description);
            IceGrid.StringStringDict.write(os, v.variables);
            os.writeStringSeq(v.removeVariables);
            IceGrid.PropertySetDescriptorDict.write(os, v.propertySets);
            os.writeStringSeq(v.removePropertySets);
            IceGrid.ServerInstanceDescriptorSeq.write(os, v.serverInstances);
            IceGrid.ServerDescriptorSeq.write(os, v.servers);
            os.writeStringSeq(v.removeServers);
            os.writeValue(v.loadFactor);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.NodeUpdateDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
