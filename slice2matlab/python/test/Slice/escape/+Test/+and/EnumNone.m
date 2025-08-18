classdef EnumNone < uint8
    %ENUMNONE
    %
    %   EnumNone Properties:
    %     None
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    enumeration
        %NONE
        None (0)
    end
    methods (Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.and.EnumNone.None), 0);
            else
                os.writeEnum(int32(v), 0);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(0);
            r = Test.and.EnumNone.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.and.EnumNone.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.and.EnumNone.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test.and.EnumNone.None;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
