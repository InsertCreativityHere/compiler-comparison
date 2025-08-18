classdef IDerived < Test.IBase
    %IDERIVED
    %
    %   Creation
    %     Syntax
    %       obj = Test.IDerived()
    %       obj = Test.IDerived(name)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   IDerived Properties:
    %     name
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NAME
        %   character vector
        name (1, :) char
    end
    methods
        function obj = IDerived(id, name)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 2, 'Invalid number of arguments');
                superArgs = {id};
            end
            obj = obj@Test.IBase(superArgs{:});
            if nargin > 0
                obj.name = name;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::IDerived', -1, false);
            os.writeString(obj.name);
            os.endSlice();
            iceWriteImpl@Test.IBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.name = is.readString();
            is.endSlice();
            iceReadImpl@Test.IBase(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::IDerived';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::IDerived'
    end
end
