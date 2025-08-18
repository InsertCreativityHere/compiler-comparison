
classdef (Hidden) MyClassMap
    %MYCLASSMAP Marshaling and unmarshaling support code for dictionary<string, ::Test::Inner::Inner2::MyClass>.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = MyClassMap()
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
                    os.writeString(entries{i, 1});
                    os.writeValue(entries{i, 2}{1, 1});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('char', 'cell');
            for i = 1:sz
                k = is.readString();
                v = IceInternal.ValueHolder();
                is.readValue(@(v_) v.set(v_), 'Test.Inner.Inner2.MyClass');
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
