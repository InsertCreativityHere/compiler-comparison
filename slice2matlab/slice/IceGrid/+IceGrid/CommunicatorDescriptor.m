classdef CommunicatorDescriptor < Ice.Value
    %COMMUNICATORDESCRIPTOR Describes an Ice communicator.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.CommunicatorDescriptor()
    %       obj = IceGrid.CommunicatorDescriptor(adapters, propertySet, logs, description)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CommunicatorDescriptor Properties:
    %     adapters - The indirect object adapters.
    %     propertySet - The property set.
    %     logs - The path of each log file.
    %     description - A description of this descriptor.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ADAPTERS The indirect object adapters.
        %   IceGrid.AdapterDescriptor vector
        adapters (1, :) IceGrid.AdapterDescriptor
        
        % PROPERTYSET The property set.
        %   IceGrid.PropertySetDescriptor scalar
        propertySet IceGrid.PropertySetDescriptor {mustBeScalarOrEmpty} = IceGrid.PropertySetDescriptor.empty
        
        % LOGS The path of each log file.
        %   string vector
        logs (1, :) char
        
        % DESCRIPTION A description of this descriptor.
        %   character vector
        description (1, :) char
    end
    methods
        function obj = CommunicatorDescriptor(adapters, propertySet, logs, description)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
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
    methods (Access = protected)
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
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::CommunicatorDescriptor';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::CommunicatorDescriptor'
    end
end
