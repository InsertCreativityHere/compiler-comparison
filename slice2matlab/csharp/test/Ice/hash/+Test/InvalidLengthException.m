classdef InvalidLengthException < Test.BaseException
    %INVALIDLENGTHEXCEPTION
    %
    %   InvalidLengthException Properties:
    %     length
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % LENGTH
        %   int32 scalar
        length (1, 1) int32
    end
    methods
        function obj = InvalidLengthException(errID, msg)
            if nargin == 0
                errID = 'Test:InvalidLengthException';
                msg = 'Test.InvalidLengthException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.BaseException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::InvalidLengthException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.length = is.readInt();
            is.endSlice();
            obj = iceReadImpl@Test.BaseException(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::InvalidLengthException'
    end
end
