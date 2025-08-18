classdef OptionalException < Ice.UserException
    %OPTIONALEXCEPTION
    %
    %   OptionalException Properties:
    %     req
    %     a
    %     b
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % REQ
        %   logical scalar
        req (1, 1) logical = false
        
        % A
        %   int32 scalar | Ice.Unset
        a (1, 1) = 5
        
        % B
        %   character vector | Ice.Unset
        b (1, :) = IceInternal.UnsetI.Instance
    end
    methods
        function obj = OptionalException(errID, msg)
            if nargin == 0
                errID = 'Test:OptionalException';
                msg = 'Test.OptionalException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::OptionalException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.req = is.readBool();
            obj.a = is.readIntOpt(1);
            obj.b = is.readStringOpt(2);
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::OptionalException'
    end
end
