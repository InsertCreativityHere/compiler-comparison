classdef escaped_bitor < classdef_.bitand_
    %ESCAPED_BITOR
    %
    %   escaped_bitor Properties:
    %     enumeration_
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % ENUMERATION_
        %   int32 scalar
        enumeration_ (1, 1) int32 = 1
    end
    methods
        function obj = escaped_bitor(errID, msg)
            if nargin == 0
                errID = 'classdef_:escaped_bitor';
                msg = 'classdef_.escaped_bitor';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@classdef_.bitand_(errID, msg);
        end
        function id = ice_id(~)
            id = '::classdef::bitor';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.enumeration_ = is.readInt();
            is.endSlice();
            obj = iceReadImpl@classdef_.bitand_(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::classdef::bitor'
    end
end
