.class public Lgbsdk/common/host/abij;
.super Losdk/okhttp3/EventListener;
.source "OkHttp3EventListener.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mp:Lgbsdk/common/host/abjf;

.field private final mq:Losdk/okhttp3/EventListener;


# direct methods
.method public constructor <init>(Losdk/okhttp3/EventListener;Lgbsdk/common/host/abjf;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Losdk/okhttp3/EventListener;-><init>()V

    .line 38
    const-class v0, Lgbsdk/common/host/abij;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abij;->TAG:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    .line 43
    iput-object p2, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    return-void
.end method

.method private a(Ljava/io/IOException;)I
    .locals 2

    .line 296
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/16 v1, -0x94

    goto/16 :goto_0

    .line 298
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLKeyException;

    if-eqz v0, :cond_1

    const/16 v1, -0x95

    goto/16 :goto_0

    .line 300
    :cond_1
    instance-of v0, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_2

    const/16 v1, -0x6b

    goto :goto_0

    .line 302
    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_3

    const/16 v1, -0x99

    goto :goto_0

    .line 304
    :cond_3
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_4

    const/16 v1, -0x69

    goto :goto_0

    .line 306
    :cond_4
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_5

    const/16 v1, -0x68

    goto :goto_0

    .line 308
    :cond_5
    instance-of v0, p1, Ljava/net/PortUnreachableException;

    if-eqz v0, :cond_6

    const/16 v1, -0x6c

    goto :goto_0

    .line 310
    :cond_6
    instance-of v0, p1, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_7

    const/16 v1, -0x6d

    goto :goto_0

    .line 312
    :cond_7
    instance-of v0, p1, Ljava/net/BindException;

    if-eqz v0, :cond_8

    const/16 v1, -0x93

    goto :goto_0

    .line 314
    :cond_8
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_9

    const/16 v1, -0x12c

    goto :goto_0

    .line 316
    :cond_9
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_a

    const/16 v1, -0x76

    goto :goto_0

    .line 318
    :cond_a
    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_b

    goto :goto_0

    .line 321
    :cond_b
    instance-of v0, p1, Ljava/net/HttpRetryException;

    if-eqz v0, :cond_c

    goto :goto_0

    .line 324
    :cond_c
    instance-of v0, p1, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_d

    goto :goto_0

    .line 327
    :cond_d
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.io.IOException: Exception in connect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 v1, -0xf

    :cond_e
    :goto_0
    return v1
.end method


# virtual methods
.method public callEnd(Losdk/okhttp3/Call;)V
    .locals 2

    .line 269
    invoke-super {p0, p1}, Losdk/okhttp3/EventListener;->callEnd(Losdk/okhttp3/Call;)V

    .line 270
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p1}, Losdk/okhttp3/EventListener;->callEnd(Losdk/okhttp3/Call;)V

    .line 273
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mH:J

    .line 274
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object v0, Lgbsdk/common/host/abio;->lS:Lgbsdk/common/host/abio;

    iput-object v0, p1, Lgbsdk/common/host/abjf;->nd:Lgbsdk/common/host/abio;

    .line 275
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object v0, Lgbsdk/common/host/abja;->ok:Lgbsdk/common/host/abja;

    iput-object v0, p1, Lgbsdk/common/host/abjf;->nf:Lgbsdk/common/host/abja;

    return-void
.end method

.method public callFailed(Losdk/okhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 280
    invoke-super {p0, p1, p2}, Losdk/okhttp3/EventListener;->callFailed(Losdk/okhttp3/Call;Ljava/io/IOException;)V

    .line 281
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1, p2}, Losdk/okhttp3/EventListener;->callFailed(Losdk/okhttp3/Call;Ljava/io/IOException;)V

    .line 284
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mH:J

    .line 285
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object v0, Lgbsdk/common/host/abio;->lS:Lgbsdk/common/host/abio;

    iput-object v0, p1, Lgbsdk/common/host/abjf;->nd:Lgbsdk/common/host/abio;

    .line 286
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Canceled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 287
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object v0, Lgbsdk/common/host/abja;->om:Lgbsdk/common/host/abja;

    iput-object v0, p1, Lgbsdk/common/host/abjf;->nf:Lgbsdk/common/host/abja;

    goto :goto_0

    .line 289
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object v0, Lgbsdk/common/host/abja;->on:Lgbsdk/common/host/abja;

    iput-object v0, p1, Lgbsdk/common/host/abjf;->nf:Lgbsdk/common/host/abja;

    .line 291
    :goto_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-direct {p0, p2}, Lgbsdk/common/host/abij;->a(Ljava/io/IOException;)I

    move-result p2

    iput p2, p1, Lgbsdk/common/host/abjf;->iZ:I

    return-void
.end method

.method public callStart(Losdk/okhttp3/Call;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Losdk/okhttp3/EventListener;->callStart(Losdk/okhttp3/Call;)V

    .line 49
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Losdk/okhttp3/EventListener;->callStart(Losdk/okhttp3/Call;)V

    .line 52
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mr:J

    .line 53
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object v0, Lgbsdk/common/host/abja;->ol:Lgbsdk/common/host/abja;

    iput-object v0, p1, Lgbsdk/common/host/abjf;->nf:Lgbsdk/common/host/abja;

    return-void
.end method

.method public connectEnd(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Losdk/okhttp3/Protocol;)V
    .locals 2

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Losdk/okhttp3/EventListener;->connectEnd(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Losdk/okhttp3/Protocol;)V

    .line 107
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1, p2, p3, p4}, Losdk/okhttp3/EventListener;->connectEnd(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Losdk/okhttp3/Protocol;)V

    .line 110
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mv:J

    if-eqz p3, :cond_1

    .line 112
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-virtual {p3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    iput-object p2, p1, Lgbsdk/common/host/abjf;->mL:Ljava/net/Proxy$Type;

    :cond_1
    return-void
.end method

.method public connectFailed(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Losdk/okhttp3/Protocol;Ljava/io/IOException;)V
    .locals 6

    .line 119
    invoke-super/range {p0 .. p5}, Losdk/okhttp3/EventListener;->connectFailed(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Losdk/okhttp3/Protocol;Ljava/io/IOException;)V

    .line 120
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 121
    invoke-virtual/range {v0 .. v5}, Losdk/okhttp3/EventListener;->connectFailed(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Losdk/okhttp3/Protocol;Ljava/io/IOException;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 124
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    iget-object p1, p1, Lgbsdk/common/host/abjf;->mK:Ljava/util/List;

    new-instance p3, Landroid/util/Pair;

    .line 125
    invoke-direct {p0, p5}, Lgbsdk/common/host/abij;->a(Ljava/io/IOException;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public connectStart(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2, p3}, Losdk/okhttp3/EventListener;->connectStart(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 78
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1, p2, p3}, Losdk/okhttp3/EventListener;->connectStart(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 81
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Lgbsdk/common/host/abjf;->mu:J

    .line 82
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object p2, Lgbsdk/common/host/abio;->md:Lgbsdk/common/host/abio;

    iput-object p2, p1, Lgbsdk/common/host/abjf;->nd:Lgbsdk/common/host/abio;

    return-void
.end method

.method public connectionAcquired(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V
    .locals 2

    .line 131
    invoke-super {p0, p1, p2}, Losdk/okhttp3/EventListener;->connectionAcquired(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    .line 132
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1, p2}, Losdk/okhttp3/EventListener;->connectionAcquired(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 136
    invoke-interface {p2}, Losdk/okhttp3/Connection;->socket()Ljava/net/Socket;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Losdk/okhttp3/Connection;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 137
    invoke-interface {p2}, Losdk/okhttp3/Connection;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-interface {p2}, Losdk/okhttp3/Connection;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/abjf;->mW:Ljava/lang/String;

    .line 140
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-interface {p2}, Losdk/okhttp3/Connection;->socket()Ljava/net/Socket;

    move-result-object p2

    iput-object p2, p1, Lgbsdk/common/host/abjf;->mZ:Ljava/net/Socket;

    .line 142
    :cond_2
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mI:J

    return-void
.end method

.method public connectionReleased(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V
    .locals 1

    .line 147
    invoke-super {p0, p1, p2}, Losdk/okhttp3/EventListener;->connectionReleased(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    .line 148
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1, p2}, Losdk/okhttp3/EventListener;->connectionReleased(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V

    :cond_0
    return-void
.end method

.method public dnsEnd(Losdk/okhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Losdk/okhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1, p2, p3}, Losdk/okhttp3/EventListener;->dnsEnd(Losdk/okhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1, p2, p3}, Losdk/okhttp3/EventListener;->dnsEnd(Losdk/okhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    .line 72
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Lgbsdk/common/host/abjf;->mt:J

    return-void
.end method

.method public dnsStart(Losdk/okhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-super {p0, p1, p2}, Losdk/okhttp3/EventListener;->dnsStart(Losdk/okhttp3/Call;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1, p2}, Losdk/okhttp3/EventListener;->dnsStart(Losdk/okhttp3/Call;Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->ms:J

    .line 63
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object p2, Lgbsdk/common/host/abio;->mc:Lgbsdk/common/host/abio;

    iput-object p2, p1, Lgbsdk/common/host/abjf;->nd:Lgbsdk/common/host/abio;

    return-void
.end method

.method public requestBodyEnd(Losdk/okhttp3/Call;J)V
    .locals 2

    .line 187
    invoke-super {p0, p1, p2, p3}, Losdk/okhttp3/EventListener;->requestBodyEnd(Losdk/okhttp3/Call;J)V

    .line 188
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1, p2, p3}, Losdk/okhttp3/EventListener;->requestBodyEnd(Losdk/okhttp3/Call;J)V

    .line 191
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mC:J

    .line 192
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    iput-wide p2, p1, Lgbsdk/common/host/abjf;->mP:J

    return-void
.end method

.method public requestBodyStart(Losdk/okhttp3/Call;)V
    .locals 2

    .line 178
    invoke-super {p0, p1}, Losdk/okhttp3/EventListener;->requestBodyStart(Losdk/okhttp3/Call;)V

    .line 179
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Losdk/okhttp3/EventListener;->requestBodyStart(Losdk/okhttp3/Call;)V

    .line 182
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mB:J

    return-void
.end method

.method public requestHeadersEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Request;)V
    .locals 2

    .line 165
    invoke-super {p0, p1, p2}, Losdk/okhttp3/EventListener;->requestHeadersEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Request;)V

    .line 166
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p1, p2}, Losdk/okhttp3/EventListener;->requestHeadersEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Request;)V

    .line 169
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mz:J

    if-eqz p2, :cond_1

    .line 171
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-virtual {p2}, Losdk/okhttp3/Request;->headers()Losdk/okhttp3/Headers;

    move-result-object p2

    iput-object p2, p1, Lgbsdk/common/host/abjf;->mQ:Losdk/okhttp3/Headers;

    .line 173
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object p2, Lgbsdk/common/host/abio;->mg:Lgbsdk/common/host/abio;

    iput-object p2, p1, Lgbsdk/common/host/abjf;->nd:Lgbsdk/common/host/abio;

    return-void
.end method

.method public requestHeadersStart(Losdk/okhttp3/Call;)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Losdk/okhttp3/EventListener;->requestHeadersStart(Losdk/okhttp3/Call;)V

    .line 156
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Losdk/okhttp3/EventListener;->requestHeadersStart(Losdk/okhttp3/Call;)V

    .line 159
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object v0, Lgbsdk/common/host/abio;->mf:Lgbsdk/common/host/abio;

    iput-object v0, p1, Lgbsdk/common/host/abjf;->nd:Lgbsdk/common/host/abio;

    .line 160
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->my:J

    return-void
.end method

.method public responseBodyEnd(Losdk/okhttp3/Call;J)V
    .locals 2

    .line 259
    invoke-super {p0, p1, p2, p3}, Losdk/okhttp3/EventListener;->responseBodyEnd(Losdk/okhttp3/Call;J)V

    .line 260
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p1, p2, p3}, Losdk/okhttp3/EventListener;->responseBodyEnd(Losdk/okhttp3/Call;J)V

    .line 263
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mG:J

    .line 264
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    iput-wide p2, p1, Lgbsdk/common/host/abjf;->mS:J

    return-void
.end method

.method public responseBodyStart(Losdk/okhttp3/Call;)V
    .locals 2

    .line 249
    invoke-super {p0, p1}, Losdk/okhttp3/EventListener;->responseBodyStart(Losdk/okhttp3/Call;)V

    .line 250
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1}, Losdk/okhttp3/EventListener;->responseBodyStart(Losdk/okhttp3/Call;)V

    .line 253
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object v0, Lgbsdk/common/host/abio;->mh:Lgbsdk/common/host/abio;

    iput-object v0, p1, Lgbsdk/common/host/abjf;->nd:Lgbsdk/common/host/abio;

    .line 254
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mF:J

    return-void
.end method

.method public responseHeadersEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Response;)V
    .locals 4

    .line 206
    invoke-super {p0, p1, p2}, Losdk/okhttp3/EventListener;->responseHeadersEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Response;)V

    .line 207
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1, p2}, Losdk/okhttp3/EventListener;->responseHeadersEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Response;)V

    .line 210
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mE:J

    .line 211
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    iget-wide v0, p1, Lgbsdk/common/host/abjf;->mx:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object v0, Lgbsdk/common/host/abil;->lQ:Lgbsdk/common/host/abil;

    iput-object v0, p1, Lgbsdk/common/host/abjf;->mM:Lgbsdk/common/host/abil;

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object v0, Lgbsdk/common/host/abil;->lP:Lgbsdk/common/host/abil;

    iput-object v0, p1, Lgbsdk/common/host/abjf;->mM:Lgbsdk/common/host/abil;

    :goto_0
    if-nez p2, :cond_2

    return-void

    .line 219
    :cond_2
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-virtual {p2}, Losdk/okhttp3/Response;->code()I

    move-result v0

    iput v0, p1, Lgbsdk/common/host/abjf;->mR:I

    .line 220
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-virtual {p2}, Losdk/okhttp3/Response;->protocol()Losdk/okhttp3/Protocol;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/abjf;->mT:Losdk/okhttp3/Protocol;

    .line 221
    invoke-virtual {p2}, Losdk/okhttp3/Response;->handshake()Losdk/okhttp3/Handshake;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 222
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-virtual {p2}, Losdk/okhttp3/Response;->handshake()Losdk/okhttp3/Handshake;

    move-result-object v0

    invoke-virtual {v0}, Losdk/okhttp3/Handshake;->tlsVersion()Losdk/okhttp3/TlsVersion;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/abjf;->mN:Losdk/okhttp3/TlsVersion;

    .line 223
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-virtual {p2}, Losdk/okhttp3/Response;->handshake()Losdk/okhttp3/Handshake;

    move-result-object v0

    invoke-virtual {v0}, Losdk/okhttp3/Handshake;->cipherSuite()Losdk/okhttp3/CipherSuite;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/abjf;->mO:Losdk/okhttp3/CipherSuite;

    .line 226
    :cond_3
    invoke-virtual {p2}, Losdk/okhttp3/Response;->isRedirect()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 227
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    iget v0, p1, Lgbsdk/common/host/abjf;->nb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lgbsdk/common/host/abjf;->nb:I

    .line 228
    new-instance p1, Lgbsdk/common/host/abjh;

    invoke-direct {p1}, Lgbsdk/common/host/abjh;-><init>()V

    .line 229
    invoke-virtual {p2}, Losdk/okhttp3/Response;->code()I

    move-result v0

    iput v0, p1, Lgbsdk/common/host/abjh;->np:I

    .line 230
    invoke-virtual {p2}, Losdk/okhttp3/Response;->request()Losdk/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Losdk/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lgbsdk/common/host/abjh;->ne:Ljava/lang/String;

    const-string v0, "location"

    .line 231
    invoke-virtual {p2, v0}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 233
    iput-object v0, p1, Lgbsdk/common/host/abjh;->mUrl:Ljava/lang/String;

    .line 235
    :cond_4
    iget-object v0, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    iget-object v0, v0, Lgbsdk/common/host/abjf;->nc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_5
    invoke-virtual {p2}, Losdk/okhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "content-type"

    .line 239
    invoke-virtual {p2, p1}, Losdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 241
    iget-object v0, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    iput-object p1, v0, Lgbsdk/common/host/abjf;->iS:Ljava/lang/String;

    .line 244
    :cond_6
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-virtual {p2}, Losdk/okhttp3/Response;->headers()Losdk/okhttp3/Headers;

    move-result-object p2

    iput-object p2, p1, Lgbsdk/common/host/abjf;->na:Losdk/okhttp3/Headers;

    return-void
.end method

.method public responseHeadersStart(Losdk/okhttp3/Call;)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Losdk/okhttp3/EventListener;->responseHeadersStart(Losdk/okhttp3/Call;)V

    .line 198
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1}, Losdk/okhttp3/EventListener;->responseHeadersStart(Losdk/okhttp3/Call;)V

    .line 201
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mD:J

    return-void
.end method

.method public secureConnectEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Handshake;)V
    .locals 2

    .line 97
    invoke-super {p0, p1, p2}, Losdk/okhttp3/EventListener;->secureConnectEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Handshake;)V

    .line 98
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1, p2}, Losdk/okhttp3/EventListener;->secureConnectEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Handshake;)V

    .line 101
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mx:J

    return-void
.end method

.method public secureConnectStart(Losdk/okhttp3/Call;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Losdk/okhttp3/EventListener;->secureConnectStart(Losdk/okhttp3/Call;)V

    .line 88
    iget-object v0, p0, Lgbsdk/common/host/abij;->mq:Losdk/okhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Losdk/okhttp3/EventListener;->secureConnectStart(Losdk/okhttp3/Call;)V

    .line 91
    :cond_0
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lgbsdk/common/host/abjf;->mw:J

    .line 92
    iget-object p1, p0, Lgbsdk/common/host/abij;->mp:Lgbsdk/common/host/abjf;

    sget-object v0, Lgbsdk/common/host/abio;->me:Lgbsdk/common/host/abio;

    iput-object v0, p1, Lgbsdk/common/host/abjf;->nd:Lgbsdk/common/host/abio;

    return-void
.end method
