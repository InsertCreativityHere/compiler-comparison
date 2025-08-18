classdef ServiceDescriptor < IceGrid.CommunicatorDescriptor
    %SERVICEDESCRIPTOR Describes an IceBox service.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ServiceDescriptor()
    %       obj = IceGrid.ServiceDescriptor(name, entry)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ServiceDescriptor Properties:
    %     name - The service name.
    %     entry - The entry point of the IceBox service.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The service name.
        %   character vector
        name (1, :) char
        
        % ENTRY The entry point of the IceBox service.
        %   character vector
        entry (1, :) char
    end
    methods
        function obj = ServiceDescriptor(adapters, propertySet, logs, description, name, entry)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 6, 'Invalid number of arguments');
                superArgs = {adapters, propertySet, logs, description};
            end
            obj = obj@IceGrid.CommunicatorDescriptor(superArgs{:});
            if nargin > 0
                obj.name = name;
                obj.entry = entry;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::ServiceDescriptor';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::ServiceDescriptor'
    end
end
