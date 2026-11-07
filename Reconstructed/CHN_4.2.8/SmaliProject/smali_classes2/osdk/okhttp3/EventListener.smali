.class public abstract Losdk/okhttp3/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Losdk/okhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Losdk/okhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Losdk/okhttp3/EventListener$1;

    invoke-direct {v0}, Losdk/okhttp3/EventListener$1;-><init>()V

    sput-object v0, Losdk/okhttp3/EventListener;->NONE:Losdk/okhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Losdk/okhttp3/EventListener;)Losdk/okhttp3/EventListener$Factory;
    .locals 1

    .line 63
    new-instance v0, Losdk/okhttp3/EventListener$2;

    invoke-direct {v0, p0}, Losdk/okhttp3/EventListener$2;-><init>(Losdk/okhttp3/EventListener;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Losdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public callFailed(Losdk/okhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public callStart(Losdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public connectEnd(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Losdk/okhttp3/Protocol;)V
    .locals 0
    .param p4    # Losdk/okhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public connectFailed(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Losdk/okhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0
    .param p4    # Losdk/okhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public connectStart(Losdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    return-void
.end method

.method public connectionAcquired(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V
    .locals 0

    return-void
.end method

.method public connectionReleased(Losdk/okhttp3/Call;Losdk/okhttp3/Connection;)V
    .locals 0

    return-void
.end method

.method public dnsEnd(Losdk/okhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public dnsStart(Losdk/okhttp3/Call;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestBodyEnd(Losdk/okhttp3/Call;J)V
    .locals 0

    return-void
.end method

.method public requestBodyStart(Losdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public requestHeadersEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Request;)V
    .locals 0

    return-void
.end method

.method public requestHeadersStart(Losdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public responseBodyEnd(Losdk/okhttp3/Call;J)V
    .locals 0

    return-void
.end method

.method public responseBodyStart(Losdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public responseHeadersEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Response;)V
    .locals 0

    return-void
.end method

.method public responseHeadersStart(Losdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public secureConnectEnd(Losdk/okhttp3/Call;Losdk/okhttp3/Handshake;)V
    .locals 0
    .param p2    # Losdk/okhttp3/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public secureConnectStart(Losdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method
