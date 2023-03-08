% ServerInstanceDescriptor   Summary of ServerInstanceDescriptor
%
% A server template instance descriptor.
%
% ServerInstanceDescriptor Properties:
%   template - The template used by this instance.
%   parameterValues - The template parameter values.
%   propertySet - The property set.
%   servicePropertySets - The services property sets.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.7.9

classdef ServerInstanceDescriptor
    properties
        % template - The template used by this instance.
        template char
        % parameterValues - The template parameter values.
        parameterValues containers.Map
        % propertySet - The property set.
        propertySet IceGrid.PropertySetDescriptor
        % servicePropertySets - The services property sets. It's only valid to set these
        % property sets if the template is an IceBox server template.
        servicePropertySets containers.Map
    end
    methods
        function obj = ServerInstanceDescriptor(template, parameterValues, propertySet, servicePropertySets)
            if nargin == 0
                obj.template = '';
                obj.parameterValues = containers.Map('KeyType', 'char', 'ValueType', 'char');
                obj.propertySet = IceGrid.PropertySetDescriptor();
                obj.servicePropertySets = containers.Map('KeyType', 'char', 'ValueType', 'any');
            elseif ne(template, IceInternal.NoInit.Instance)
                obj.template = template;
                obj.parameterValues = parameterValues;
                obj.propertySet = propertySet;
                obj.servicePropertySets = servicePropertySets;
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
            r = IceGrid.ServerInstanceDescriptor(IceInternal.NoInit.Instance);
            r.template = is.readString();
            r.parameterValues = IceGrid.StringStringDict.read(is);
            r.propertySet = IceGrid.PropertySetDescriptor.ice_read(is);
            r.servicePropertySets = IceGrid.PropertySetDescriptorDict.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ServerInstanceDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.ServerInstanceDescriptor();
            end
            os.writeString(v.template);
            IceGrid.StringStringDict.write(os, v.parameterValues);
            IceGrid.PropertySetDescriptor.ice_write(os, v.propertySet);
            IceGrid.PropertySetDescriptorDict.write(os, v.servicePropertySets);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.ServerInstanceDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
