
classdef (Hidden) BoolBoolSD
    %BOOLBOOLSD Marshaling and unmarshaling support code for dictionary<bool, ::Test::BoolS>.
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    methods (Access = private)
        function obj = BoolBoolSD()
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
                    os.writeBool(entries{i, 1});
                    os.writeBoolSeq(entries{i, 2}{1, 1});
                end
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = configureDictionary('logical', 'cell');
            for i = 1:sz
                k = is.readBool();
                v = is.readBoolSeq();
                r{k} = v;
            end
        end
        function writeOpt(os, tag, d)
            if isa(d, 'dictionary') && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.BoolBoolSD.write(os, d);
                os.endSize(pos);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.BoolBoolSD.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
