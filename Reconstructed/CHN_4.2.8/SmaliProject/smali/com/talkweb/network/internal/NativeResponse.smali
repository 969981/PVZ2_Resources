.class public final Lcom/talkweb/network/internal/NativeResponse;
.super Ljava/lang/Object;
.source "NativeResponse.java"


# instance fields
.field public final body:Ljava/lang/String;

.field public final code:I

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

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/talkweb/network/internal/NativeResponse;->code:I

    .line 23
    iput-object p2, p0, Lcom/talkweb/network/internal/NativeResponse;->message:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/talkweb/network/internal/NativeResponse;->headers:Ljava/util/Map;

    .line 25
    iput-object p4, p0, Lcom/talkweb/network/internal/NativeResponse;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isSuccessful()Z
    .locals 2

    .line 29
    iget v0, p0, Lcom/talkweb/network/internal/NativeResponse;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
