
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from LocalTest.ice by slice2matlab version 3.7.9

classdef S1Dict
    methods(Access=private)
        function obj = S1Dict()
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
                    LocalTest.S1.ice_write(os, v);
                end
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                LocalTest.S1Dict.write(os, d);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'int32', 'ValueType', 'any');
            for i = 1:sz
                k = is.readInt();
                v = LocalTest.S1.ice_read(is);
                r(k) = v;
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = LocalTest.S1Dict.read(is);
            else
                r = Ice.Unset;
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
