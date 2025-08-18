classdef continue < uint8
    %CONTINUE
    %
    %   continue Properties:
    %     let
    %     var
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    enumeration
        %LET
        let (0)
        
        %VAR
        var (1)
    end
    methods (Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(import.continue.let), 1);
            else
                os.writeEnum(int32(v), 1);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(1);
            r = import.continue.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                import.continue.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = import.continue.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = import.continue.let;
                case 1
                    r = import.continue.var;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
