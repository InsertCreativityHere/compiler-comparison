
classdef (Hidden) ByteByteSD
    %BYTEBYTESD Marshaling and unmarshaling support code for dictionary<byte, ::Test::ByteS>.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = ByteByteSD()
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
                    os.writeByte(entries{i, 1});
                    os.writeByteSeq(entries{i, 2}{1, 1});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('uint8', 'cell');
            for i = 1:sz
                k = is.readByte();
                v = is.readByteSeq();
                r{k} = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.ByteByteSD.write(os, d);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.ByteByteSD.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
