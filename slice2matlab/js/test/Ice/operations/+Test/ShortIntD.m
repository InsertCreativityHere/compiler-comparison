
classdef (Hidden) ShortIntD
    %SHORTINTD Marshaling and unmarshaling support code for dictionary<short, int>.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = ShortIntD()
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
                    os.writeShort(entries{i, 1});
                    os.writeInt(entries{i, 2});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('int16', 'int32');
            for i = 1:sz
                k = is.readShort();
                v = is.readInt();
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                len = d.numEntries;
                if len > 254
                    os.writeSize(len * 6 + 5);
                else
                    os.writeSize(len * 6 + 1);
                end
                Test.ShortIntD.write(os, d);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.ShortIntD.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
