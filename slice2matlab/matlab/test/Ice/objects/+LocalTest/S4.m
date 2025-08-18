classdef (Sealed) S4
    %S4
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.S4()
    %       obj = LocalTest.S4(s1seq)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S4 Properties:
    %     s1seq
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S1SEQ
        %   LocalTest.S1 vector
        s1seq (1, :) = {}
    end
    methods
        function obj = S4(s1seq)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s1seq = s1seq;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.s1seq = LocalTest.S1Seq.convert(obj.s1seq);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = LocalTest.S4();
            r.s1seq = LocalTest.S1Seq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S4();
            end
            LocalTest.S1Seq.write(os, v.s1seq);
        end
    end
end
