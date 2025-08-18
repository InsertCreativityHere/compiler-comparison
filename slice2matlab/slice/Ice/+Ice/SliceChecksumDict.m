
classdef (Hidden) SliceChecksumDict
    %SLICECHECKSUMDICT Marshaling and unmarshaling support code for dictionary<string, string>.
    %
    %   Generated from SliceChecksumDict.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = SliceChecksumDict()
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
                    os.writeString(entries{i, 2});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('char', 'char');
            for i = 1:sz
                k = is.readString();
                v = is.readString();
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Ice.SliceChecksumDict.write(os, d);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Ice.SliceChecksumDict.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
