
classdef (Hidden) D
    %D Marshaling and unmarshaling support code for dictionary<int, string>.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = D()
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
                    os.writeString(entries{i, 2});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('int32', 'char');
            for i = 1:sz
                k = is.readInt();
                v = is.readString();
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.D.write(os, d);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.D.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
