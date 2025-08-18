
classdef (Hidden) StructDict1
    %STRUCTDICT1 Marshaling and unmarshaling support code for dictionary<::LocalTest::StructKey, ::LocalTest::C1>.
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = StructDict1()
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
                    LocalTest.StructKey.ice_write(os, entries{i, 1});
                    os.writeValue(entries{i, 2}{1, 1});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('LocalTest.StructKey', 'cell');
            for i = 1:sz
                k = LocalTest.StructKey.ice_read(is);
                v = IceInternal.ValueHolder();
                is.readValue(@(v_) v.set(v_), 'LocalTest.C1');
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
                r{k} = v.value;
            end
        end
    end
end
