.class Lcom/talkweb/secondlock/SecondLockUtil$18$1$1;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$18$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/talkweb/secondlock/SecondLockUtil$18$1;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$18$1;)V
    .locals 0

    .line 1110
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1$1;->this$2:Lcom/talkweb/secondlock/SecondLockUtil$18$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 1121
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1$1;->this$2:Lcom/talkweb/secondlock/SecondLockUtil$18$1;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$18;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$18;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u62a4\u5f00\u542f\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1122
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1124
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1$1;->this$2:Lcom/talkweb/secondlock/SecondLockUtil$18$1;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$18;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$18;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1$1;->this$2:Lcom/talkweb/secondlock/SecondLockUtil$18$1;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$18;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$18;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-virtual {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->getMaskedPhone()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1113
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1$1;->this$2:Lcom/talkweb/secondlock/SecondLockUtil$18$1;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$18;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$18;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1$1;->this$2:Lcom/talkweb/secondlock/SecondLockUtil$18$1;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$18;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$18;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->spEnabled:Z

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1$1;->this$2:Lcom/talkweb/secondlock/SecondLockUtil$18$1;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$18;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$18;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1$1;->this$2:Lcom/talkweb/secondlock/SecondLockUtil$18$1;

    iget-object v1, v1, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$18;

    iget-object v1, v1, Lcom/talkweb/secondlock/SecondLockUtil$18;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-virtual {v1}, Lcom/talkweb/secondlock/SecondLockUtil;->getMaskedPhone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
