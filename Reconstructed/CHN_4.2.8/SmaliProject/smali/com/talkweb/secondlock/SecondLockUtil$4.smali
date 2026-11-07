.class Lcom/talkweb/secondlock/SecondLockUtil$4;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->queryState(Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
        "Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$4;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$4;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$4;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;

    invoke-interface {v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$4;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$502(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    .line 361
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$4;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$600(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V

    .line 362
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$4;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;

    invoke-interface {v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;->onState(Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$4;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;

    const-string v0, "\u72b6\u6001\u6570\u636e\u4e3a\u7a7a"

    invoke-interface {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 356
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$4;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V

    return-void
.end method
