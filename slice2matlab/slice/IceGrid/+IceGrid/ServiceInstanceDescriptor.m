classdef (Sealed) ServiceInstanceDescriptor
    %SERVICEINSTANCEDESCRIPTOR Describes an IceBox service.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ServiceInstanceDescriptor()
    %       obj = IceGrid.ServiceInstanceDescriptor(template, parameterValues, descriptor, propertySet)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ServiceInstanceDescriptor Properties:
    %     template - The template used by this instance.
    %     parameterValues - The template parameter values.
    %     descriptor - The service definition if the instance isn't a template instance (i.e.: if the template attribute is empty).
    %     propertySet - The property set.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % TEMPLATE The template used by this instance. It's empty when this instance does not use a template.
        %   character vector
        template (1, :) char
        
        % PARAMETERVALUES The template parameter values.
        %   string, string) scalar
        parameterValues (1, 1) dictionary = configureDictionary('char', 'char')
        
        % DESCRIPTOR The service definition if the instance isn't a template instance (i.e.: if the template attribute is empty).
        %   IceGrid.ServiceDescriptor scalar | empty array of IceGrid.ServiceDescriptor
        descriptor {mustBeScalarOrEmpty} = IceGrid.ServiceDescriptor.empty
        
        % PROPERTYSET The property set.
        %   IceGrid.PropertySetDescriptor scalar
        propertySet IceGrid.PropertySetDescriptor {mustBeScalarOrEmpty} = IceGrid.PropertySetDescriptor.empty
    end
    methods
        function obj = ServiceInstanceDescriptor(template, parameterValues, descriptor, propertySet)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
                obj.template = template;
                obj.parameterValues = parameterValues;
                obj.descriptor = descriptor;
                obj.propertySet = propertySet;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.descriptor = obj.descriptor.value;
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.ServiceInstanceDescriptor();
            r.template = is.readString();
            r.parameterValues = IceGrid.StringStringDict.read(is);
            descriptor_ = IceInternal.ValueHolder();
            r.descriptor = descriptor_;
            is.readValue(@(v_) descriptor_.set(v_), 'IceGrid.ServiceDescriptor');
            r.propertySet = IceGrid.PropertySetDescriptor.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ServiceInstanceDescriptor();
            end
            os.writeString(v.template);
            IceGrid.StringStringDict.write(os, v.parameterValues);
            os.writeValue(v.descriptor);
            IceGrid.PropertySetDescriptor.ice_write(os, v.propertySet);
        end
    end
end
