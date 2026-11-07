.class Lcom/talkweb/secondlock/SecondLockUtil$20$1;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$20;->onForgot(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/secondlock/SecondLockUtil$20;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$20;)V
    .locals 0

    .line 1230
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$20$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 3

    .line 1240
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$20$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$20;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    const/4 v1, 0x0

    const-string v2, "\u5df2\u53d6\u6d88"

    invoke-interface {v0, v1, v2}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 1245
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$20$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$20;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;->onResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1235
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$20$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$20;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$20;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$20$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$20;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$20$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$20;

    iget-object v1, v1, Lcom/talkweb/secondlock/SecondLockUtil$20;->val$callback:Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;

    invoke-static {p1, v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1800(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;)V

    return-void
.end method
