
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef while_
    methods(Access=private)
        function obj = while_()
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
                    cs_abstract.break_.ice_write(os, v);
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'char', 'ValueType', 'any');
            for i = 1:sz
                k = is.readString();
                v = cs_abstract.break_.ice_read(is);
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if d ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                cs_abstract.while_.write(os, d);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = cs_abstract.while_.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
