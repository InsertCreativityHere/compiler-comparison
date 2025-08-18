classdef Derived < Test.Base
    %DERIVED
    %
    %   Creation
    %     Syntax
    %       obj = Test.Derived()
    %       obj = Test.Derived(b)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Derived Properties:
    %     b
    %
    %   Generated from Derived.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % B
        %   character vector
        b (1, :) char
    end
    methods
        function obj = Derived(theS, str, b)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 3, 'Invalid number of arguments');
                superArgs = {theS, str};
            end
            obj = obj@Test.Base(superArgs{:});
            if nargin > 0
                obj.b = b;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Derived', -1, false);
            os.writeString(obj.b);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.b = is.readString();
            is.endSlice();
            iceReadImpl@Test.Base(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Derived';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Derived'
    end
end
