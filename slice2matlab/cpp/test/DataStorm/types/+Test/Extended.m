classdef Extended < Test.Base
    %EXTENDED
    %
    %   Creation
    %     Syntax
    %       obj = Test.Extended()
    %       obj = Test.Extended(e)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   Extended Properties:
    %     e
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % E
        %   int32 scalar
        e (1, 1) int32
    end
    methods
        function obj = Extended(b, e)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 2, 'Invalid number of arguments');
                superArgs = {b};
            end
            obj = obj@Test.Base(superArgs{:});
            if nargin > 0
                obj.e = e;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::Extended', -1, false);
            os.writeInt(obj.e);
            os.endSlice();
            iceWriteImpl@Test.Base(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.e = is.readInt();
            is.endSlice();
            iceReadImpl@Test.Base(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::Extended';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Extended'
    end
end
