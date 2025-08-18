
classdef (Hidden) for
    %FOR Marshaling and unmarshaling support code for dictionary<string, ::import::guard>.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = for()
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
                    import.guard.ice_write(os, entries{i, 2});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('char', 'import.guard');
            for i = 1:sz
                k = is.readString();
                v = import.guard.ice_read(is);
                r(k) = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                import.for.write(os, d);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = import.for.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
