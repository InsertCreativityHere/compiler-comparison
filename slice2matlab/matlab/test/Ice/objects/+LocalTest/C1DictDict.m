
classdef (Hidden) C1DictDict
    %C1DICTDICT Marshaling and unmarshaling support code for dictionary<int, ::LocalTest::C1Dict>.
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = C1DictDict()
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
                    LocalTest.C1Dict.write(os, entries{i, 2}{1, 1});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('int32', 'cell');
            for i = 1:sz
                k = is.readInt();
                v = LocalTest.C1Dict.read(is);
                r{k} = v;
            end
        end
        function r = convert(d)
            r = d;
            keys = d.keys;
            values = d.values;
            for i = 1:d.numEntries
                k = keys(i);
                v = values{i};
                r{k} = LocalTest.C1Dict.convert(v);
            end
        end
    end
end
