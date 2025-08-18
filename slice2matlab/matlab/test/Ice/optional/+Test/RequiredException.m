classdef RequiredException < Test.OptionalException
    %REQUIREDEXCEPTION
    %
    %   RequiredException Properties:
    %     ss
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SS
        %   character vector
        ss (1, :) char = sprintf('test')
    end
    methods
        function obj = RequiredException(errID, msg)
            if nargin == 0
                errID = 'Test:RequiredException';
                msg = 'Test.RequiredException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.OptionalException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::RequiredException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.ss = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.OptionalException(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::RequiredException'
    end
end
