
classdef (Hidden) MyEnumStringD
    %MYENUMSTRINGD Marshaling and unmarshaling support code for dictionary<::Test::MyEnum, string>.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = MyEnumStringD()
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
                    Test.MyEnum.ice_write(os, entries{i, 1});
                    os.writeString(entries{i, 2});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('Test.MyEnum', 'char');
            for i = 1:sz
                k = Test.MyEnum.ice_read(is);
                v = is.readString();
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.MyEnumStringD.write(os, d);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.MyEnumStringD.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
