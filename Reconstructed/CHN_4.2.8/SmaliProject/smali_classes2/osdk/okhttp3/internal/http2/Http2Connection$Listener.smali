.class public abstract Losdk/okhttp3/internal/http2/Http2Connection$Listener;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Losdk/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Losdk/okhttp3/internal/http2/Http2Connection$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 919
    new-instance v0, Losdk/okhttp3/internal/http2/Http2Connection$Listener$1;

    invoke-direct {v0}, Losdk/okhttp3/internal/http2/Http2Connection$Listener$1;-><init>()V

    sput-object v0, Losdk/okhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Losdk/okhttp3/internal/http2/Http2Connection$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettings(Losdk/okhttp3/internal/http2/Http2Connection;)V
    .locals 0

    return-void
.end method

.method public abstract onStream(Losdk/okhttp3/internal/http2/Http2Stream;)V
.end method
