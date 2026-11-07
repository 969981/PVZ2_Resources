.class Lcom/talkweb/secondlock/SecondLockUtil$7;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->verifyPasswordWithDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
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

.field final synthetic val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

.field final synthetic val$dialog:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$7;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$7;->val$dialog:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$7;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0, p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil$7;->onError(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;)V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "fail"

    .line 483
    invoke-static {v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$300(ILjava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 484
    iget v1, p2, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;->remainAttempts:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 485
    iget v0, p2, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;->lockedRemainSec:I

    .line 486
    :cond_1
    iget-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$7;->val$dialog:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, p1, v1, v0}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->onVerifyResult(ZLjava/lang/String;II)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 467
    check-cast p2, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;

    invoke-virtual {p0, p1, p2}, Lcom/talkweb/secondlock/SecondLockUtil$7;->onError(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;)V
    .locals 3

    const/4 p1, 0x1

    .line 470
    invoke-static {p1}, Lcom/talkweb/secondlock/core/SessionState;->setVerifiedThisLogin(Z)V

    const/4 v0, 0x6

    const-string v1, "success"

    .line 471
    invoke-static {v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$300(ILjava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$7;->val$dialog:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->onVerifyResult(ZLjava/lang/String;II)V

    .line 473
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$7;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    invoke-interface {v0, p1, v1}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 467
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$7;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$VerifyPasswordResp;)V

    return-void
.end method
