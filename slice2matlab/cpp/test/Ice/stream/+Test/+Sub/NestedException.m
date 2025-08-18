classdef NestedException < Ice.UserException
    %NESTEDEXCEPTION
    %
    %   NestedException Properties:
    %     str
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % STR
        %   character vector
        str (1, :) char
    end
    methods
        function obj = NestedException(errID, msg)
            if nargin == 0
                errID = 'Test:Sub:NestedException';
                msg = 'Test.Sub.NestedException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::Sub::NestedException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.str = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Sub::NestedException'
    end
end
