classdef (Sealed) ApplicationUpdateDescriptor
    %APPLICATIONUPDATEDESCRIPTOR An application update descriptor to describe the updates to apply to a deployed application.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ApplicationUpdateDescriptor()
    %       obj = IceGrid.ApplicationUpdateDescriptor(name, description, distrib, variables, removeVariables, propertySets, removePropertySets, replicaGroups, removeReplicaGroups, serverTemplates, removeServerTemplates, serviceTemplates, removeServiceTemplates, nodes, removeNodes)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ApplicationUpdateDescriptor Properties:
    %     name - The name of the application to update.
    %     description - The updated description (or null if the description wasn't updated.)
    %     distrib - The updated distribution application descriptor.
    %     variables - The variables to update.
    %     removeVariables - The variables to remove.
    %     propertySets - The property sets to update.
    %     removePropertySets - The property sets to remove.
    %     replicaGroups - The replica groups to update.
    %     removeReplicaGroups - The replica groups to remove.
    %     serverTemplates - The server templates to update.
    %     removeServerTemplates - The IDs of the server template to remove.
    %     serviceTemplates - The service templates to update.
    %     removeServiceTemplates - The IDs of the service template to remove.
    %     nodes - The application nodes to update.
    %     removeNodes - The nodes to remove.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The name of the application to update.
        %   character vector
        name (1, :) char
        
        % DESCRIPTION The updated description (or null if the description wasn't updated.)
        %   IceGrid.BoxedString scalar | empty array of IceGrid.BoxedString
        description {mustBeScalarOrEmpty} = IceGrid.BoxedString.empty
        
        % DISTRIB The updated distribution application descriptor.
        %   IceGrid.BoxedDistributionDescriptor scalar | empty array of IceGrid.BoxedDistributionDescriptor
        %
        %   Deprecated
        distrib {mustBeScalarOrEmpty} = IceGrid.BoxedDistributionDescriptor.empty
        
        % VARIABLES The variables to update.
        %   string, string) scalar
        variables (1, 1) dictionary = configureDictionary('char', 'char')
        
        % REMOVEVARIABLES The variables to remove.
        %   string vector
        removeVariables (1, :) char
        
        % PROPERTYSETS The property sets to update.
        %   string, IceGrid.PropertySetDescriptor) scalar
        propertySets (1, 1) dictionary = configureDictionary('char', 'IceGrid.PropertySetDescriptor')
        
        % REMOVEPROPERTYSETS The property sets to remove.
        %   string vector
        removePropertySets (1, :) char
        
        % REPLICAGROUPS The replica groups to update.
        %   IceGrid.ReplicaGroupDescriptor vector
        replicaGroups (1, :) = {}
        
        % REMOVEREPLICAGROUPS The replica groups to remove.
        %   string vector
        removeReplicaGroups (1, :) char
        
        % SERVERTEMPLATES The server templates to update.
        %   string, IceGrid.TemplateDescriptor) scalar
        serverTemplates (1, 1) = configureDictionary('char', 'IceGrid.TemplateDescriptor')
        
        % REMOVESERVERTEMPLATES The IDs of the server template to remove.
        %   string vector
        removeServerTemplates (1, :) char
        
        % SERVICETEMPLATES The service templates to update.
        %   string, IceGrid.TemplateDescriptor) scalar
        serviceTemplates (1, 1) = configureDictionary('char', 'IceGrid.TemplateDescriptor')
        
        % REMOVESERVICETEMPLATES The IDs of the service template to remove.
        %   string vector
        removeServiceTemplates (1, :) char
        
        % NODES The application nodes to update.
        %   IceGrid.NodeUpdateDescriptor vector
        nodes (1, :) = {}
        
        % REMOVENODES The nodes to remove.
        %   string vector
        removeNodes (1, :) char
    end
    methods
        function obj = ApplicationUpdateDescriptor(name, description, distrib, variables, removeVariables, propertySets, removePropertySets, replicaGroups, removeReplicaGroups, serverTemplates, removeServerTemplates, serviceTemplates, removeServiceTemplates, nodes, removeNodes)
            if nargin > 0
                assert(nargin == 15, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.ApplicationUpdateDescriptor();
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
    end
end
