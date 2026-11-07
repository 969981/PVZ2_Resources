.class final Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;
.super Ljava/lang/Object;
.source "NativeHttpEngine.java"

# interfaces
.implements Lcom/talkweb/network/internal/NativeInterceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkweb/network/factory/NativeHttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RealChain"
.end annotation


# instance fields
.field private final call:Lcom/talkweb/network/internal/NativeCall;

.field private final index:I

.field private final originalRequest:Lcom/talkweb/network/internal/NativeRequest;

.field final synthetic this$0:Lcom/talkweb/network/factory/NativeHttpEngine;


# direct methods
.method constructor <init>(Lcom/talkweb/network/factory/NativeHttpEngine;ILcom/talkweb/network/internal/NativeRequest;Lcom/talkweb/network/internal/NativeCall;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->this$0:Lcom/talkweb/network/factory/NativeHttpEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p2, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->index:I

    .line 61
    iput-object p3, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->originalRequest:Lcom/talkweb/network/internal/NativeRequest;

    .line 62
    iput-object p4, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->call:Lcom/talkweb/network/internal/NativeCall;

    return-void
.end method


# virtual methods
.method public proceed(Lcom/talkweb/network/internal/NativeRequest;)Lcom/talkweb/network/internal/NativeResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget v0, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->index:I

    iget-object v1, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->this$0:Lcom/talkweb/network/factory/NativeHttpEngine;

    invoke-static {v1}, Lcom/talkweb/network/factory/NativeHttpEngine;->access$000(Lcom/talkweb/network/factory/NativeHttpEngine;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->this$0:Lcom/talkweb/network/factory/NativeHttpEngine;

    invoke-static {v0}, Lcom/talkweb/network/factory/NativeHttpEngine;->access$000(Lcom/talkweb/network/factory/NativeHttpEngine;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/talkweb/network/internal/NativeInterceptor;

    .line 76
    new-instance v1, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;

    iget-object v2, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->this$0:Lcom/talkweb/network/factory/NativeHttpEngine;

    iget v3, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->index:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->call:Lcom/talkweb/network/internal/NativeCall;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;-><init>(Lcom/talkweb/network/factory/NativeHttpEngine;ILcom/talkweb/network/internal/NativeRequest;Lcom/talkweb/network/internal/NativeCall;)V

    invoke-interface {v0, v1}, Lcom/talkweb/network/internal/NativeInterceptor;->intercept(Lcom/talkweb/network/internal/NativeInterceptor$Chain;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->this$0:Lcom/talkweb/network/factory/NativeHttpEngine;

    iget-object v1, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->call:Lcom/talkweb/network/internal/NativeCall;

    invoke-static {v0, p1, v1}, Lcom/talkweb/network/factory/NativeHttpEngine;->access$100(Lcom/talkweb/network/factory/NativeHttpEngine;Lcom/talkweb/network/internal/NativeRequest;Lcom/talkweb/network/internal/NativeCall;)Lcom/talkweb/network/internal/NativeResponse;

    move-result-object p1

    return-object p1
.end method

.method public request()Lcom/talkweb/network/internal/NativeRequest;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/talkweb/network/factory/NativeHttpEngine$RealChain;->originalRequest:Lcom/talkweb/network/internal/NativeRequest;

    return-object v0
.end method
