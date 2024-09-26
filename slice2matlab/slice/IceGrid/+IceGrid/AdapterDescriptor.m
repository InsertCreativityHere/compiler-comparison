% AdapterDescriptor   Summary of AdapterDescriptor
%
% An Ice object adapter descriptor.
%
% AdapterDescriptor Properties:
%   name - The object adapter name.
%   description - The description of this object adapter.
%   id - The object adapter id.
%   replicaGroupId - The replica id of this adapter.
%   priority - The adapter priority.
%   registerProcess - Flag to specify if the object adapter will register a process object.
%   serverLifetime - If true the lifetime of this object adapter is the same of the server lifetime.
%   objects - The well-known object descriptors associated with this object adapter.
%   allocatables - The allocatable object descriptors associated with this object adapter.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef AdapterDescriptor
    properties
        % name - The object adapter name.
        name char
        % description - The description of this object adapter.
        description char
        % id - The object adapter id.
        id char
        % replicaGroupId - The replica id of this adapter.
        replicaGroupId char
        % priority - The adapter priority. This is eventually used when the adapter is member of a replica group to sort the
        % adapter endpoints by priority.
        priority char
        % registerProcess - Flag to specify if the object adapter will register a process object.
        registerProcess logical
        % serverLifetime - If true the lifetime of this object adapter is the same of the server lifetime. This information is used by
        % the IceGrid node to figure out the server state: the server is active only if all its "server lifetime"
        % adapters are active.
        serverLifetime logical
        % objects - The well-known object descriptors associated with this object adapter.
        objects
        % allocatables - The allocatable object descriptors associated with this object adapter.
        allocatables
    end
    methods
        function obj = AdapterDescriptor(name, description, id, replicaGroupId, priority, registerProcess, serverLifetime, objects, allocatables)
            if nargin == 0
                obj.name = '';
                obj.description = '';
                obj.id = '';
                obj.replicaGroupId = '';
                obj.priority = '';
                obj.registerProcess = false;
                obj.serverLifetime = false;
                obj.objects = [];
                obj.allocatables = [];
            elseif ne(name, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.AdapterDescriptor(IceInternal.NoInit.Instance);
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
