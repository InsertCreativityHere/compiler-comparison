
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from ServerTypes.ice by slice2matlab version 3.7.9

classdef Dictionary2
    methods(Access=private)
        function obj = Dictionary2()
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
                    os.writeLong(k);
                    os.writeInt(v);
                end
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                len = length(d);
                if len > 254
                    os.writeSize(len * 12 + 5);
                else
                    os.writeSize(len * 12 + 1);
                end
                Test.Dictionary2.write(os, d);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'int64', 'ValueType', 'int32');
            for i = 1:sz
                k = is.readLong();
                v = is.readInt();
                r(k) = v;
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.Dictionary2.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
