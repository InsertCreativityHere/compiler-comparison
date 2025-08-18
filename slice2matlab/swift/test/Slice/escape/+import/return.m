classdef return < Ice.UserException
    %RETURN
    %
    %   return Properties:
    %     Int32
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % INT32
        %   int32 scalar
        Int32 (1, 1) int32
    end
    methods
        function obj = return(errID, msg)
            if nargin == 0
                errID = 'import:return';
                msg = 'import.return';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::import::return';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.Int32 = is.readInt();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::import::return'
    end
end
