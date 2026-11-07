.class public interface abstract Losdk/okio/BufferedSink;
.super Ljava/lang/Object;
.source "BufferedSink.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;
.implements Losdk/okio/Sink;


# virtual methods
.method public abstract buffer()Losdk/okio/Buffer;
.end method

.method public abstract emit()Losdk/okio/BufferedSink;
.end method

.method public abstract emitCompleteSegments()Losdk/okio/BufferedSink;
.end method

.method public abstract flush()V
.end method

.method public abstract outputStream()Ljava/io/OutputStream;
.end method

.method public abstract write(Losdk/okio/ByteString;)Losdk/okio/BufferedSink;
.end method

.method public abstract write(Losdk/okio/Source;J)Losdk/okio/BufferedSink;
.end method

.method public abstract write([B)Losdk/okio/BufferedSink;
.end method

.method public abstract write([BII)Losdk/okio/BufferedSink;
.end method

.method public abstract writeAll(Losdk/okio/Source;)J
.end method

.method public abstract writeByte(I)Losdk/okio/BufferedSink;
.end method

.method public abstract writeDecimalLong(J)Losdk/okio/BufferedSink;
.end method

.method public abstract writeHexadecimalUnsignedLong(J)Losdk/okio/BufferedSink;
.end method

.method public abstract writeInt(I)Losdk/okio/BufferedSink;
.end method

.method public abstract writeIntLe(I)Losdk/okio/BufferedSink;
.end method

.method public abstract writeLong(J)Losdk/okio/BufferedSink;
.end method

.method public abstract writeLongLe(J)Losdk/okio/BufferedSink;
.end method

.method public abstract writeShort(I)Losdk/okio/BufferedSink;
.end method

.method public abstract writeShortLe(I)Losdk/okio/BufferedSink;
.end method

.method public abstract writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Losdk/okio/BufferedSink;
.end method

.method public abstract writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Losdk/okio/BufferedSink;
.end method

.method public abstract writeUtf8(Ljava/lang/String;)Losdk/okio/BufferedSink;
.end method

.method public abstract writeUtf8(Ljava/lang/String;II)Losdk/okio/BufferedSink;
.end method

.method public abstract writeUtf8CodePoint(I)Losdk/okio/BufferedSink;
.end method
