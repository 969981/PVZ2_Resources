.class Lcom/talkweb/secondlock/SecondLockUtil$1$1;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$1;->onSendCode(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/secondlock/SecondLockUtil$1;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$1;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$1$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$1$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$1;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$1;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1, p1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->onSmsSent(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;)V
    .locals 2

    .line 224
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$1$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$1;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$1;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->onSmsSent(ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 221
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$1$1;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$SendCodeResp;)V

    return-void
.end method
