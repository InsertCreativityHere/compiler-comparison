
classdef (Hidden) LongLongSD
    %LONGLONGSD Marshaling and unmarshaling support code for dictionary<long, ::Test::LongS>.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = LongLongSD()
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
                    os.writeLongSeq(entries{i, 2}{1, 1});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('int64', 'cell');
            for i = 1:sz
                k = is.readLong();
                v = is.readLongSeq();
                r{k} = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.LongLongSD.write(os, d);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.LongLongSD.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
