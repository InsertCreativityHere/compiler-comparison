
% Copyright (c) ZeroC, Inc.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef global_
    properties
        case_ classdef_.persistent_
        continue_ int32
        eq_ int32
    end
    methods
        function obj = global_(case_, continue_, eq_)
            if nargin == 0
                obj.case_ = classdef_.persistent_.catch_;
                obj.continue_ = 1;
                obj.eq_ = 2;
            elseif ne(case_, IceInternal.NoInit.Instance)
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
    methods(Static)
        function r = ice_read(is)
            r = classdef_.global_(IceInternal.NoInit.Instance);
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
