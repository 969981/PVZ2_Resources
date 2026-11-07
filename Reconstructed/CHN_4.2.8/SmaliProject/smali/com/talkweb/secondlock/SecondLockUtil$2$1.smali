.class Lcom/talkweb/secondlock/SecondLockUtil$2$1;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$2;->onReset(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
        "Lcom/talkweb/secondlock/core/SecondLockApi$ResetResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/secondlock/SecondLockUtil$2;

.field final synthetic val$dialog:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$2;Ljava/lang/String;Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$2;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->val$password:Ljava/lang/String;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->val$dialog:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->val$dialog:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->onResetResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$ResetResp;)V
    .locals 2

    .line 272
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$2;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$2;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->val$password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->setPassword(Ljava/lang/String;)Z

    .line 274
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$2;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$2;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-virtual {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->unlock()V

    .line 275
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$2;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$2;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$2;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$2;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object p1

    iput-boolean v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->hasPassword:Z

    .line 277
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$2;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$2;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object p1

    iput-boolean v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->spEnabled:Z

    .line 278
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$2;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$2;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object p1

    const/4 v1, 0x0

    iput v1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->lockedRemainSec:I

    :cond_0
    const/4 p1, 0x4

    const-string v1, "modify"

    .line 280
    invoke-static {p1, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$300(ILjava/lang/String;)V

    .line 281
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->val$dialog:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->onResetResult(ZLjava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$2;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$2;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$2;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$2;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-virtual {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->getMaskedPhone()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$ResetResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$2$1;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$ResetResp;)V

    return-void
.end method
