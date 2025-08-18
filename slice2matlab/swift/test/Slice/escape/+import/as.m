classdef as < import.return
    %AS
    %
    %   as Properties:
    %     switch
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SWITCH
        %   int32 scalar
        switch (1, 1) int32
    end
    methods
        function obj = as(errID, msg)
            if nargin == 0
                errID = 'import:as';
                msg = 'import.as';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@import.return(errID, msg);
        end
        function id = ice_id(~)
            id = '::import::as';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.switch = is.readInt();
            is.endSlice();
            obj = iceReadImpl@import.return(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::import::as'
    end
end
