.class final Lcom/talkweb/secondlock/core/NetworkSecondLockApi$2;
.super Ljava/lang/Object;
.source "NetworkSecondLockApi.java"

# interfaces
.implements Lcom/talkweb/network/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->wrap(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)Lcom/talkweb/network/ApiCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/network/ApiCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$2;->val$cb:Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/talkweb/network/model/ApiError;)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u53e3\u5931\u8d25 -> code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/network/model/ApiError;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/talkweb/network/model/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecondLock"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$2;->val$cb:Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;

    invoke-virtual {p1}, Lcom/talkweb/network/model/ApiError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63a5\u53e3\u6210\u529f -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecondLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$2;->val$cb:Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;

    invoke-interface {v0, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
