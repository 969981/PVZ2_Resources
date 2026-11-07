.class Lcom/talkweb/secondlock/SecondLockUtil$10;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/ui/TwgLockManageDialog$OnManageActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->showManageDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$state:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;Landroid/app/Activity;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$state:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangePhone(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V
    .locals 1

    .line 796
    invoke-virtual {p1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dismiss()V

    .line 797
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1200(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V

    return-void
.end method

.method public onClose(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V
    .locals 0

    return-void
.end method

.method public onForgotPassword(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V
    .locals 2

    .line 788
    invoke-virtual {p1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dismiss()V

    .line 789
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1100(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->startRecovery(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    return-void
.end method

.method public onSetPassword(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V
    .locals 3

    .line 776
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$state:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    iget-boolean v0, v0, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->hasPassword:Z

    if-eqz v0, :cond_0

    .line 777
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "\u60a8\u5df2\u7ecf\u8bbe\u7f6e\u8fc7\u4e8c\u7ea7\u5bc6\u7801"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 781
    :cond_0
    invoke-virtual {p1}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->dismiss()V

    .line 782
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$state:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    invoke-static {p1, v0, v1, v2}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1000(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;ZLcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V

    return-void
.end method

.method public onToggle(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 743
    iget-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$10$1;

    invoke-direct {v1, p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$10$1;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$10;Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    invoke-virtual {p2, v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->toggleServerPassword(ZLcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V

    goto :goto_1

    .line 757
    :cond_0
    iget-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$state:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    iget p2, p2, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->lockedRemainSec:I

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$state:Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    iget p2, p2, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->lockedRemainSec:I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    .line 759
    invoke-static {p2}, Lcom/talkweb/secondlock/SecondLockUtil;->access$800(Lcom/talkweb/secondlock/SecondLockUtil;)I

    move-result p2

    :goto_0
    if-lez p2, :cond_2

    .line 761
    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$activity:Landroid/app/Activity;

    .line 762
    invoke-static {v1, p2}, Lcom/talkweb/secondlock/ui/TwgLockUiUtils;->formatVerifyLockMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 761
    invoke-static {v1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 763
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 764
    invoke-virtual {p1, v0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->setProtectEnabled(Z)V

    return-void

    .line 768
    :cond_2
    iget-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$10;->val$activity:Landroid/app/Activity;

    invoke-static {p2, v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$900(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V

    :goto_1
    return-void
.end method
