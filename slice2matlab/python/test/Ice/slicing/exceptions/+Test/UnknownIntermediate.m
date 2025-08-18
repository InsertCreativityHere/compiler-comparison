classdef UnknownIntermediate < Test.Base
    %UNKNOWNINTERMEDIATE
    %
    %   UnknownIntermediate Properties:
    %     ui
    %
    %   Generated from ServerPrivate.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % UI
        %   character vector
        ui (1, :) char
    end
    methods
        function obj = UnknownIntermediate(errID, msg)
            if nargin == 0
                errID = 'Test:UnknownIntermediate';
                msg = 'Test.UnknownIntermediate';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Test.Base(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::UnknownIntermediate';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.ui = is.readString();
            is.endSlice();
            obj = iceReadImpl@Test.Base(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::UnknownIntermediate'
    end
end
