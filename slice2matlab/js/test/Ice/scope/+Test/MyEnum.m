classdef MyEnum < uint8
    %MYENUM
    %
    %   MyEnum Properties:
    %     v1
    %     v2
    %     v3
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    enumeration
        %V1
        v1 (0)
        
        %V2
        v2 (1)
        
        %V3
        v3 (2)
    end
    methods (Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Test.MyEnum.v1), 2);
            else
                os.writeEnum(int32(v), 2);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(2);
            r = Test.MyEnum.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Test.MyEnum.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Test.MyEnum.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Test.MyEnum.v1;
                case 1
                    r = Test.MyEnum.v2;
                case 2
                    r = Test.MyEnum.v3;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
