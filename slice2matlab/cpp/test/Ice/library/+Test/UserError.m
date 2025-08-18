classdef UserError < Ice.UserException
    %USERERROR
    %
    %   UserError Properties:
    %     message
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % MESSAGE
        %   character vector
        message (1, :) char
    end
    methods
        function obj = UserError(errID, msg)
            if nargin == 0
                errID = 'Test:UserError';
                msg = 'Test.UserError';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::UserError';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.message = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::UserError'
    end
end
