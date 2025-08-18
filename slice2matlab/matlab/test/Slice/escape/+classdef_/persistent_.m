classdef persistent_ < uint8
    %PERSISTENT_
    %
    %   persistent_ Properties:
    %     break_
    %     catch_
    %     LAST
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    enumeration
        %BREAK_
        break_ (0)
        
        %CATCH_
        catch_ (1)
        
        %LAST
        LAST (2)
    end
    methods (Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(classdef_.persistent_.break_), 2);
            else
                os.writeEnum(int32(v), 2);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(2);
            r = classdef_.persistent_.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                classdef_.persistent_.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = classdef_.persistent_.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = classdef_.persistent_.break_;
                case 1
                    r = classdef_.persistent_.catch_;
                case 2
                    r = classdef_.persistent_.LAST;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
