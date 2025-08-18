classdef foreach < abstract.fixed
    %FOREACH
    %
    %   foreach Properties:
    %     goto
    %     Message
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % GOTO
        %   int32 scalar
        goto (1, 1) int32
        
        % MESSAGE
        %   int32 scalar
        Message (1, 1) int32
    end
    methods
        function obj = foreach(errID, msg)
            if nargin == 0
                errID = 'abstract:foreach';
                msg = 'abstract.foreach';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@abstract.fixed(errID, msg);
        end
        function id = ice_id(~)
            id = '::abstract::foreach';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.goto = is.readInt();
            obj.Message = is.readInt();
            is.endSlice();
            obj = iceReadImpl@abstract.fixed(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::abstract::foreach'
    end
end
