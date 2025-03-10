
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef ShortIntD
    methods(Access=private)
        function obj = ShortIntD()
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
                    os.writeShort(k);
                    os.writeInt(v);
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'int32', 'ValueType', 'int32');
            for i = 1:sz
                k = is.readShort();
                v = is.readInt();
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                len = length(d);
                if len > 254
                    os.writeSize(len * 6 + 5);
                else
                    os.writeSize(len * 6 + 1);
                end
                Test.ShortIntD.write(os, d);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.ShortIntD.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
