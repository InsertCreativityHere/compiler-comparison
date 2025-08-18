classdef (Sealed) TEstNv
    %TESTNV
    %
    %   Creation
    %     Syntax
    %       obj = Test.TEstNv()
    %       obj = Test.TEstNv(d, s)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   TEstNv Properties:
    %     d
    %     s
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % D
        %   int32, int32) scalar
        d (1, 1) dictionary = configureDictionary('int32', 'int32')
        
        % S
        %   int32 vector
        s (1, :) int32
    end
    methods
        function obj = TEstNv(d, s)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.d = d;
                obj.s = s;
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
            r = Test.TEstNv();
            r.d = Test.NV.read(is);
            r.s = is.readIntSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.TEstNv();
            end
            Test.NV.write(os, v.d);
            os.writeIntSeq(v.s);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = Test.TEstNv.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                Test.TEstNv.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
