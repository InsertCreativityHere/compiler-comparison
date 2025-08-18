
classdef (Hidden) S1Dict
    %S1DICT Marshaling and unmarshaling support code for dictionary<int, ::LocalTest::S1>.
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = S1Dict()
        end
    end
    methods (Static)
        function write(os, d)
            if isempty(d)
                os.writeSize(0);
            else
                sz = d.numEntries;
                os.writeSize(sz);
                entries = d.entries;
                for i = 1:sz
                    os.writeInt(entries{i, 1});
                    LocalTest.S1.ice_write(os, entries{i, 2});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('int32', 'LocalTest.S1');
            for i = 1:sz
                k = is.readInt();
                v = LocalTest.S1.ice_read(is);
                r(k) = v;
            end
        end
        function r = convert(d)
            r = d;
            keys = d.keys;
            values = d.values;
            for i = 1:d.numEntries
                k = keys(i);
                v = values(i);
                r(k) = v.ice_convert();
            end
        end
    end
end
