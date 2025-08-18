classdef (Sealed) S3
    %S3
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.S3()
    %       obj = LocalTest.S3(c1seq)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S3 Properties:
    %     c1seq
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % C1SEQ
        %   cell array
        c1seq (1, :) = {}
    end
    methods
        function obj = S3(c1seq)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.c1seq = c1seq;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.c1seq = LocalTest.C1Seq.convert(obj.c1seq);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = LocalTest.S3();
            r.c1seq = LocalTest.C1Seq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S3();
            end
            LocalTest.C1Seq.write(os, v.c1seq);
        end
    end
end
