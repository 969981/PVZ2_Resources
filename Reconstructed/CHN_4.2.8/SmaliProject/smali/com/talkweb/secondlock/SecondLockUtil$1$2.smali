.class Lcom/talkweb/secondlock/SecondLockUtil$1$2;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$1;->onVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
        "Lcom/talkweb/secondlock/core/SecondLockApi$ResetVerifyResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/secondlock/SecondLockUtil$1;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$1;Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$1$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$1;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$1$2;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$1$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$1;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$1;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->onVerifyResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$ResetVerifyResp;)V
    .locals 3

    .line 240
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$1$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$1;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$1;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->onVerifyResult(ZLjava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$1$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$1;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$1;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$1$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$1;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$1$2;->val$code:Ljava/lang/String;

    iget-object v2, p0, Lcom/talkweb/secondlock/SecondLockUtil$1$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$1;

    iget-object v2, v2, Lcom/talkweb/secondlock/SecondLockUtil$1;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-static {p1, v0, v1, v2}, Lcom/talkweb/secondlock/SecondLockUtil;->access$100(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$ResetVerifyResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$1$2;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$ResetVerifyResp;)V

    return-void
.end method
