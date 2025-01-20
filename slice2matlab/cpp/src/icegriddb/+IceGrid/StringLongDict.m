
% Copyright (c) ZeroC, Inc.
% Generated from DBTypes.ice by slice2matlab version 3.8.0-alpha.0

classdef StringLongDict
    methods(Access=private)
        function obj = StringLongDict()
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
                    os.writeLong(v);
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'char', 'ValueType', 'int64');
            for i = 1:sz
                k = is.readString();
                v = is.readLong();
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.StringLongDict.write(os, d);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.StringLongDict.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
