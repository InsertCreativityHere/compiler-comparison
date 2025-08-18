classdef AdapterActiveException < Ice.UserException
    %ADAPTERACTIVEEXCEPTION This exception is raised if an adapter is active.
    %
    %   Generated from Internal.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function obj = AdapterActiveException(errID, msg)
            if nargin == 0
                errID = 'IceGrid:AdapterActiveException';
                msg = 'IceGrid.AdapterActiveException';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::IceGrid::AdapterActiveException';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::IceGrid::AdapterActiveException'
    end
end
