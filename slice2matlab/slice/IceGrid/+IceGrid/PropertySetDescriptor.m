% PropertySetDescriptor   Summary of PropertySetDescriptor
%
% A property set descriptor.
%
% PropertySetDescriptor Properties:
%   references - References to named property sets.
%   propertyDescriptors - The property set properties.

% Copyright (c) ZeroC, Inc.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef PropertySetDescriptor
    properties
        % references - References to named property sets.
        references
        % propertyDescriptors - The property set properties.
        propertyDescriptors
    end
    methods
        function obj = PropertySetDescriptor(references, propertyDescriptors)
            if nargin == 0
                obj.references = [];
                obj.propertyDescriptors = [];
            elseif ne(references, IceInternal.NoInit.Instance)
                obj.references = references;
                obj.propertyDescriptors = propertyDescriptors;
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
            r = IceGrid.PropertySetDescriptor(IceInternal.NoInit.Instance);
            r.references = is.readStringSeq();
            r.propertyDescriptors = IceGrid.PropertyDescriptorSeq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = IceGrid.PropertySetDescriptor();
            end
            os.writeStringSeq(v.references);
            IceGrid.PropertyDescriptorSeq.write(os, v.propertyDescriptors);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.PropertySetDescriptor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.PropertySetDescriptor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
