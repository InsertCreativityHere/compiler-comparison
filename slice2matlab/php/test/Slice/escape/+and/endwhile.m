classdef endwhile < and.endif
    %ENDWHILE
    %
    %   endwhile Properties:
    %     eval
    %     exit
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % EVAL
        %   int32 scalar
        eval (1, 1) int32
        
        % EXIT
        %   int32 scalar
        exit (1, 1) int32 = and.require_once.value
    end
    methods
        function obj = endwhile(errID, msg)
            if nargin == 0
                errID = 'and:endwhile';
                msg = 'and.endwhile';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@and.endif(errID, msg);
        end
        function id = ice_id(~)
            id = '::and::endwhile';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.eval = is.readInt();
            obj.exit = is.readInt();
            is.endSlice();
            obj = iceReadImpl@and.endif(obj, is);
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::and::endwhile'
    end
end
