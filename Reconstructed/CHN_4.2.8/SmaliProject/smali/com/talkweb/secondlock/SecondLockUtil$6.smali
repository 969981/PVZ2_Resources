.class Lcom/talkweb/secondlock/SecondLockUtil$6;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->verifyServerPassword(Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
        "Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$cb:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$6;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$6;->val$cb:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    const-string v1, "fail"

    .line 447
    invoke-static {v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$300(ILjava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$6;->val$cb:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;)V
    .locals 2

    const/4 p1, 0x1

    .line 440
    invoke-static {p1}, Lcom/talkweb/secondlock/core/SessionState;->setVerifiedThisLogin(Z)V

    const/4 v0, 0x6

    const-string v1, "success"

    .line 441
    invoke-static {v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$300(ILjava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$6;->val$cb:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 437
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$6;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;)V

    return-void
.end method
