% TemplateDescriptor   Summary of TemplateDescriptor
%
% A template descriptor for server or service templates.
%
% TemplateDescriptor Properties:
%   descriptor - The template.
%   parameters - The parameters required to instantiate the template.
%   parameterDefaults - The parameters default values.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.7.9

classdef TemplateDescriptor
    properties
        % descriptor - The template.
        descriptor
        % parameters - The parameters required to instantiate the template.
        parameters
        % parameterDefaults - The parameters default values.
        parameterDefaults containers.Map
    end
    methods
        function obj = TemplateDescriptor(descriptor, parameters, parameterDefaults)
            if nargin == 0
                obj.descriptor = [];
                obj.parameters = [];
                obj.parameterDefaults = containers.Map('KeyType', 'char', 'ValueType', 'char');
            elseif ne(descriptor, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = IceGrid.TemplateDescriptor(IceInternal.NoInit.Instance);
            descriptor_ = IceInternal.ValueHolder();
            r.descriptor = descriptor_;
            is.readValue(@(v_) descriptor_.set(v_), 'IceGrid.CommunicatorDescriptor');
            r.parameters = is.readStringSeq();
            r.parameterDefaults = IceGrid.StringStringDict.read(is);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.TemplateDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.TemplateDescriptor();
            end
            os.writeValue(v.descriptor);
            os.writeStringSeq(v.parameters);
            IceGrid.StringStringDict.write(os, v.parameterDefaults);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.TemplateDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
