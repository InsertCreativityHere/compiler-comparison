classdef notify < Ice.UserException
    %NOTIFY
    %
    %   notify Properties:
    %     i
    %
    %   Generated from NoNamespace.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % I
        %   int32 scalar
        i (1, 1) int32
    end
    methods
        function obj = notify(errID, msg)
            if nargin == 0
                errID = 'NoNamespace:notify';
                msg = 'NoNamespace.notify';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::NoNamespace::notify';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.i = is.readInt();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::NoNamespace::notify'
    end
end
