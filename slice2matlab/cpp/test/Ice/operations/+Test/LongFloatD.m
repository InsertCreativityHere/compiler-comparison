
classdef (Hidden) LongFloatD
    %LONGFLOATD Marshaling and unmarshaling support code for dictionary<long, float>.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = LongFloatD()
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
                    os.writeLong(entries{i, 1});
                    os.writeFloat(entries{i, 2});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('int64', 'single');
            for i = 1:sz
                k = is.readLong();
                v = is.readFloat();
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                len = d.numEntries;
                if len > 254
                    os.writeSize(len * 12 + 5);
                else
                    os.writeSize(len * 12 + 1);
                end
                Test.LongFloatD.write(os, d);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.LongFloatD.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
