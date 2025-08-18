classdef D2 < Test.B
    %D2
    %
    %   Creation
    %     Syntax
    %       obj = Test.D2()
    %       obj = Test.D2(sd2, pd2)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   D2 Properties:
    %     sd2
    %     pd2
    %
    %   Generated from ServerPrivateAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SD2
        %   character vector
        sd2 (1, :) char
        
        % PD2
        %   Test.B scalar | empty array of Test.B
        pd2 {mustBeScalarOrEmpty} = Test.B.empty
    end
    methods
        function obj = D2(sb, pb, sd2, pd2)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 4, 'Invalid number of arguments');
                superArgs = {sb, pb};
            end
            obj = obj@Test.B(superArgs{:});
            if nargin > 0
                obj.sd2 = sd2;
                obj.pd2 = pd2;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::D2', -1, false);
            os.writeString(obj.sd2);
            os.writeValue(obj.pd2);
            os.endSlice();
            iceWriteImpl@Test.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sd2 = is.readString();
            is.readValue(@obj.iceSetProperty_pd2, 'Test.B');
            is.endSlice();
            iceReadImpl@Test.B(obj, is);
        end
        function iceSetProperty_pd2(obj, v)
            obj.pd2 = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::D2';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::D2'
    end
end
