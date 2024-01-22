
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef S1Map
    methods(Access=private)
        function obj = S1Map()
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
                    Test.S1.ice_write(os, v);
                end
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.S1Map.write(os, d);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'char', 'ValueType', 'any');
            for i = 1:sz
                k = is.readString();
                v = Test.S1.ice_read(is);
                r(k) = v;
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S1Map.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
