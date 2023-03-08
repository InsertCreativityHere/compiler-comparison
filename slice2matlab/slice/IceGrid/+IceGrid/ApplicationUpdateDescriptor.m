% ApplicationUpdateDescriptor   Summary of ApplicationUpdateDescriptor
%
% An application update descriptor to describe the updates to apply
% to a deployed application.
%
% ApplicationUpdateDescriptor Properties:
%   name - The name of the application to update.
%   description - The updated description (or null if the description wasn't updated.)
%   distrib - The updated distribution application descriptor.
%   variables - The variables to update.
%   removeVariables - The variables to remove.
%   propertySets - The property sets to update.
%   removePropertySets - The property sets to remove.
%   replicaGroups - The replica groups to update.
%   removeReplicaGroups - The replica groups to remove.
%   serverTemplates - The server templates to update.
%   removeServerTemplates - The ids of the server template to remove.
%   serviceTemplates - The service templates to update.
%   removeServiceTemplates - The ids of the service template to remove.
%   nodes - The application nodes to update.
%   removeNodes - The nodes to remove.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.7.9

classdef ApplicationUpdateDescriptor
    properties
        % name - The name of the application to update.
        name char
        % description - The updated description (or null if the description wasn't
        % updated.)
        description
        % distrib - The updated distribution application descriptor.
        distrib
        % variables - The variables to update.
        variables containers.Map
        % removeVariables - The variables to remove.
        removeVariables
        % propertySets - The property sets to update.
        propertySets containers.Map
        % removePropertySets - The property sets to remove.
        removePropertySets
        % replicaGroups - The replica groups to update.
        replicaGroups
        % removeReplicaGroups - The replica groups to remove.
        removeReplicaGroups
        % serverTemplates - The server templates to update.
        serverTemplates containers.Map
        % removeServerTemplates - The ids of the server template to remove.
        removeServerTemplates
        % serviceTemplates - The service templates to update.
        serviceTemplates containers.Map
        % removeServiceTemplates - The ids of the service template to remove.
        removeServiceTemplates
        % nodes - The application nodes to update.
        nodes
        % removeNodes - The nodes to remove.
        removeNodes
    end
    methods
        function obj = ApplicationUpdateDescriptor(name, description, distrib, variables, removeVariables, propertySets, removePropertySets, replicaGroups, removeReplicaGroups, serverTemplates, removeServerTemplates, serviceTemplates, removeServiceTemplates, nodes, removeNodes)
            if nargin == 0
                obj.name = '';
                obj.description = [];
                obj.distrib = [];
                obj.variables = containers.Map('KeyType', 'char', 'ValueType', 'char');
                obj.removeVariables = [];
                obj.propertySets = containers.Map('KeyType', 'char', 'ValueType', 'any');
                obj.removePropertySets = [];
                obj.replicaGroups = [];
                obj.removeReplicaGroups = [];
                obj.serverTemplates = containers.Map('KeyType', 'char', 'ValueType', 'any');
                obj.removeServerTemplates = [];
                obj.serviceTemplates = containers.Map('KeyType', 'char', 'ValueType', 'any');
                obj.removeServiceTemplates = [];
                obj.nodes = [];
                obj.removeNodes = [];
            elseif ne(name, IceInternal.NoInit.Instance)
                obj.name = name;
                obj.description = description;
                obj.distrib = distrib;
                obj.variables = variables;
                obj.removeVariables = removeVariables;
                obj.propertySets = propertySets;
                obj.removePropertySets = removePropertySets;
                obj.replicaGroups = replicaGroups;
                obj.removeReplicaGroups = removeReplicaGroups;
                obj.serverTemplates = serverTemplates;
                obj.removeServerTemplates = removeServerTemplates;
                obj.serviceTemplates = serviceTemplates;
                obj.removeServiceTemplates = removeServiceTemplates;
                obj.nodes = nodes;
                obj.removeNodes = removeNodes;
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
            obj.distrib = obj.distrib.value;
            obj.replicaGroups = IceGrid.ReplicaGroupDescriptorSeq.convert(obj.replicaGroups);
            obj.serverTemplates = IceGrid.TemplateDescriptorDict.convert(obj.serverTemplates);
            obj.serviceTemplates = IceGrid.TemplateDescriptorDict.convert(obj.serviceTemplates);
            obj.nodes = IceGrid.NodeUpdateDescriptorSeq.convert(obj.nodes);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.ApplicationUpdateDescriptor(IceInternal.NoInit.Instance);
            r.name = is.readString();
            description_ = IceInternal.ValueHolder();
            r.description = description_;
            is.readValue(@(v_) description_.set(v_), 'IceGrid.BoxedString');
            distrib_ = IceInternal.ValueHolder();
            r.distrib = distrib_;
            is.readValue(@(v_) distrib_.set(v_), 'IceGrid.BoxedDistributionDescriptor');
            r.variables = IceGrid.StringStringDict.read(is);
            r.removeVariables = is.readStringSeq();
            r.propertySets = IceGrid.PropertySetDescriptorDict.read(is);
            r.removePropertySets = is.readStringSeq();
            r.replicaGroups = IceGrid.ReplicaGroupDescriptorSeq.read(is);
            r.removeReplicaGroups = is.readStringSeq();
            r.serverTemplates = IceGrid.TemplateDescriptorDict.read(is);
            r.removeServerTemplates = is.readStringSeq();
            r.serviceTemplates = IceGrid.TemplateDescriptorDict.read(is);
            r.removeServiceTemplates = is.readStringSeq();
            r.nodes = IceGrid.NodeUpdateDescriptorSeq.read(is);
            r.removeNodes = is.readStringSeq();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ApplicationUpdateDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ApplicationUpdateDescriptor();
            end
            os.writeString(v.name);
            os.writeValue(v.description);
            os.writeValue(v.distrib);
            IceGrid.StringStringDict.write(os, v.variables);
            os.writeStringSeq(v.removeVariables);
            IceGrid.PropertySetDescriptorDict.write(os, v.propertySets);
            os.writeStringSeq(v.removePropertySets);
            IceGrid.ReplicaGroupDescriptorSeq.write(os, v.replicaGroups);
            os.writeStringSeq(v.removeReplicaGroups);
            IceGrid.TemplateDescriptorDict.write(os, v.serverTemplates);
            os.writeStringSeq(v.removeServerTemplates);
            IceGrid.TemplateDescriptorDict.write(os, v.serviceTemplates);
            os.writeStringSeq(v.removeServiceTemplates);
            IceGrid.NodeUpdateDescriptorSeq.write(os, v.nodes);
            os.writeStringSeq(v.removeNodes);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ApplicationUpdateDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
