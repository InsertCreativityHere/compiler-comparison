classdef CB2 < Ice.Value
    %CB2
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.CB2()
    %       obj = LocalTest.CB2(c1seq)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CB2 Properties:
    %     c1seq
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % C1SEQ
        %   cell array
        c1seq (1, :) = {}
    end
    methods
        function obj = CB2(c1seq)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.c1seq = c1seq;
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
            obj.c1seq = LocalTest.C1Seq.convert(obj.c1seq);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB2', -1, true);
            LocalTest.C1Seq.write(os, obj.c1seq);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.c1seq = LocalTest.C1Seq.read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::LocalTest::CB2';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::LocalTest::CB2'
    end
end
