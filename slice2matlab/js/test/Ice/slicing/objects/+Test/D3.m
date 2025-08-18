classdef D3 < Test.B
    %D3
    %
    %   Creation
    %     Syntax
    %       obj = Test.D3()
    %       obj = Test.D3(sd3, pd3)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   D3 Properties:
    %     sd3
    %     pd3
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SD3
        %   character vector
        sd3 (1, :) char
        
        % PD3
        %   Test.B scalar | empty array of Test.B
        pd3 {mustBeScalarOrEmpty} = Test.B.empty
    end
    methods
        function obj = D3(sb, pb, sd3, pd3)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 4, 'Invalid number of arguments');
                superArgs = {sb, pb};
            end
            obj = obj@Test.B(superArgs{:});
            if nargin > 0
                obj.sd3 = sd3;
                obj.pd3 = pd3;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::D3', -1, false);
            os.writeString(obj.sd3);
            os.writeValue(obj.pd3);
            os.endSlice();
            iceWriteImpl@Test.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sd3 = is.readString();
            is.readValue(@obj.iceSetProperty_pd3, 'Test.B');
            is.endSlice();
            iceReadImpl@Test.B(obj, is);
        end
        function iceSetProperty_pd3(obj, v)
            obj.pd3 = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::D3';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::D3'
    end
end
