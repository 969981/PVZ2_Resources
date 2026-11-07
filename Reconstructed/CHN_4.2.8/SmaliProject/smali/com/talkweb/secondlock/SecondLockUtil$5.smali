.class Lcom/talkweb/secondlock/SecondLockUtil$5;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->setServerPassword(Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SetPasswordResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$cb:Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$5;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$5;->val$password:Ljava/lang/String;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$5;->val$cb:Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$5;->val$cb:Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;

    invoke-interface {v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$SetPasswordResp;)V
    .locals 1

    .line 413
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$5;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$5;->val$password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->setPassword(Ljava/lang/String;)Z

    .line 415
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$5;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$5;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->hasPassword:Z

    .line 417
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$5;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object p1

    iput-boolean v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->spEnabled:Z

    .line 418
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$5;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->lockedRemainSec:I

    :cond_0
    const/4 p1, 0x4

    const-string v0, "set"

    .line 420
    invoke-static {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$300(ILjava/lang/String;)V

    .line 421
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$5;->val$cb:Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;

    invoke-interface {p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;->onSuccess()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 409
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$SetPasswordResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$5;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$SetPasswordResp;)V

    return-void
.end method
