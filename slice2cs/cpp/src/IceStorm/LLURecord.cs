// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'LLURecord.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

#nullable enable

[assembly:Ice.Slice("LLURecord.ice")]

#pragma warning disable CS1591 // Missing XML Comment
#pragma warning disable CS1573 // Parameter has no matching param tag in the XML comment
#pragma warning disable CS0612 // Type or member is obsolete
#pragma warning disable CS0618 // Type or member is obsolete
#pragma warning disable CS0619 // Type or member is obsolete

namespace IceStormElection
{
    public partial record struct LogUpdate
    {
        public long generation;

        public long iteration;

        partial void ice_initialize();

        public LogUpdate(long generation, long iteration)
        {
            this.generation = generation;
            this.iteration = iteration;
            ice_initialize();
        }

        public LogUpdate(Ice.InputStream istr)
        {
            this.generation = istr.readLong();
            this.iteration = istr.readLong();
            ice_initialize();
        }

        public void ice_writeMembers(Ice.OutputStream ostr)
        {
            ostr.writeLong(this.generation);
            ostr.writeLong(this.iteration);
        }

        public static void ice_write(Ice.OutputStream ostr, LogUpdate v)
        {
            v.ice_writeMembers(ostr);
        }

        public static LogUpdate ice_read(Ice.InputStream istr) => new(istr);
    }
}
