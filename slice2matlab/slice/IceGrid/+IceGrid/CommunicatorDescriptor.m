% CommunicatorDescriptor   Summary of CommunicatorDescriptor
%
% A communicator descriptor.
%
% CommunicatorDescriptor Properties:
%   adapters - The object adapters.
%   propertySet - The property set.
%   logs - The path of each log file.
%   description - A description of this descriptor.

% Copyright (c) ZeroC, Inc.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef CommunicatorDescriptor < Ice.Value
    properties
        % adapters - The object adapters.
        adapters
        % propertySet - The property set.
        propertySet IceGrid.PropertySetDescriptor
        % logs - The path of each log file.
        logs
        % description - A description of this descriptor.
        description char
    end
    methods
        function obj = CommunicatorDescriptor(adapters, propertySet, logs, description)
            if nargin == 0
                obj.adapters = [];
                obj.propertySet = IceGrid.PropertySetDescriptor();
                obj.logs = [];
                obj.description = '';
            elseif ne(adapters, IceInternal.NoInit.Instance)
                obj.adapters = adapters;
                obj.propertySet = propertySet;
                obj.logs = logs;
                obj.description = description;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods(Access=protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::CommunicatorDescriptor', -1, true);
            IceGrid.AdapterDescriptorSeq.write(os, obj.adapters);
            IceGrid.PropertySetDescriptor.ice_write(os, obj.propertySet);
            os.writeStringSeq(obj.logs);
            os.writeString(obj.description);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.adapters = IceGrid.AdapterDescriptorSeq.read(is);
            obj.propertySet = IceGrid.PropertySetDescriptor.ice_read(is);
            obj.logs = is.readStringSeq();
            obj.description = is.readString();
            is.endSlice();
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::CommunicatorDescriptor';
        end
    end
end
