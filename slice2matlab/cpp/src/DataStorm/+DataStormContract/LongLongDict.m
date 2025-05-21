
% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef LongLongDict
    methods(Access=private)
        function obj = LongLongDict()
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
                    os.writeLong(v);
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'int64', 'ValueType', 'int64');
            for i = 1:sz
                k = is.readLong();
                v = is.readLong();
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                len = length(d);
                if len > 254
                    os.writeSize(len * 16 + 5);
                else
                    os.writeSize(len * 16 + 1);
                end
                DataStormContract.LongLongDict.write(os, d);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = DataStormContract.LongLongDict.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
