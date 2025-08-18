classdef (Sealed) global_
    %GLOBAL_
    %
    %   Creation
    %     Syntax
    %       obj = classdef_.global_()
    %       obj = classdef_.global_(case_, continue_, eq_)
    %
    %     The input arguments correspond to the properties, in order.
    %
    %   global_ Properties:
    %     case_
    %     continue_
    %     eq_
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    properties
        % CASE_
        %   classdef_.persistent_ scalar
        case_ (1, 1) classdef_.persistent_ = classdef_.persistent_.catch_
        
        % CONTINUE_
        %   int32 scalar
        continue_ (1, 1) int32 = 1
        
        % EQ_
        %   int32 scalar
        eq_ (1, 1) int32 = 2
    end
    methods
        function obj = global_(case_, continue_, eq_)
            if nargin > 0
                assert(nargin == 3, 'Invalid number of arguments');
                obj.case_ = case_;
                obj.continue_ = continue_;
                obj.eq_ = eq_;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods (Static)
        function r = ice_read(is)
            r = classdef_.global_();
            r.case_ = classdef_.persistent_.ice_read(is);
            r.continue_ = is.readInt();
            r.eq_ = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = classdef_.global_();
            end
            classdef_.persistent_.ice_write(os, v.case_);
            os.writeInt(v.continue_);
            os.writeInt(v.eq_);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = classdef_.global_.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                classdef_.global_.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
