classdef (Sealed) ServerInstanceDescriptor
    %SERVERINSTANCEDESCRIPTOR Describes a template instantiation that creates a server.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.ServerInstanceDescriptor()
    %       obj = IceGrid.ServerInstanceDescriptor(template, parameterValues, propertySet, servicePropertySets)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ServerInstanceDescriptor Properties:
    %     template - The template used by this instance.
    %     parameterValues - The template parameter values.
    %     propertySet - The property set.
    %     servicePropertySets - The services property sets.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % TEMPLATE The template used by this instance. It's never empty.
        %   character vector
        template (1, :) char
        
        % PARAMETERVALUES The template parameter values.
        %   string, string) scalar
        parameterValues (1, 1) dictionary = configureDictionary('char', 'char')
        
        % PROPERTYSET The property set.
        %   IceGrid.PropertySetDescriptor scalar
        propertySet IceGrid.PropertySetDescriptor {mustBeScalarOrEmpty} = IceGrid.PropertySetDescriptor.empty
        
        % SERVICEPROPERTYSETS The services property sets. It's only valid to set these property sets when the template is an IceBox server
        %   template.
        %   string, IceGrid.PropertySetDescriptor) scalar
        servicePropertySets (1, 1) dictionary = configureDictionary('char', 'IceGrid.PropertySetDescriptor')
    end
    methods
        function obj = ServerInstanceDescriptor(template, parameterValues, propertySet, servicePropertySets)
            if nargin > 0
                assert(nargin == 4, 'Invalid number of arguments');
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
    methods (Static)
        function r = ice_read(is)
            r = IceGrid.ServerInstanceDescriptor();
            r.template = is.readString();
            r.parameterValues = IceGrid.StringStringDict.read(is);
            r.propertySet = IceGrid.PropertySetDescriptor.ice_read(is);
            r.servicePropertySets = IceGrid.PropertySetDescriptorDict.read(is);
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
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.ServerInstanceDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
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
