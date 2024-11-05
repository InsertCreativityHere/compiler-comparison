
% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef bitor
    properties
        case_ classdef_.break_.bitand
        continue_ int32
        eq_ int32
        ne_ int32
    end
    methods
        function obj = bitor(case_, continue_, eq_, ne_)
            if nargin == 0
                obj.case_ = classdef_.break_.bitand.catch_;
                obj.continue_ = 1;
                obj.eq_ = 2;
                obj.ne_ = 3;
            elseif ne(case_, IceInternal.NoInit.Instance)
                obj.case_ = case_;
                obj.continue_ = continue_;
                obj.eq_ = eq_;
                obj.ne_ = ne_;
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
            r = classdef_.break_.bitor(IceInternal.NoInit.Instance);
            r.case_ = classdef_.break_.bitand.ice_read(is);
            r.continue_ = is.readInt();
            r.eq_ = is.readInt();
            r.ne_ = is.readInt();
        end
        function ice_write(os, v)
            if isempty(v)
                v = classdef_.break_.bitor();
            end
            classdef_.break_.bitand.ice_write(os, v.case_);
            os.writeInt(v.continue_);
            os.writeInt(v.eq_);
            os.writeInt(v.ne_);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = classdef_.break_.bitor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                classdef_.break_.bitor.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
