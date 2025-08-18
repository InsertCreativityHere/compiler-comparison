classdef (Sealed) ApplicationDescriptor
    %APPLICATIONDESCRIPTOR Describes an application.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ApplicationDescriptor()
    %       obj = IceGrid.ApplicationDescriptor(name, variables, replicaGroups, serverTemplates, serviceTemplates, nodes, distrib, description, propertySets)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ApplicationDescriptor Properties:
    %     name - The application name.
    %     variables - The variables defined in the application descriptor.
    %     replicaGroups - The replica groups.
    %     serverTemplates - The server templates.
    %     serviceTemplates - The service templates.
    %     nodes - The node descriptors.
    %     distrib - The application distribution.
    %     description - The description of this application.
    %     propertySets - Property set descriptors.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The application name.
        %   character vector
        name (1, :) char
        
        % VARIABLES The variables defined in the application descriptor.
        %   string, string) scalar
        variables (1, 1) dictionary = configureDictionary('char', 'char')
        
        % REPLICAGROUPS The replica groups.
        %   IceGrid.ReplicaGroupDescriptor vector
        replicaGroups (1, :) = {}
        
        % SERVERTEMPLATES The server templates.
        %   string, IceGrid.TemplateDescriptor) scalar
        serverTemplates (1, 1) = configureDictionary('char', 'IceGrid.TemplateDescriptor')
        
        % SERVICETEMPLATES The service templates.
        %   string, IceGrid.TemplateDescriptor) scalar
        serviceTemplates (1, 1) = configureDictionary('char', 'IceGrid.TemplateDescriptor')
        
        % NODES The node descriptors.
        %   string, IceGrid.NodeDescriptor) scalar
        nodes (1, 1) = configureDictionary('char', 'IceGrid.NodeDescriptor')
        
        % DISTRIB The application distribution.
        %   IceGrid.DistributionDescriptor scalar
        %
        %   Deprecated
        distrib IceGrid.DistributionDescriptor {mustBeScalarOrEmpty} = IceGrid.DistributionDescriptor.empty
        
        % DESCRIPTION The description of this application.
        %   character vector
        description (1, :) char
        
        % PROPERTYSETS Property set descriptors.
        %   string, IceGrid.PropertySetDescriptor) scalar
        propertySets (1, 1) dictionary = configureDictionary('char', 'IceGrid.PropertySetDescriptor')
    end
    methods
        function obj = ApplicationDescriptor(name, variables, replicaGroups, serverTemplates, serviceTemplates, nodes, distrib, description, propertySets)
            if nargin > 0
                assert(nargin == 9, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.ApplicationDescriptor();
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
    end
end
