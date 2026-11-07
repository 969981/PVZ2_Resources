.class public final Lcom/talkweb/network/internal/NativeRequest;
.super Ljava/lang/Object;
.source "NativeRequest.java"


# instance fields
.field public final body:Ljava/lang/String;

.field public final contentType:Ljava/lang/String;

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final method:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/talkweb/network/internal/NativeRequest;->method:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/talkweb/network/internal/NativeRequest;->url:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/talkweb/network/internal/NativeRequest;->headers:Ljava/util/Map;

    .line 32
    iput-object p4, p0, Lcom/talkweb/network/internal/NativeRequest;->body:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/talkweb/network/internal/NativeRequest;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasBody()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/talkweb/network/internal/NativeRequest;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
