.class Lcom/talkweb/secondlock/SecondLockUtil$16;
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

.field final synthetic val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$16;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$16;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$16;->val$backToManage:Z

    iput-object p4, p0, Lcom/talkweb/secondlock/SecondLockUtil$16;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$16;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-interface {v0}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onCancelled()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$16;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-interface {v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1021
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$16;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$16;->val$activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$16;->val$backToManage:Z

    iget-object v2, p0, Lcom/talkweb/secondlock/SecondLockUtil$16;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-static {p1, v0, v1, v2}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1500(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V

    return-void
.end method
