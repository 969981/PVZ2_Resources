.class final Lcom/tencent/wxop/stat/al;
.super Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;


# instance fields
.field final synthetic dl:Lcom/tencent/wxop/stat/ak;


# direct methods
.method constructor <init>(Lcom/tencent/wxop/stat/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/wxop/stat/al;->dl:Lcom/tencent/wxop/stat/ak;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x7530

    :cond_0
    return-wide p1
.end method
