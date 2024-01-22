% ServiceDescriptor   Summary of ServiceDescriptor
%
% An IceBox service descriptor.
%
% ServiceDescriptor Properties:
%   name - The service name.
%   entry - The entry point of the IceBox service.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef ServiceDescriptor < IceGrid.CommunicatorDescriptor
    properties
        % name - The service name.
        name char
        % entry - The entry point of the IceBox service.
        entry char
    end
    methods
        function obj = ServiceDescriptor(adapters, propertySet, logs, description, name, entry)
            if nargin == 0
                adapters = [];
                propertySet = IceGrid.PropertySetDescriptor();
                logs = [];
                description = '';
                name = '';
                entry = '';
                v = { adapters, propertySet, logs, description };
            elseif eq(adapters, IceInternal.NoInit.Instance)
                v = { IceInternal.NoInit.Instance, [], [], [] };
            else
                v = { adapters, propertySet, logs, description };
            end;
            obj = obj@IceGrid.CommunicatorDescriptor(v{:});
            if ne(adapters, IceInternal.NoInit.Instance)
                obj.name = name;
                obj.entry = entry;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::ServiceDescriptor', -1, false);
            os.writeString(obj.name);
            os.writeString(obj.entry);
            os.endSlice();
            iceWriteImpl@IceGrid.CommunicatorDescriptor(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            obj.entry = is.readString();
            is.endSlice();
            iceReadImpl@IceGrid.CommunicatorDescriptor(obj, is);
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::ServiceDescriptor';
        end
    end
end
