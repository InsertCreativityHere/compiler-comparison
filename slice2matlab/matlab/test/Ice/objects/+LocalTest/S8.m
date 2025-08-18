classdef (Sealed) S8
    %S8
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.S8()
    %       obj = LocalTest.S8(s1seqseq)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   S8 Properties:
    %     s1seqseq
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S1SEQSEQ
        %   cell array
        s1seqseq (1, :) = {}
    end
    methods
        function obj = S8(s1seqseq)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s1seqseq = s1seqseq;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
        function obj = ice_convert(obj)
            obj.s1seqseq = LocalTest.S1SeqSeq.convert(obj.s1seqseq);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = LocalTest.S8();
            r.s1seqseq = LocalTest.S1SeqSeq.read(is);
        end
        function ice_write(os, v)
            if isempty(v)
                v = LocalTest.S8();
            end
            LocalTest.S1SeqSeq.write(os, v.s1seqseq);
        end
    end
end
