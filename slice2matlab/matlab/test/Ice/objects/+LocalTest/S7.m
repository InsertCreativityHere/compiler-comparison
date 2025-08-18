classdef (Sealed) S7
    %S7
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.S7()
    %       obj = LocalTest.S7(c1seqseq)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S7 Properties:
    %     c1seqseq
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % C1SEQSEQ
        %   cell array
        c1seqseq (1, :) = {}
    end
    methods
        function obj = S7(c1seqseq)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.c1seqseq = c1seqseq;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.c1seqseq = LocalTest.C1SeqSeq.convert(obj.c1seqseq);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = LocalTest.S7();
            r.c1seqseq = LocalTest.C1SeqSeq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S7();
            end
            LocalTest.C1SeqSeq.write(os, v.c1seqseq);
        end
    end
end
