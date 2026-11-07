.class public final Losdk/okhttp3/RequestBody$3;
.super Losdk/okhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Losdk/okhttp3/RequestBody;->create(Losdk/okhttp3/MediaType;Ljava/io/File;)Losdk/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Losdk/okhttp3/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Losdk/okhttp3/MediaType;Ljava/io/File;)V
    .locals 0

    .line 107
    iput-object p1, p0, Losdk/okhttp3/RequestBody$3;->val$contentType:Losdk/okhttp3/MediaType;

    iput-object p2, p0, Losdk/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Losdk/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 113
    iget-object v0, p0, Losdk/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Losdk/okhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 109
    iget-object v0, p0, Losdk/okhttp3/RequestBody$3;->val$contentType:Losdk/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Losdk/okio/BufferedSink;)V
    .locals 2

    const/4 v0, 0x0

    .line 119
    :try_start_0
    iget-object v1, p0, Losdk/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v1}, Losdk/okio/Okio;->source(Ljava/io/File;)Losdk/okio/Source;

    move-result-object v0

    .line 120
    invoke-interface {p1, v0}, Losdk/okio/BufferedSink;->writeAll(Losdk/okio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {v0}, Losdk/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Losdk/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method
