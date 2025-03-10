// Copyright (c) ZeroC, Inc.
//
// Ice version 3.8.0-alpha.0
//
// <auto-generated>
//
// Generated from file 'Election.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>

package IceStormElection;

/**
 * Helper class for marshaling/unmarshaling TopicContentSeq.
 **/
public final class TopicContentSeqHelper
{
    public static void write(com.zeroc.Ice.OutputStream ostr, TopicContent[] v)
    {
        if(v == null)
        {
            ostr.writeSize(0);
        }
        else
        {
            ostr.writeSize(v.length);
            for(int i0 = 0; i0 < v.length; i0++)
            {
                TopicContent.ice_write(ostr, v[i0]);
            }
        }
    }

    public static TopicContent[] read(com.zeroc.Ice.InputStream istr)
    {
        final TopicContent[] v;
        final int len0 = istr.readAndCheckSeqSize(3);
        v = new TopicContent[len0];
        for(int i0 = 0; i0 < len0; i0++)
        {
            v[i0] = TopicContent.ice_read(istr);
        }
        return v;
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, java.util.Optional<TopicContent[]> v)
    {
        if(v != null && v.isPresent())
        {
            write(ostr, tag, v.get());
        }
    }

    public static void write(com.zeroc.Ice.OutputStream ostr, int tag, TopicContent[] v)
    {
        if(ostr.writeOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            int pos = ostr.startSize();
            TopicContentSeqHelper.write(ostr, v);
            ostr.endSize(pos);
        }
    }

    public static java.util.Optional<TopicContent[]> read(com.zeroc.Ice.InputStream istr, int tag)
    {
        if(istr.readOptional(tag, com.zeroc.Ice.OptionalFormat.FSize))
        {
            istr.skip(4);
            TopicContent[] v;
            v = TopicContentSeqHelper.read(istr);
            return java.util.Optional.of(v);
        }
        else
        {
            return java.util.Optional.empty();
        }
    }
}
