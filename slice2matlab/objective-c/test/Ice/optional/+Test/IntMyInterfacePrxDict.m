
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OptionalTest.ice by slice2matlab version 3.7.10

classdef IntMyInterfacePrxDict
    methods(Access=private)
        function obj = IntMyInterfacePrxDict()
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
                    os.writeProxy(v);
                end
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.IntMyInterfacePrxDict.write(os, d);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'int32', 'ValueType', 'any');
            for i = 1:sz
                k = is.readInt();
                v = Test.MyInterfacePrx.ice_read(is);
                r(k) = v;
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.IntMyInterfacePrxDict.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end