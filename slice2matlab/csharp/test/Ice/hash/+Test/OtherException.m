classdef OtherException < Ice.UserException
    %OTHEREXCEPTION
    %
    %   OtherException Properties:
    %     x
    %     y
    %     z
    %     b
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % X
        %   int32 scalar
        x (1, 1) int32
        
        % Y
        %   int32 scalar
        y (1, 1) int32
        
        % Z
        %   int32 scalar
        z (1, 1) int32
        
        % B
        %   logical scalar
        b (1, 1) logical
    end
    methods
        function obj = OtherException(errID, msg)
            if nargin == 0
                errID = 'Test:OtherException';
                msg = 'Test.OtherException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::OtherException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.x = is.readInt();
            obj.y = is.readInt();
            obj.z = is.readInt();
            obj.b = is.readBool();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::OtherException'
    end
end
