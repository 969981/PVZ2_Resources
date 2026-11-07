.class public final Lgbsdk/common/host/abjb$ab$1;
.super Losdk/okhttp3/RequestBody;
.source "SsOkHttp3Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abjb$ab;->a(Lcom/bytedance/retrofit2/mime/TypedOutput;Losdk/okhttp3/RequestBody;)Losdk/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic oe:Losdk/okhttp3/MediaType;

.field final synthetic of:Lcom/bytedance/retrofit2/mime/TypedOutput;


# direct methods
.method constructor <init>(Losdk/okhttp3/MediaType;Lcom/bytedance/retrofit2/mime/TypedOutput;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lgbsdk/common/host/abjb$ab$1;->oe:Losdk/okhttp3/MediaType;

    iput-object p2, p0, Lgbsdk/common/host/abjb$ab$1;->of:Lcom/bytedance/retrofit2/mime/TypedOutput;

    invoke-direct {p0}, Losdk/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 901
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab$1;->of:Lcom/bytedance/retrofit2/mime/TypedOutput;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/mime/TypedOutput;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Losdk/okhttp3/MediaType;
    .locals 1

    .line 891
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab$1;->oe:Losdk/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Losdk/okio/BufferedSink;)V
    .locals 1

    .line 896
    iget-object v0, p0, Lgbsdk/common/host/abjb$ab$1;->of:Lcom/bytedance/retrofit2/mime/TypedOutput;

    invoke-interface {p1}, Losdk/okio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/retrofit2/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
