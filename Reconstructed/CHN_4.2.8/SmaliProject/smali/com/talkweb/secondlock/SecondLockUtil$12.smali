.class Lcom/talkweb/secondlock/SecondLockUtil$12;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->showRebindNewDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$holder:[Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;[Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;Landroid/app/Activity;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$12;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$12;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$12;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 914
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$12;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$000(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi;

    move-result-object v0

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$12$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/talkweb/secondlock/SecondLockUtil$12$2;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$12;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2, p3, v1}, Lcom/talkweb/secondlock/core/SecondLockApi;->rebind(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method

.method public onClose()V
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$12;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$12;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$1400(Lcom/talkweb/secondlock/SecondLockUtil;Landroid/app/Activity;)V

    return-void
.end method

.method public onSendCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 896
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$12;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$000(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi;

    move-result-object p1

    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$12$1;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/SecondLockUtil$12$1;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$12;)V

    invoke-interface {p1, p2, v0}, Lcom/talkweb/secondlock/core/SecondLockApi;->sendRebindNewCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method
