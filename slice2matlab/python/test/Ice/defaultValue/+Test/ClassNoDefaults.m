classdef ClassNoDefaults < Test.ClassNoDefaultsBase
    %CLASSNODEFAULTS
    %
    %   Creation
    %     Syntax
    %       obj = Test.ClassNoDefaults()
    %       obj = Test.ClassNoDefaults(st, isDict)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   ClassNoDefaults Properties:
    %     st
    %     isDict
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ST
        %   Test.InnerStruct scalar
        st Test.InnerStruct {mustBeScalarOrEmpty} = Test.InnerStruct.empty
        
        % ISDICT
        %   int32, string) scalar
        isDict (1, 1) dictionary = configureDictionary('int32', 'char')
    end
    methods
        function obj = ClassNoDefaults(str, c1, bs, st, isDict)
            if nargin == 0
                superArgs = {};
            else
                assert(nargin == 5, 'Invalid number of arguments');
                superArgs = {str, c1, bs};
            end
            obj = obj@Test.ClassNoDefaultsBase(superArgs{:});
            if nargin > 0
                obj.st = st;
                obj.isDict = isDict;
            end
        end
        function id = ice_id(obj)
            id = obj.ice_staticId();
        end
    end
    methods (Access = protected)
        function iceWriteImpl(obj, os)
            os.startSlice('::Test::ClassNoDefaults', -1, false);
            Test.InnerStruct.ice_write(os, obj.st);
            Test.IntStringDict.write(os, obj.isDict);
            os.endSlice();
            iceWriteImpl@Test.ClassNoDefaultsBase(obj, os);
        end
        function iceReadImpl(obj, is)
            is.startSlice();
            obj.st = Test.InnerStruct.ice_read(is);
            obj.isDict = Test.IntStringDict.read(is);
            is.endSlice();
            iceReadImpl@Test.ClassNoDefaultsBase(obj, is);
        end
    end
    methods (Static)
        function id = ice_staticId()
            id = '::Test::ClassNoDefaults';
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::ClassNoDefaults'
    end
end
