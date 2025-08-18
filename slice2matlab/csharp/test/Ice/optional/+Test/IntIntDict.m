
classdef (Hidden) IntIntDict
    %INTINTDICT Marshaling and unmarshaling support code for dictionary<int, int>.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = IntIntDict()
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
                    os.writeInt(entries{i, 2});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('int32', 'int32');
            for i = 1:sz
                k = is.readInt();
                v = is.readInt();
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                len = d.numEntries;
                if len > 254
                    os.writeSize(len * 8 + 5);
                else
                    os.writeSize(len * 8 + 1);
                end
                Test.IntIntDict.write(os, d);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = Test.IntIntDict.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
