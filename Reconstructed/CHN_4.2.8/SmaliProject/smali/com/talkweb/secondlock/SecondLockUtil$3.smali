.class Lcom/talkweb/secondlock/SecondLockUtil$3;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog$OnBindPhoneActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->showBindDialog(Landroid/app/Activity;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$holder:[Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;

.field final synthetic val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;[Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$3;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$3;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockBindPhoneDialog;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$3;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$3;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$000(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi;

    move-result-object v0

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$3$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/talkweb/secondlock/SecondLockUtil$3$2;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p2, p3, v1}, Lcom/talkweb/secondlock/core/SecondLockApi;->bindPhone(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method

.method public onClose()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$3;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-interface {v0}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onCancelled()V

    return-void
.end method

.method public onSendCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 307
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$3;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$000(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi;

    move-result-object p1

    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$3$1;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/SecondLockUtil$3$1;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$3;)V

    invoke-interface {p1, p2, v0}, Lcom/talkweb/secondlock/core/SecondLockApi;->sendBindSmsCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method
