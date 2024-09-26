
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

classdef TemplateDescriptorDict
    methods(Access=private)
        function obj = TemplateDescriptorDict()
        end
    end
    methods(Static)
        function write(os, d)
            if isempty(d)
                os.writeSize(0);
            else
                sz = d.Count;
                os.writeSize(sz);
                keys = d.keys();
                values = d.values();
                for i = 1:sz
                    k = keys{i};
                    v = values{i};
                    os.writeString(k);
                    IceGrid.TemplateDescriptor.ice_write(os, v);
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'char', 'ValueType', 'any');
            for i = 1:sz
                k = is.readString();
                v = IceGrid.TemplateDescriptor.ice_read(is);
                r(k) = v;
            end
        end
        function r = convert(d)
            keys = d.keys();
            values = d.values();
            for i = 1:d.Count
                k = keys{i};
                v = values{i};
                d(k) = v.ice_convert();
            end
            r = d;
        end
    end
end
