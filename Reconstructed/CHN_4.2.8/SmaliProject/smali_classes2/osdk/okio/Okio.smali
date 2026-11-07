.class public final Losdk/okio/Okio;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Losdk/okio/Okio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Losdk/okio/Okio;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendingSink(Ljava/io/File;)Losdk/okio/Sink;
    .locals 2

    if-eqz p0, :cond_0

    .line 187
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Losdk/okio/Okio;->sink(Ljava/io/OutputStream;)Losdk/okio/Sink;

    move-result-object p0

    return-object p0

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blackhole()Losdk/okio/Sink;
    .locals 1

    .line 199
    new-instance v0, Losdk/okio/Okio$3;

    invoke-direct {v0}, Losdk/okio/Okio$3;-><init>()V

    return-object v0
.end method

.method public static buffer(Losdk/okio/Sink;)Losdk/okio/BufferedSink;
    .locals 1

    .line 60
    new-instance v0, Losdk/okio/RealBufferedSink;

    invoke-direct {v0, p0}, Losdk/okio/RealBufferedSink;-><init>(Losdk/okio/Sink;)V

    return-object v0
.end method

.method public static buffer(Losdk/okio/Source;)Losdk/okio/BufferedSource;
    .locals 1

    .line 51
    new-instance v0, Losdk/okio/RealBufferedSource;

    invoke-direct {v0, p0}, Losdk/okio/RealBufferedSource;-><init>(Losdk/okio/Source;)V

    return-object v0
.end method

.method static isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 262
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sink(Ljava/io/File;)Losdk/okio/Sink;
    .locals 1

    if-eqz p0, :cond_0

    .line 181
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Losdk/okio/Okio;->sink(Ljava/io/OutputStream;)Losdk/okio/Sink;

    move-result-object p0

    return-object p0

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sink(Ljava/io/OutputStream;)Losdk/okio/Sink;
    .locals 1

    .line 65
    new-instance v0, Losdk/okio/Timeout;

    invoke-direct {v0}, Losdk/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Losdk/okio/Okio;->sink(Ljava/io/OutputStream;Losdk/okio/Timeout;)Losdk/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method private static sink(Ljava/io/OutputStream;Losdk/okio/Timeout;)Losdk/okio/Sink;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Losdk/okio/Okio$1;

    invoke-direct {v0, p1, p0}, Losdk/okio/Okio$1;-><init>(Losdk/okio/Timeout;Ljava/io/OutputStream;)V

    return-object v0

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sink(Ljava/net/Socket;)Losdk/okio/Sink;
    .locals 1

    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0}, Losdk/okio/Okio;->timeout(Ljava/net/Socket;)Losdk/okio/AsyncTimeout;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Losdk/okio/Okio;->sink(Ljava/io/OutputStream;Losdk/okio/Timeout;)Losdk/okio/Sink;

    move-result-object p0

    .line 120
    invoke-virtual {v0, p0}, Losdk/okio/AsyncTimeout;->sink(Losdk/okio/Sink;)Losdk/okio/Sink;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs sink(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Losdk/okio/Sink;
    .locals 0

    if-eqz p0, :cond_0

    .line 194
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0}, Losdk/okio/Okio;->sink(Ljava/io/OutputStream;)Losdk/okio/Sink;

    move-result-object p0

    return-object p0

    .line 193
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/io/File;)Losdk/okio/Source;
    .locals 1

    if-eqz p0, :cond_0

    .line 168
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Losdk/okio/Okio;->source(Ljava/io/InputStream;)Losdk/okio/Source;

    move-result-object p0

    return-object p0

    .line 167
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/io/InputStream;)Losdk/okio/Source;
    .locals 1

    .line 125
    new-instance v0, Losdk/okio/Timeout;

    invoke-direct {v0}, Losdk/okio/Timeout;-><init>()V

    invoke-static {p0, v0}, Losdk/okio/Okio;->source(Ljava/io/InputStream;Losdk/okio/Timeout;)Losdk/okio/Source;

    move-result-object p0

    return-object p0
.end method

.method private static source(Ljava/io/InputStream;Losdk/okio/Timeout;)Losdk/okio/Source;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Losdk/okio/Okio$2;

    invoke-direct {v0, p1, p0}, Losdk/okio/Okio$2;-><init>(Losdk/okio/Timeout;Ljava/io/InputStream;)V

    return-object v0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static source(Ljava/net/Socket;)Losdk/okio/Source;
    .locals 1

    if-eqz p0, :cond_1

    .line 223
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p0}, Losdk/okio/Okio;->timeout(Ljava/net/Socket;)Losdk/okio/AsyncTimeout;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Losdk/okio/Okio;->source(Ljava/io/InputStream;Losdk/okio/Timeout;)Losdk/okio/Source;

    move-result-object p0

    .line 226
    invoke-virtual {v0, p0}, Losdk/okio/AsyncTimeout;->source(Losdk/okio/Source;)Losdk/okio/Source;

    move-result-object p0

    return-object p0

    .line 223
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 222
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs source(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Losdk/okio/Source;
    .locals 0

    if-eqz p0, :cond_0

    .line 175
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Losdk/okio/Okio;->source(Ljava/io/InputStream;)Losdk/okio/Source;

    move-result-object p0

    return-object p0

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static timeout(Ljava/net/Socket;)Losdk/okio/AsyncTimeout;
    .locals 1

    .line 230
    new-instance v0, Losdk/okio/Okio$4;

    invoke-direct {v0, p0}, Losdk/okio/Okio$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
