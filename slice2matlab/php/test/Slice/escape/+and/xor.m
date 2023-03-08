% xor   Summary of xor
%
% xor Properties:
%   abstract
%   clone
%   private
%   protected
%   public
%   this
%   throw
%   use
%   var

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.9

classdef xor
    properties
        abstract int32
        clone int32
        private int32
        protected int32
        public int32
        this int32
        throw int32
        use int32
        var int32
    end
    methods
        function obj = xor(abstract, clone, private, protected, public, this, throw, use, var)
            if nargin == 0
                obj.abstract = 0;
                obj.clone = 0;
                obj.private = 0;
                obj.protected = 0;
                obj.public = 0;
                obj.this = 0;
                obj.throw = 0;
                obj.use = 0;
                obj.var = 0;
            elseif ne(abstract, IceInternal.NoInit.Instance)
                obj.abstract = abstract;
                obj.clone = clone;
                obj.private = private;
                obj.protected = protected;
                obj.public = public;
                obj.this = this;
                obj.throw = throw;
                obj.use = use;
                obj.var = var;
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
            r = and.xor(IceInternal.NoInit.Instance);
            r.abstract = is.readInt();
            r.clone = is.readInt();
            r.private = is.readInt();
            r.protected = is.readInt();
            r.public = is.readInt();
            r.this = is.readInt();
            r.throw = is.readInt();
            r.use = is.readInt();
            r.var = is.readInt();
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.VSize)
                is.skipSize();
                r = and.xor.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_write(os, v)
            if isempty(v)
                v = and.xor();
            end
            os.writeInt(v.abstract);
            os.writeInt(v.clone);
            os.writeInt(v.private);
            os.writeInt(v.protected);
            os.writeInt(v.public);
            os.writeInt(v.this);
            os.writeInt(v.throw);
            os.writeInt(v.use);
            os.writeInt(v.var);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.VSize)
                os.writeSize(36);
                and.xor.ice_write(os, v);
            end
        end
    end
end
