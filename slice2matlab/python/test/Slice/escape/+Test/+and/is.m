classdef is < Ice.UserException
    %IS
    %
    %   is Properties:
    %     bar
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BAR
        %   int32 scalar
        bar (1, 1) int32
    end
    methods
        function obj = is(errID, msg)
            if nargin == 0
                errID = 'Test:and:is';
                msg = 'Test.and.is';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::and::is';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.bar = is.readInt();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::and::is'
    end
end
