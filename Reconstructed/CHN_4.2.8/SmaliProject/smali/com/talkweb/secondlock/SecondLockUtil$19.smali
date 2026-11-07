.class Lcom/talkweb/secondlock/SecondLockUtil$19;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/SecondLockUtil$OnStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->verifySecondLock(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V
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

    .line 1157
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$19;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$19;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$19;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x6

    const-string v0, "NetWork Error fail"

    .line 1169
    invoke-static {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$300(ILjava/lang/String;)V

    .line 1170
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$19;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$19;->val$activity:Landroid/app/Activity;

    const-string v1, "sl_verify_error_network"

    .line 1171
    invoke-static {v0, v1}, Lcom/talkweb/twutil/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1170
    invoke-interface {p1, v1, v0}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onState(Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)V
    .locals 3

    .line 1161
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$19;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v0, p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$202(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;)Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;

    .line 1162
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$19;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$19;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/talkweb/secondlock/SecondLockUtil$19;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    invoke-static {v0, v1, p1, v2}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1600(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/core/SecondLockApi$StateResp;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    return-void
.end method
