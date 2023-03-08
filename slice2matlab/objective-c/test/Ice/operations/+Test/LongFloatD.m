
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from OperationsTest.ice by slice2matlab version 3.7.9

classdef LongFloatD
    methods(Access=private)
        function obj = LongFloatD()
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
                    os.writeFloat(v);
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
                Test.LongFloatD.write(os, d);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'int64', 'ValueType', 'single');
            for i = 1:sz
                k = is.readLong();
                v = is.readFloat();
                r(k) = v;
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.LongFloatD.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
