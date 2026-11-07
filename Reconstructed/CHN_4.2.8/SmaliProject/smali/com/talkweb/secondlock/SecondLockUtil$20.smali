.class Lcom/talkweb/secondlock/SecondLockUtil$20;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->showVerifyDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V
    .locals 2

    .line 1258
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    const/4 v0, 0x0

    const-string v1, "\u5df2\u53d6\u6d88"

    invoke-interface {p1, v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onForgot(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V
    .locals 2

    .line 1229
    invoke-virtual {p1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dismiss()V

    .line 1230
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$20$1;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/SecondLockUtil$20$1;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$20;)V

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->startRecovery(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    return-void
.end method

.method public onLocked(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V
    .locals 2

    .line 1252
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-virtual {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->lockForVerifyFail()V

    .line 1253
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->getLockedRemainSec()I

    move-result p1

    invoke-static {v1, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1900(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onVerify(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Ljava/lang/String;)V
    .locals 3

    .line 1224
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    invoke-static {v0, v1, p2, p1, v2}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1700(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    return-void
.end method
