.class Lcom/talkweb/secondlock/SecondLockUtil$2;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$OnResetPasswordActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->promptNewPassword(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$2;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$2;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V
    .locals 0

    .line 294
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-interface {p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onCancelled()V

    return-void
.end method

.method public onReset(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;Ljava/lang/String;)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$2;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    invoke-static {v0}, Lcom/talkweb/secondlock/SecondLockUtil;->access$000(Lcom/talkweb/secondlock/SecondLockUtil;)Lcom/talkweb/secondlock/core/SecondLockApi;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/secondlock/SecondLockUtil$2;->val$code:Ljava/lang/String;

    new-instance v2, Lcom/talkweb/secondlock/SecondLockUtil$2$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/talkweb/secondlock/SecondLockUtil$2$1;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$2;Ljava/lang/String;Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V

    invoke-interface {v0, v1, p2, v2}, Lcom/talkweb/secondlock/core/SecondLockApi;->resetPassword(Ljava/lang/String;Ljava/lang/String;Lcom/talkweb/secondlock/core/SecondLockApi$SecondLockCallback;)V

    return-void
.end method
