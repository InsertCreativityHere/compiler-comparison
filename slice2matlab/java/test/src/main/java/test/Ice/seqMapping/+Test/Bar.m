classdef Bar < Ice.UserException
    %BAR
    %
    %   Bar Properties:
    %     SLmem
    %     SLSmem
    %
    %   Generated from TestAMD.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % SLMEM
        %   uint8 vector
        SLmem (1, :) uint8
        
        % SLSMEM
        %   cell array
        SLSmem (1, :) cell
    end
    methods
        function obj = Bar(errID, msg)
            if nargin == 0
                errID = 'Test:Bar';
                msg = 'Test.Bar';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::Bar';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.SLmem = is.readByteSeq();
            obj.SLSmem = Test.SLS.read(is);
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::Bar'
    end
end
