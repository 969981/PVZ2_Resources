.class Lcom/talkweb/secondlock/SecondLockUtil$15;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->startSetPasswordFlow(Landroid/app/Activity;ZLcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$backToManage:Z


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;ZLandroid/app/Activity;)V
    .locals 0

    .line 997
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$15;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-boolean p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$15;->val$backToManage:Z

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$15;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$15;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1000
    iget-boolean p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$15;->val$backToManage:Z

    if-eqz p1, :cond_0

    .line 1001
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$15;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$15;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1400(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
