.class public final Losdk/okhttp3/ResponseBody$1;
.super Losdk/okhttp3/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Losdk/okhttp3/ResponseBody;->create(Losdk/okhttp3/MediaType;JLosdk/okio/BufferedSource;)Losdk/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Losdk/okio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Losdk/okhttp3/MediaType;


# direct methods
.method constructor <init>(Losdk/okhttp3/MediaType;JLosdk/okio/BufferedSource;)V
    .locals 0

    .line 217
    iput-object p1, p0, Losdk/okhttp3/ResponseBody$1;->val$contentType:Losdk/okhttp3/MediaType;

    iput-wide p2, p0, Losdk/okhttp3/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Losdk/okhttp3/ResponseBody$1;->val$content:Losdk/okio/BufferedSource;

    invoke-direct {p0}, Losdk/okhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 223
    iget-wide v0, p0, Losdk/okhttp3/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Losdk/okhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 219
    iget-object v0, p0, Losdk/okhttp3/ResponseBody$1;->val$contentType:Losdk/okhttp3/MediaType;

    return-object v0
.end method

.method public source()Losdk/okio/BufferedSource;
    .locals 1

    .line 227
    iget-object v0, p0, Losdk/okhttp3/ResponseBody$1;->val$content:Losdk/okio/BufferedSource;

    return-object v0
.end method
