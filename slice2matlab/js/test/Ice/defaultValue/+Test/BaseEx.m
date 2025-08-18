classdef BaseEx < Ice.UserException
    %BASEEX
    %
    %   BaseEx Properties:
    %     boolFalse
    %     boolTrue
    %     b
    %     s
    %     i
    %     l
    %     f
    %     d
    %     str
    %     noDefault
    %     zeroI
    %     zeroL
    %     zeroF
    %     zeroDotF
    %     zeroD
    %     zeroDotD
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % BOOLFALSE
        %   logical scalar
        boolFalse (1, 1) logical = false
        
        % BOOLTRUE
        %   logical scalar
        boolTrue (1, 1) logical = true
        
        % B
        %   uint8 scalar
        b (1, 1) uint8 = 1
        
        % S
        %   int16 scalar
        s (1, 1) int16 = 2
        
        % I
        %   int32 scalar
        i (1, 1) int32 = 3
        
        % L
        %   int64 scalar
        l (1, 1) int64 = 4
        
        % F
        %   single scalar
        f (1, 1) single = 5.1
        
        % D
        %   double scalar
        d (1, 1) double = 6.2
        
        % STR
        %   character vector
        str (1, :) char = sprintf('foo \\ "bar\n \r\n\t\v\f\a\b?')
        
        % NODEFAULT
        %   character vector
        noDefault (1, :) char
        
        % ZEROI
        %   int32 scalar
        zeroI (1, 1) int32 = 0
        
        % ZEROL
        %   int64 scalar
        zeroL (1, 1) int64 = 0
        
        % ZEROF
        %   single scalar
        zeroF (1, 1) single = 0
        
        % ZERODOTF
        %   single scalar
        zeroDotF (1, 1) single = 0
        
        % ZEROD
        %   double scalar
        zeroD (1, 1) double = 0
        
        % ZERODOTD
        %   double scalar
        zeroDotD (1, 1) double = 0
    end
    methods
        function obj = BaseEx(errID, msg)
            if nargin == 0
                errID = 'Test:BaseEx';
                msg = 'Test.BaseEx';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::Test::BaseEx';
        end
    end
    methods (Access = protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.boolFalse = is.readBool();
            obj.boolTrue = is.readBool();
            obj.b = is.readByte();
            obj.s = is.readShort();
            obj.i = is.readInt();
            obj.l = is.readLong();
            obj.f = is.readFloat();
            obj.d = is.readDouble();
            obj.str = is.readString();
            obj.noDefault = is.readString();
            obj.zeroI = is.readInt();
            obj.zeroL = is.readLong();
            obj.zeroF = is.readFloat();
            obj.zeroDotF = is.readFloat();
            obj.zeroD = is.readDouble();
            obj.zeroDotD = is.readDouble();
            is.endSlice();
        end
    end
    properties (Constant, Access = private)
        TypeId char = '::Test::BaseEx'
    end
end
