.class Lcom/talkweb/secondlock/SecondLockUtil$11$2;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$11;->onVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
        "Lcom/talkweb/secondlock/core/SecondLockApi$RebindVerifyResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/secondlock/SecondLockUtil$11;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$11;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$11$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 871
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$11$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$11;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$11;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->onVerifyResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$RebindVerifyResp;)V
    .locals 2

    .line 865
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$11$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$11;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$11;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->onVerifyResult(ZLjava/lang/String;)V

    .line 866
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$11$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$11;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$11;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$11$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$11;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$11;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1300(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 862
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$RebindVerifyResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$11$2;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$RebindVerifyResp;)V

    return-void
.end method
