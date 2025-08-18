classdef (Sealed) AdapterDescriptor
    %ADAPTERDESCRIPTOR Describes an indirect object adapter.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.AdapterDescriptor()
    %       obj = IceGrid.AdapterDescriptor(name, description, id, replicaGroupId, priority, registerProcess, serverLifetime, objects, allocatables)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   AdapterDescriptor Properties:
    %     name - The object adapter name.
    %     description - A description of this object adapter.
    %     id - The adapter ID.
    %     replicaGroupId - The replica group ID.
    %     priority - The adapter priority.
    %     registerProcess - When `true`, the object adapter registers a process object.
    %     serverLifetime - When `true`, the lifetime of this object adapter is the same of the server lifetime.
    %     objects - The descriptors of well-known objects.
    %     allocatables - The descriptors of allocatable objects
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The object adapter name.
        %   character vector
        name (1, :) char
        
        % DESCRIPTION A description of this object adapter.
        %   character vector
        description (1, :) char
        
        % ID The adapter ID.
        %   character vector
        id (1, :) char
        
        % REPLICAGROUPID The replica group ID. It's empty when the adapter is not part of a replica group.
        %   character vector
        replicaGroupId (1, :) char
        
        % PRIORITY The adapter priority. Only relevant when the adapter is in a replica group.
        %   character vector
        priority (1, :) char
        
        % REGISTERPROCESS When `true`, the object adapter registers a process object.
        %   logical scalar
        registerProcess (1, 1) logical
        
        % SERVERLIFETIME When `true`, the lifetime of this object adapter is the same of the server lifetime. This information is
        %   used by the IceGrid node to figure out the server state: the server is active when all its "server lifetime"
        %   adapters are active.
        %   logical scalar
        serverLifetime (1, 1) logical
        
        % OBJECTS The descriptors of well-known objects.
        %   IceGrid.ObjectDescriptor vector
        objects (1, :) IceGrid.ObjectDescriptor
        
        % ALLOCATABLES The descriptors of allocatable objects
        %   IceGrid.ObjectDescriptor vector
        allocatables (1, :) IceGrid.ObjectDescriptor
    end
    methods
        function obj = AdapterDescriptor(name, description, id, replicaGroupId, priority, registerProcess, serverLifetime, objects, allocatables)
            if nargin > 0
                assert(nargin == 9, 'Invalid number of arguments');
                obj.name = name;
                obj.description = description;
                obj.id = id;
                obj.replicaGroupId = replicaGroupId;
                obj.priority = priority;
                obj.registerProcess = registerProcess;
                obj.serverLifetime = serverLifetime;
                obj.objects = objects;
                obj.allocatables = allocatables;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.AdapterDescriptor();
            r.name = is.readString();
            r.description = is.readString();
            r.id = is.readString();
            r.replicaGroupId = is.readString();
            r.priority = is.readString();
            r.registerProcess = is.readBool();
            r.serverLifetime = is.readBool();
            r.objects = IceGrid.ObjectDescriptorSeq.read(is);
            r.allocatables = IceGrid.ObjectDescriptorSeq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.AdapterDescriptor();
            end
            os.writeString(v.name);
            os.writeString(v.description);
            os.writeString(v.id);
            os.writeString(v.replicaGroupId);
            os.writeString(v.priority);
            os.writeBool(v.registerProcess);
            os.writeBool(v.serverLifetime);
            IceGrid.ObjectDescriptorSeq.write(os, v.objects);
            IceGrid.ObjectDescriptorSeq.write(os, v.allocatables);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.AdapterDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.AdapterDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
