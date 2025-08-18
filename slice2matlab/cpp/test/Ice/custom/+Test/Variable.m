classdef (Sealed) Variable
    %VARIABLE
    %
    %   Creation
    %     Syntax
    %       obj = Test.Variable()
    %       obj = Test.Variable(s, bl, ss)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Variable Properties:
    %     s
    %     bl
    %     ss
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S
        %   character vector
        s (1, :) char
        
        % BL
        %   logical vector
        bl (1, :) logical
        
        % SS
        %   string vector
        ss (1, :) char
    end
    methods
        function obj = Variable(s, bl, ss)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.s = s;
                obj.bl = bl;
                obj.ss = ss;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = Test.Variable();
            r.s = is.readString();
            r.bl = is.readBoolSeq();
            r.ss = is.readStringSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.Variable();
            end
            os.writeString(v.s);
            os.writeBoolSeq(v.bl);
            os.writeStringSeq(v.ss);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.Variable.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.Variable.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
