
% Copyright (c) ZeroC, Inc.
% Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

classdef BDict
    methods(Access=private)
        function obj = BDict()
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
                    os.writeValue(v);
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = containers.Map('KeyType', 'int32', 'ValueType', 'any');
            for i = 1:sz
                k = is.readInt();
                v = IceInternal.ValueHolder();
                is.readValue(@(v_) v.set(v_), 'Test.B');
                r(k) = v;
            end
        end
        function r = convert(d)
            keys = d.keys();
            values = d.values();
            for i = 1:d.Count
                k = keys{i};
                v = values{i};
                d(k) = v.value;
            end
            r = d;
        end
    end
end
