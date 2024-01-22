
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyEnumStringD
    methods(Access=private)
        function obj = MyEnumStringD()
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
                    Test.MyEnum.ice_write(os, k);
                    os.writeString(v);
                end
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.MyEnumStringD.write(os, d);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'int32', 'ValueType', 'char');
            for i = 1:sz
                k = Test.MyEnum.ice_read(is);
                v = is.readString();
                r(int32(k)) = v;
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.MyEnumStringD.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
