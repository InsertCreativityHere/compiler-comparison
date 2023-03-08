
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.9

classdef AdapterPrxDict
    methods(Access=private)
        function obj = AdapterPrxDict()
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
                    os.writeProxy(v);
                end
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                IceGrid.AdapterPrxDict.write(os, d);
                os.endSize(pos);
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'char', 'ValueType', 'any');
            for i = 1:sz
                k = is.readString();
                v = IceGrid.AdapterPrx.ice_read(is);
                r(k) = v;
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = IceGrid.AdapterPrxDict.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
