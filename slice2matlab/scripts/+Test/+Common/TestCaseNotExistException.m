classdef TestCaseNotExistException < Ice.UserException
    %TESTCASENOTEXISTEXCEPTION
    %
    %   TestCaseNotExistException Properties:
    %     reason
    %
    %   Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % REASON
        %   character vector
        reason (1, :) char
    end
    methods
        function obj = TestCaseNotExistException(errID, msg)
            if nargin == 0
                errID = 'Test:Common:TestCaseNotExistException';
                msg = 'Test.Common.TestCaseNotExistException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::Common::TestCaseNotExistException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.reason = is.readString();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Common::TestCaseNotExistException'
    end
end
