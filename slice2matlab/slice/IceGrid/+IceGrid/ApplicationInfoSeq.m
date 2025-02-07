
% Copyright (c) ZeroC, Inc.
% Generated from Admin.ice by slice2matlab version 3.8.0-alpha.0

classdef ApplicationInfoSeq
    methods(Static)
        function write(os, seq)
            sz = length(seq);
            os.writeSize(sz);
            for i = 1:sz
                IceGrid.ApplicationInfo.ice_write(os, seq(i));
            end
        end
        function r = read(is)
            sz = is.readSize();
            r = IceGrid.ApplicationInfo.empty();
            if sz > 0
                r(1, sz) = IceGrid.ApplicationInfo();
                for i = 1:sz
                    r(i).uuid = is.readString();
                    r(i).createTime = is.readLong();
                    r(i).createUser = is.readString();
                    r(i).updateTime = is.readLong();
                    r(i).updateUser = is.readString();
                    r(i).revision = is.readInt();
                    r(i).descriptor = IceGrid.ApplicationDescriptor.ice_read(is);
                end
            end
        end
        function r = convert(seq)
            r = seq;
            for i = 1:length(seq)
                r(i).descriptor = r(i).descriptor.ice_convert();
            end
        end
    end
end
