classdef CB6 < Ice.Value
    %CB6
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.CB6()
    %       obj = LocalTest.CB6(c1seqseq)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CB6 Properties:
    %     c1seqseq
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % C1SEQSEQ
        %   cell array
        c1seqseq (1, :) = {}
    end
    methods
        function obj = CB6(c1seqseq)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.c1seqseq = c1seqseq;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Hidden)
        function r = iceDelayPostUnmarshal(~)
            r = true;
        end
        function icePostUnmarshal(obj)
            obj.c1seqseq = LocalTest.C1SeqSeq.convert(obj.c1seqseq);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB6', -1, true);
            LocalTest.C1SeqSeq.write(os, obj.c1seqseq);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.c1seqseq = LocalTest.C1SeqSeq.read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::LocalTest::CB6';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::LocalTest::CB6'
    end
end
