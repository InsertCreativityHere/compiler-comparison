classdef (Sealed) NodeDescriptor
    %NODEDESCRIPTOR Describes an IceGrid node.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.NodeDescriptor()
    %       obj = IceGrid.NodeDescriptor(variables, serverInstances, servers, loadFactor, description, propertySets)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   NodeDescriptor Properties:
    %     variables - The variables defined for the node.
    %     serverInstances - The server instances (template instances).
    %     servers - Servers that are not template instances.
    %     loadFactor - Load factor of the node.
    %     description - The description of this node.
    %     propertySets - Property set descriptors.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % VARIABLES The variables defined for the node.
        %   string, string) scalar
        variables (1, 1) dictionary = configureDictionary('char', 'char')
        
        % SERVERINSTANCES The server instances (template instances).
        %   IceGrid.ServerInstanceDescriptor vector
        serverInstances (1, :) IceGrid.ServerInstanceDescriptor
        
        % SERVERS Servers that are not template instances.
        %   cell array
        servers (1, :) = {}
        
        % LOADFACTOR Load factor of the node.
        %   character vector
        loadFactor (1, :) char
        
        % DESCRIPTION The description of this node.
        %   character vector
        description (1, :) char
        
        % PROPERTYSETS Property set descriptors.
        %   string, IceGrid.PropertySetDescriptor) scalar
        propertySets (1, 1) dictionary = configureDictionary('char', 'IceGrid.PropertySetDescriptor')
    end
    methods
        function obj = NodeDescriptor(variables, serverInstances, servers, loadFactor, description, propertySets)
            if nargin > 0
                assert(nargin == 6, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.NodeDescriptor();
            r.variables = IceGrid.StringStringDict.read(is);
            r.serverInstances = IceGrid.ServerInstanceDescriptorSeq.read(is);
            r.servers = IceGrid.ServerDescriptorSeq.read(is);
            r.loadFactor = is.readString();
            r.description = is.readString();
            r.propertySets = IceGrid.PropertySetDescriptorDict.read(is);
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
    end
end
