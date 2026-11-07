.class Lcom/talkweb/secondlock/SecondLockUtil$14;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->backToManageDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$14;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$14;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 975
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$14;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$14;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    invoke-direct {p1}, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;-><init>()V

    .line 976
    :goto_0
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$14;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-virtual {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->isPhoneBound()Z

    move-result v0

    iput-boolean v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->phoneBound:Z

    .line 977
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$14;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-virtual {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->isPasswordSet()Z

    move-result v0

    iput-boolean v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->hasPassword:Z

    .line 978
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$14;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-virtual {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->isPasswordEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->spEnabled:Z

    .line 979
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$14;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$14;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$700(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V

    return-void
.end method

.method public onState(Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$14;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$14;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$700(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V

    return-void
.end method
