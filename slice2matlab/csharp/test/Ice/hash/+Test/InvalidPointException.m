classdef InvalidPointException < Test.BaseException
    %INVALIDPOINTEXCEPTION
    %
    %   InvalidPointException Properties:
    %     index
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % INDEX
        %   int32 scalar
        index (1, 1) int32
    end
    methods
        function obj = InvalidPointException(errID, msg)
            if nargin == 0
                errID = 'Test:InvalidPointException';
                msg = 'Test.InvalidPointException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.BaseException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::InvalidPointException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.index = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.BaseException(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::InvalidPointException'
    end
end
