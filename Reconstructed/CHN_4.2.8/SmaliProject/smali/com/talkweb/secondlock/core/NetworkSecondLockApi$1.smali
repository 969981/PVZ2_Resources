.class Lcom/talkweb/secondlock/core/NetworkSecondLockApi$1;
.super Ljava/lang/Object;
.source "NetworkSecondLockApi.java"

# interfaces
.implements Lcom/talkweb/network/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/core/NetworkSecondLockApi;->verifyPassword(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/network/ApiCallback<",
        "Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

.field final synthetic val$cb:Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/core/NetworkSecondLockApi;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$1;->this$0:Lcom/talkweb/secondlock/core/NetworkSecondLockApi;

    iput-object p2, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$1;->val$cb:Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/talkweb/network/model/ApiError;)V
    .locals 2

    .line 78
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

    .line 80
    invoke-virtual {p1}, Lcom/talkweb/network/model/ApiError;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 81
    instance-of v1, v0, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$1;->val$cb:Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;

    invoke-virtual {p1}, Lcom/talkweb/network/model/ApiError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;)V
    .locals 2

    .line 72
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

    .line 73
    iget-object v0, p0, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$1;->val$cb:Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;

    invoke-interface {v0, p1}, Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/core/NetworkSecondLockApi$1;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;)V

    return-void
.end method
