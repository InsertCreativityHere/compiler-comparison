classdef EOneMember < Ice.UserException
    %EONEMEMBER
    %
    %   EOneMember Properties:
    %     e
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % E
        %   Test.Empty scalar | empty array of Test.Empty
        e {mustBeScalarOrEmpty} = Test.Empty.empty
    end
    methods
        function obj = EOneMember(errID, msg)
            if nargin == 0
                errID = 'Test:EOneMember';
                msg = 'Test.EOneMember';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::EOneMember';
        end
    end
    methods (Hidden)
        function obj = icePostUnmarshal(obj)
            obj.e = obj.e.value;
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.e = IceInternal.ValueHolder();
            is.readValue(@(v) obj.e.set(v), 'Test.Empty');
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::EOneMember'
    end
end
