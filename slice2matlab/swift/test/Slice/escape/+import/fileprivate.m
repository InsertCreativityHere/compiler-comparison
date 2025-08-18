
classdef (Hidden) fileprivate
    %FILEPRIVATE Marshaling and unmarshaling support code for sequence<::import::guard>.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods (Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                import.guard.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = import.guard.empty();
            if sz > 0
                r(1, sz) = import.guard();
                for i = 1:sz
                    r(i).default = is.readInt();
                end
            end
        end
        function writeOpt(os, tag, seq)
            if seq ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                len = length(seq);
                if len > 254
                    os.writeSize(len * 4 + 5);
                else
                    os.writeSize(len * 4 + 1);
                end
                import.fileprivate.write(os, seq);
            end
        end
        function r = readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = import.fileprivate.read(is);
            else
                r = Ice.Unset;
            end
        end
    end
end
