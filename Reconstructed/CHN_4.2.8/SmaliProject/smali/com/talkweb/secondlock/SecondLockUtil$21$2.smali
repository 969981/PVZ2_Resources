.class Lcom/talkweb/secondlock/SecondLockUtil$21$2;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$21;->onForgot(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/secondlock/SecondLockUtil$21;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$21;)V
    .locals 0

    .line 1305
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$21$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    .line 1314
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$21$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$21;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$manageDialog:Lcom/talkweb/secondlock/ui/TwgLockManageDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->setProtectEnabled(Z)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 1319
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$21$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$21;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1320
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$21$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$21;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$manageDialog:Lcom/talkweb/secondlock/ui/TwgLockManageDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->setProtectEnabled(Z)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1309
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$21$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$21;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$21;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$21$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$21;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$21$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$21;

    iget-object v1, v1, Lcom/talkweb/secondlock/SecondLockUtil$21;->val$manageDialog:Lcom/talkweb/secondlock/ui/TwgLockManageDialog;

    invoke-static {p1, v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$900(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    return-void
.end method
