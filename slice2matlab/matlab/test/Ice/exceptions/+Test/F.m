classdef F < Ice.UserException
    %F
    %
    %   F Properties:
    %     data
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % DATA
        %   character vector
        data (1, :) char
    end
    methods
        function obj = F(errID, msg)
            if nargin == 0
                errID = 'Test:F';
                msg = 'Test.F';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::F';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.data = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::F'
    end
end
