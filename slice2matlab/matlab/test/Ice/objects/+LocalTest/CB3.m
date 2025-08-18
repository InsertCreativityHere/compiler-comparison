classdef CB3 < Ice.Value
    %CB3
    %
    %   Creation
    %     Syntax
    %       obj = LocalTest.CB3()
    %       obj = LocalTest.CB3(s1seq)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   CB3 Properties:
    %     s1seq
    %
    %   Generated from LocalTest.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S1SEQ
        %   LocalTest.S1 vector
        s1seq (1, :) = {}
    end
    methods
        function obj = CB3(s1seq)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s1seq = s1seq;
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
            obj.s1seq = LocalTest.S1Seq.convert(obj.s1seq);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::LocalTest::CB3', -1, true);
            LocalTest.S1Seq.write(os, obj.s1seq);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s1seq = LocalTest.S1Seq.read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::LocalTest::CB3';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::LocalTest::CB3'
    end
end
