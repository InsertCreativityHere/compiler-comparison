classdef InternalDbEnvDescriptor < Ice.Value
    %INTERNALDBENVDESCRIPTOR
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.InternalDbEnvDescriptor()
    %       obj = IceGrid.InternalDbEnvDescriptor(name, properties)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   InternalDbEnvDescriptor Properties:
    %     name - The name of the database environment.
    %     properties - The database properties.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME The name of the database environment.
        %   character vector
        name (1, :) char
        
        % PROPERTIES The database properties.
        %   IceGrid.PropertyDescriptor vector
        properties (1, :) IceGrid.PropertyDescriptor
    end
    methods
        function obj = InternalDbEnvDescriptor(name, properties)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.name = name;
                obj.properties = properties;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::IceGrid::InternalDbEnvDescriptor', -1, true);
            os.writeString(obj.name);
            IceGrid.PropertyDescriptorSeq.write(os, obj.properties);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            obj.properties = IceGrid.PropertyDescriptorSeq.read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::InternalDbEnvDescriptor';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::InternalDbEnvDescriptor'
    end
end
