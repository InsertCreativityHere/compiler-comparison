classdef endif < Ice.UserException
    %ENDIF
    %
    %   endif Properties:
    %     switch
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SWITCH
        %   int32 scalar
        switch (1, 1) int32
    end
    methods
        function obj = endif(errID, msg)
            if nargin == 0
                errID = 'and:endif';
                msg = 'and.endif';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::and::endif';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.switch = is.readInt();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::and::endif'
    end
end
