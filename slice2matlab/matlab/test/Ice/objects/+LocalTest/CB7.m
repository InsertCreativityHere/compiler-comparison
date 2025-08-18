classdef CB7 < Ice.Value
    %CB7
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.CB7()
    %       obj = LocalTest.CB7(s1seqseq)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CB7 Properties:
    %     s1seqseq
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S1SEQSEQ
        %   cell array
        s1seqseq (1, :) = {}
    end
    methods
        function obj = CB7(s1seqseq)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s1seqseq = s1seqseq;
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
            obj.s1seqseq = LocalTest.S1SeqSeq.convert(obj.s1seqseq);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB7', -1, true);
            LocalTest.S1SeqSeq.write(os, obj.s1seqseq);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s1seqseq = LocalTest.S1SeqSeq.read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::LocalTest::CB7';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::LocalTest::CB7'
    end
end
