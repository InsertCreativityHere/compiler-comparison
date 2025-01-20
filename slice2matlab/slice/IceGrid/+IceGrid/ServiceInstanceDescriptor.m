% ServiceInstanceDescriptor   Summary of ServiceInstanceDescriptor
%
% A service template instance descriptor.
%
% ServiceInstanceDescriptor Properties:
%   template - The template used by this instance.
%   parameterValues - The template parameter values.
%   descriptor - The service definition if the instance isn't a template instance (i.e.: if the template attribute is empty).
%   propertySet - The property set.

% Copyright (c) ZeroC, Inc.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef ServiceInstanceDescriptor
    properties
        % template - The template used by this instance.
        template char
        % parameterValues - The template parameter values.
        parameterValues containers.Map
        % descriptor - The service definition if the instance isn't a template instance (i.e.: if the template attribute is empty).
        descriptor
        % propertySet - The property set.
        propertySet IceGrid.PropertySetDescriptor
    end
    methods
        function obj = ServiceInstanceDescriptor(template, parameterValues, descriptor, propertySet)
            if nargin == 0
                obj.template = '';
                obj.parameterValues = containers.Map('KeyType', 'char', 'ValueType', 'char');
                obj.descriptor = [];
                obj.propertySet = IceGrid.PropertySetDescriptor();
            elseif ne(template, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.ServiceInstanceDescriptor(IceInternal.NoInit.Instance);
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
