
classdef (Hidden) NodeDescriptorDict
    %NODEDESCRIPTORDICT Marshaling and unmarshaling support code for dictionary<string, ::IceGrid::NodeDescriptor>.
    %
    %   Generated from Descriptor.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = NodeDescriptorDict()
        end
    end
    methods (Static)
        function write(os, d)
            if isempty(d)
                os.writeSize(0);
            else
                sz = d.numEntries;
                os.writeSize(sz);
                entries = d.entries;
                for i = 1:sz
                    os.writeString(entries{i, 1});
                    IceGrid.NodeDescriptor.ice_write(os, entries{i, 2});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('char', 'IceGrid.NodeDescriptor');
            for i = 1:sz
                k = is.readString();
                v = IceGrid.NodeDescriptor.ice_read(is);
                r(k) = v;
            end
        end
        function r = convert(d)
            r = d;
            keys = d.keys;
            values = d.values;
            for i = 1:d.numEntries
                k = keys(i);
                v = values(i);
                r(k) = v.ice_convert();
            end
        end
    end
end
