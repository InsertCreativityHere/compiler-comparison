classdef (Sealed) S
    %S
    %
    %   Creation
    %     Syntax
    %       obj = Test.S()
    %       obj = Test.S(a, b)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S Properties:
    %     a
    %     b
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % A
        %   Test.APrx scalar | empty array of Test.APrx
        a Test.APrx {mustBeScalarOrEmpty} = Test.APrx.empty
        
        % B
        %   Test.BPrx scalar | empty array of Test.BPrx
        b Test.BPrx {mustBeScalarOrEmpty} = Test.BPrx.empty
    end
    methods
        function obj = S(a, b)
            if nargin > 0
                assert(nargin == 2, 'Invalid number of arguments');
                obj.a = a;
                obj.b = b;
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
            r.a = Test.APrx.ice_read(is);
            r.b = Test.BPrx.ice_read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = Test.S();
            end
            os.writeProxy(v.a);
            os.writeProxy(v.b);
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
