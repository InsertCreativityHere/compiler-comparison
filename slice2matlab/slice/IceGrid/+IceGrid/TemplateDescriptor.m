classdef (Sealed) TemplateDescriptor
    %TEMPLATEDESCRIPTOR Describes a template for a server or an IceBox service.
    %
    %   Creation
    %     Syntax
    %       obj = IceGrid.TemplateDescriptor()
    %       obj = IceGrid.TemplateDescriptor(descriptor, parameters, parameterDefaults)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   TemplateDescriptor Properties:
    %     descriptor - The communicator.
    %     parameters - The parameters required to instantiate the template.
    %     parameterDefaults - The parameters default values.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % DESCRIPTOR The communicator.
        %   IceGrid.CommunicatorDescriptor scalar | empty array of IceGrid.CommunicatorDescriptor
        descriptor {mustBeScalarOrEmpty} = IceGrid.CommunicatorDescriptor.empty
        
        % PARAMETERS The parameters required to instantiate the template.
        %   string vector
        parameters (1, :) char
        
        % PARAMETERDEFAULTS The parameters default values.
        %   string, string) scalar
        parameterDefaults (1, 1) dictionary = configureDictionary('char', 'char')
    end
    methods
        function obj = TemplateDescriptor(descriptor, parameters, parameterDefaults)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.descriptor = descriptor;
                obj.parameters = parameters;
                obj.parameterDefaults = parameterDefaults;
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
            r = IceGrid.TemplateDescriptor();
            descriptor_ = IceInternal.ValueHolder();
            r.descriptor = descriptor_;
            is.readValue(@(v_) descriptor_.set(v_), 'IceGrid.CommunicatorDescriptor');
            r.parameters = is.readStringSeq();
            r.parameterDefaults = IceGrid.StringStringDict.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.TemplateDescriptor();
            end
            os.writeValue(v.descriptor);
            os.writeStringSeq(v.parameters);
            IceGrid.StringStringDict.write(os, v.parameterDefaults);
        end
    end
end
