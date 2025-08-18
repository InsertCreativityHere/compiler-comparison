classdef (Sealed) NodeUpdateDescriptor
    %NODEUPDATEDESCRIPTOR Describes the updates to apply to a node in a deployed application.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.NodeUpdateDescriptor()
    %       obj = IceGrid.NodeUpdateDescriptor(name, description, variables, removeVariables, propertySets, removePropertySets, serverInstances, servers, removeServers, loadFactor)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   NodeUpdateDescriptor Properties:
    %     name - The name of the node to update.
    %     description - The updated description (or null if the description wasn't updated.)
    %     variables - The variables to update.
    %     removeVariables - The variables to remove.
    %     propertySets - The property sets to update.
    %     removePropertySets - The property sets to remove.
    %     serverInstances - The server instances to update.
    %     servers - The servers which are not template instances to update.
    %     removeServers - The IDs of the servers to remove.
    %     loadFactor - The updated load factor of the node (or null if the load factor was not updated).
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The name of the node to update.
        %   character vector
        name (1, :) char
        
        % DESCRIPTION The updated description (or null if the description wasn't updated.)
        %   IceGrid.BoxedString scalar | empty array of IceGrid.BoxedString
        description {mustBeScalarOrEmpty} = IceGrid.BoxedString.empty
        
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
        
        % SERVERINSTANCES The server instances to update.
        %   IceGrid.ServerInstanceDescriptor vector
        serverInstances (1, :) IceGrid.ServerInstanceDescriptor
        
        % SERVERS The servers which are not template instances to update.
        %   cell array
        servers (1, :) = {}
        
        % REMOVESERVERS The IDs of the servers to remove.
        %   string vector
        removeServers (1, :) char
        
        % LOADFACTOR The updated load factor of the node (or null if the load factor was not updated).
        %   IceGrid.BoxedString scalar | empty array of IceGrid.BoxedString
        loadFactor {mustBeScalarOrEmpty} = IceGrid.BoxedString.empty
    end
    methods
        function obj = NodeUpdateDescriptor(name, description, variables, removeVariables, propertySets, removePropertySets, serverInstances, servers, removeServers, loadFactor)
            if nargin > 0
                assert(nargin == 10, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.NodeUpdateDescriptor();
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
    end
end
