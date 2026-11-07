.class Lcom/talkweb/secondlock/SecondLockUtil$21;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog$OnVerifyPasswordActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->showVerifyToTurnOffDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$manageDialog:Lcom/talkweb/secondlock/ui/TwgLockManageDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V
    .locals 0

    .line 1273
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$21;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$manageDialog:Lcom/talkweb/secondlock/ui/TwgLockManageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V
    .locals 1

    .line 1335
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$manageDialog:Lcom/talkweb/secondlock/ui/TwgLockManageDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->setProtectEnabled(Z)V

    return-void
.end method

.method public onForgot(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V
    .locals 2

    .line 1304
    invoke-virtual {p1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->dismiss()V

    .line 1305
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$21;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$21$2;

    invoke-direct {v1, p0}, Lcom/talkweb/secondlock/SecondLockUtil$21$2;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$21;)V

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->startRecovery(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    return-void
.end method

.method public onLocked(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V
    .locals 2

    .line 1327
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$21;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-virtual {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->lockForVerifyFail()V

    .line 1328
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$manageDialog:Lcom/talkweb/secondlock/ui/TwgLockManageDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->setProtectEnabled(Z)V

    .line 1329
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->getLockedRemainSec()I

    move-result p1

    invoke-static {v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1900(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onVerify(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Ljava/lang/String;)V
    .locals 3

    .line 1277
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$21;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/talkweb/secondlock/SecondLockUtil$21$1;

    invoke-direct {v2, p0}, Lcom/talkweb/secondlock/SecondLockUtil$21$1;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$21;)V

    invoke-static {v0, v1, p2, p1, v2}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1700(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    return-void
.end method
