
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef IntIntDict
    methods(Access=private)
        function obj = IntIntDict()
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
                    os.writeInt(k);
                    os.writeInt(v);
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'int32', 'ValueType', 'int32');
            for i = 1:sz
                k = is.readInt();
                v = is.readInt();
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                len = length(d);
                if len > 254
                    os.writeSize(len * 8 + 5);
                else
                    os.writeSize(len * 8 + 1);
                end
                Test.IntIntDict.write(os, d);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.IntIntDict.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
