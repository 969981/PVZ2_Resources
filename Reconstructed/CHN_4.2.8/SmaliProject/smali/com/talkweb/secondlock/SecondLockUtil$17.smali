.class Lcom/talkweb/secondlock/SecondLockUtil$17;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$OnVerifyPhoneActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->showSetPasswordVerifyDialog(Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$backToManage:Z

.field final synthetic val$holder:[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

.field final synthetic val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$17;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$17;->val$holder:[Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$17;->val$activity:Landroid/app/Activity;

    iput-boolean p4, p0, Lcom/talkweb/secondlock/SecondLockUtil$17;->val$backToManage:Z

    iput-object p5, p0, Lcom/talkweb/secondlock/SecondLockUtil$17;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$17;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-interface {v0}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onCancelled()V

    return-void
.end method

.method public onSendCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1057
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$17;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$000(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi;

    move-result-object p1

    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$17$1;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/SecondLockUtil$17$1;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$17;)V

    invoke-interface {p1, p2, v0}, Lcom/talkweb/secondlock/core/SecondLockApi;->sendBindSmsCode(Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method

.method public onVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1073
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$17;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {p1}, Lcom/talkweb/secondlock/SecondLockUtil;->access$000(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi;

    move-result-object p1

    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$17$2;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/SecondLockUtil$17$2;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$17;)V

    invoke-interface {p1, p2, p3, v0}, Lcom/talkweb/secondlock/core/SecondLockApi;->bindPhone(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method
