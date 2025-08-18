classdef D1 < Test.B
    %D1
    %
    %   Creation
    %     Syntax
    %       obj = Test.D1()
    %       obj = Test.D1(sd1, pd1)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   D1 Properties:
    %     sd1
    %     pd1
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SD1
        %   character vector
        sd1 (1, :) char
        
        % PD1
        %   Test.B scalar | empty array of Test.B
        pd1 {mustBeScalarOrEmpty} = Test.B.empty
    end
    methods
        function obj = D1(sb, pb, sd1, pd1)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 4, 'Invalid number of arguments');
                superArgs = {sb, pb};
            end
            obj = obj@Test.B(superArgs{:});
            if nargin > 0
                obj.sd1 = sd1;
                obj.pd1 = pd1;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::D1', -1, false);
            os.writeString(obj.sd1);
            os.writeValue(obj.pd1);
            os.endSlice();
            iceWriteImpl@Test.B(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.sd1 = is.readString();
            is.readValue(@obj.iceSetProperty_pd1, 'Test.B');
            is.endSlice();
            iceReadImpl@Test.B(obj, is);
        end
        function iceSetProperty_pd1(obj, v)
            obj.pd1 = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::D1';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::D1'
    end
end
