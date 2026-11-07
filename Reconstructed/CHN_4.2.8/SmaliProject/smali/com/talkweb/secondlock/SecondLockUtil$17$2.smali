.class Lcom/talkweb/secondlock/SecondLockUtil$17$2;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$17;->onVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
        "Lcom/talkweb/secondlock/core/SecondLockApi$BindResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/secondlock/SecondLockUtil$17;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$17;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$17$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 1083
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$17$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$17;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$17;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->onVerifyResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$BindResp;)V
    .locals 3

    .line 1076
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$17$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$17;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$17;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->onVerifyResult(ZLjava/lang/String;)V

    .line 1077
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$17$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$17;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$17;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$17$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$17;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$17;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$17$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$17;

    iget-boolean v1, v1, Lcom/talkweb/secondlock/SecondLockUtil$17;->val$backToManage:Z

    iget-object v2, p0, Lcom/talkweb/secondlock/SecondLockUtil$17$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$17;

    iget-object v2, v2, Lcom/talkweb/secondlock/SecondLockUtil$17;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-static {p1, v0, v1, v2}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1500(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1073
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$BindResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$17$2;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$BindResp;)V

    return-void
.end method
