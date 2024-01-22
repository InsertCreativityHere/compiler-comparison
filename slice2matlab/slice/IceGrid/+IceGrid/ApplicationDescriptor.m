% ApplicationDescriptor   Summary of ApplicationDescriptor
%
% An application descriptor.
%
% ApplicationDescriptor Properties:
%   name - The application name.
%   variables - The variables defined in the application descriptor.
%   replicaGroups - The replica groups.
%   serverTemplates - The server templates.
%   serviceTemplates - The service templates.
%   nodes - The application nodes.
%   distrib - The application distribution.
%   description - The description of this application.
%   propertySets - Property set descriptors.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef ApplicationDescriptor
    properties
        % name - The application name.
        name char
        % variables - The variables defined in the application descriptor.
        variables containers.Map
        % replicaGroups - The replica groups.
        replicaGroups
        % serverTemplates - The server templates.
        serverTemplates containers.Map
        % serviceTemplates - The service templates.
        serviceTemplates containers.Map
        % nodes - The application nodes.
        nodes containers.Map
        % distrib - The application distribution.
        distrib IceGrid.DistributionDescriptor
        % description - The description of this application.
        description char
        % propertySets - Property set descriptors.
        propertySets containers.Map
    end
    methods
        function obj = ApplicationDescriptor(name, variables, replicaGroups, serverTemplates, serviceTemplates, nodes, distrib, description, propertySets)
            if nargin == 0
                obj.name = '';
                obj.variables = containers.Map('KeyType', 'char', 'ValueType', 'char');
                obj.replicaGroups = [];
                obj.serverTemplates = containers.Map('KeyType', 'char', 'ValueType', 'any');
                obj.serviceTemplates = containers.Map('KeyType', 'char', 'ValueType', 'any');
                obj.nodes = containers.Map('KeyType', 'char', 'ValueType', 'any');
                obj.distrib = IceGrid.DistributionDescriptor();
                obj.description = '';
                obj.propertySets = containers.Map('KeyType', 'char', 'ValueType', 'any');
            elseif ne(name, IceInternal.NoInit.Instance)
                obj.name = name;
                obj.variables = variables;
                obj.replicaGroups = replicaGroups;
                obj.serverTemplates = serverTemplates;
                obj.serviceTemplates = serviceTemplates;
                obj.nodes = nodes;
                obj.distrib = distrib;
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
            obj.replicaGroups = IceGrid.ReplicaGroupDescriptorSeq.convert(obj.replicaGroups);
            obj.serverTemplates = IceGrid.TemplateDescriptorDict.convert(obj.serverTemplates);
            obj.serviceTemplates = IceGrid.TemplateDescriptorDict.convert(obj.serviceTemplates);
            obj.nodes = IceGrid.NodeDescriptorDict.convert(obj.nodes);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.ApplicationDescriptor(IceInternal.NoInit.Instance);
            r.name = is.readString();
            r.variables = IceGrid.StringStringDict.read(is);
            r.replicaGroups = IceGrid.ReplicaGroupDescriptorSeq.read(is);
            r.serverTemplates = IceGrid.TemplateDescriptorDict.read(is);
            r.serviceTemplates = IceGrid.TemplateDescriptorDict.read(is);
            r.nodes = IceGrid.NodeDescriptorDict.read(is);
            r.distrib = IceGrid.DistributionDescriptor.ice_read(is);
            r.description = is.readString();
            r.propertySets = IceGrid.PropertySetDescriptorDict.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ApplicationDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ApplicationDescriptor();
            end
            os.writeString(v.name);
            IceGrid.StringStringDict.write(os, v.variables);
            IceGrid.ReplicaGroupDescriptorSeq.write(os, v.replicaGroups);
            IceGrid.TemplateDescriptorDict.write(os, v.serverTemplates);
            IceGrid.TemplateDescriptorDict.write(os, v.serviceTemplates);
            IceGrid.NodeDescriptorDict.write(os, v.nodes);
            IceGrid.DistributionDescriptor.ice_write(os, v.distrib);
            os.writeString(v.description);
            IceGrid.PropertySetDescriptorDict.write(os, v.propertySets);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ApplicationDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
