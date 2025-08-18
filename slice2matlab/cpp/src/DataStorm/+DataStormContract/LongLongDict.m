
classdef (Hidden) LongLongDict
    %LONGLONGDICT Marshaling and unmarshaling support code for dictionary<long, long>.
    %
    %   Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = LongLongDict()
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
                    os.writeLong(entries{i, 2});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('int64', 'int64');
            for i = 1:sz
                k = is.readLong();
                v = is.readLong();
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                len = d.numEntries;
                if len > 254
                    os.writeSize(len * 16 + 5);
                else
                    os.writeSize(len * 16 + 1);
                end
                DataStormContract.LongLongDict.write(os, d);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = DataStormContract.LongLongDict.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
