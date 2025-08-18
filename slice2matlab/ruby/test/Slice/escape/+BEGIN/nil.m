classdef nil < BEGIN.next
    %NIL
    %
    %   nil Properties:
    %     not
    %     or
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % NOT
        %   int32 scalar
        not (1, 1) int32
        
        % OR
        %   BEGIN.and scalar
        or BEGIN.and {mustBeScalarOrEmpty} = BEGIN.and.empty
    end
    methods
        function obj = nil(errID, msg)
            if nargin == 0
                errID = 'BEGIN:nil';
                msg = 'BEGIN.nil';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@BEGIN.next(errID, msg);
        end
        function id = ice_id(~)
            id = '::BEGIN::nil';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.not = is.readInt();
            obj.or = BEGIN.and.ice_read(is);
            is.endSlice();
            obj = iceReadImpl@BEGIN.next(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::BEGIN::nil'
    end
end
