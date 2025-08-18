classdef SS2 < Ice.Value
    %SS2
    %
    %   Creation
    %     Syntax
    %       obj = Test.SS2()
    %       obj = Test.SS2(s)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   SS2 Properties:
    %     s
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % S
        %   cell array
        s (1, :) = {}
    end
    methods
        function obj = SS2(s)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.s = s;
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
            obj.s = Test.BSeq.convert(obj.s);
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::SS2', -1, true);
            Test.BSeq.write(os, obj.s);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.s = Test.BSeq.read(is);
            is.endSlice();
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::SS2';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::SS2'
    end
end
