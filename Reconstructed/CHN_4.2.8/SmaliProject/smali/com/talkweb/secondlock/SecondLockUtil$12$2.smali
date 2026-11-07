.class Lcom/talkweb/secondlock/SecondLockUtil$12$2;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$12;->onBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback<",
        "Lcom/talkweb/secondlock/core/SecondLockApi$RebindResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/secondlock/SecondLockUtil$12;

.field final synthetic val$areaCode:Ljava/lang/String;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$12;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$12;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->val$areaCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$12;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$12;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1, p1}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->onBindResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$RebindResp;)V
    .locals 2

    .line 918
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$12;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$12;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;->onBindResult(ZLjava/lang/String;)V

    .line 919
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$12;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$12;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$400(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockPrefs;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 920
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$12;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$12;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$400(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockPrefs;

    move-result-object p1

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->val$phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setBoundPhone(Ljava/lang/String;)V

    .line 921
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$12;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$12;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$400(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockPrefs;

    move-result-object p1

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->val$areaCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/talkweb/secondlock/core/SecondLockPrefs;->setAreaCode(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x3

    .line 924
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->val$phone:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$300(ILjava/lang/String;)V

    .line 925
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$12;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$12;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$12;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$12;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1400(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 915
    check-cast p1, Lcom/talkweb/secondlock/core/SecondLockApi$RebindResp;

    invoke-virtual {p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$12$2;->onSuccess(Lcom/talkweb/secondlock/core/SecondLockApi$RebindResp;)V

    return-void
.end method
