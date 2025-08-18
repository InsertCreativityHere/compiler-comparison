classdef (Sealed) S
    %S
    %
    %   Creation
    %     Syntax
    %       obj = Test.S()
    %       obj = Test.S(b1, b2, b4, s1, s2, s3)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S Properties:
    %     b1
    %     b2
    %     b4
    %     s1
    %     s2
    %     s3
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % B1
        %   uint8 vector
        b1 (1, :) uint8
        
        % B2
        %   uint8 vector
        b2 (1, :) uint8
        
        % B4
        %   uint8 vector
        b4 (1, :) uint8
        
        % S1
        %   string vector
        s1 (1, :) char
        
        % S2
        %   string vector
        s2 (1, :) char
        
        % S3
        %   string vector
        s3 (1, :) char
    end
    methods
        function obj = S(b1, b2, b4, s1, s2, s3)
            if nargin > 0
                assert(nargin == 6, 'Invalid number of arguments');
                obj.b1 = b1;
                obj.b2 = b2;
                obj.b4 = b4;
                obj.s1 = s1;
                obj.s2 = s2;
                obj.s3 = s3;
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
            r = Test.S();
            r.b1 = is.readByteSeq();
            r.b2 = is.readByteSeq();
            r.b4 = is.readByteSeq();
            r.s1 = is.readStringSeq();
            r.s2 = is.readStringSeq();
            r.s3 = is.readStringSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S();
            end
            os.writeByteSeq(v.b1);
            os.writeByteSeq(v.b2);
            os.writeByteSeq(v.b4);
            os.writeStringSeq(v.s1);
            os.writeStringSeq(v.s2);
            os.writeStringSeq(v.s3);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.S.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.S.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
