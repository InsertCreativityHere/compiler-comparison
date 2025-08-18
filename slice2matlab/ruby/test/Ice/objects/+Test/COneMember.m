classdef COneMember < Ice.Value
    %CONEMEMBER
    %
    %   Creation
    %     Syntax
    %       obj = Test.COneMember()
    %       obj = Test.COneMember(e)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   COneMember Properties:
    %     e
    %
    %   Generated from ClientPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % E
        %   Test.Empty scalar | empty array of Test.Empty
        e {mustBeScalarOrEmpty} = Test.Empty.empty
    end
    methods
        function obj = COneMember(e)
            if nargin > 0
                assert(nargin == 1, 'Invalid number of arguments');
                obj.e = e;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::COneMember', -1, true);
            os.writeValue(obj.e);
            os.endSlice();
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            is.readValue(@obj.iceSetProperty_e, 'Test.Empty');
            is.endSlice();
        end
        function iceSetProperty_e(obj, v)
            obj.e = v;
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::COneMember';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::COneMember'
    end
end
