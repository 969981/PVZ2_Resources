.class Lcom/talkweb/secondlock/SecondLockUtil$8;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->toggleServerPassword(ZLcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
        "Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$cb:Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;

.field final synthetic val$targetEnabled:Z


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;ZLcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$8;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-boolean p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$8;->val$targetEnabled:Z

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$8;->val$cb:Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$8;->val$cb:Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;

    invoke-interface {v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 504
    iget-boolean p1, p1, Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;->spEnabled:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 505
    :goto_0
    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$8;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$400(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockPrefs;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$8;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$400(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockPrefs;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setEnabled(Z)V

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$8;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 510
    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$8;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$200(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    move-result-object v1

    iput-boolean p1, v1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;->spEnabled:Z

    .line 512
    :cond_2
    iget-boolean p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$8;->val$targetEnabled:Z

    if-eqz p1, :cond_3

    const-string p1, "on"

    goto :goto_1

    :cond_3
    const-string p1, "off"

    :goto_1
    invoke-static {v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$300(ILjava/lang/String;)V

    .line 513
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$8;->val$cb:Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;

    invoke-interface {p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;->onSuccess()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 501
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$8;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$ToggleResp;)V

    return-void
.end method
