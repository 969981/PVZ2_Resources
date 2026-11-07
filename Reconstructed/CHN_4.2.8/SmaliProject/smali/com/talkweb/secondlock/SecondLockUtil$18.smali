.class Lcom/talkweb/secondlock/SecondLockUtil$18;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$OnSetPasswordActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil;->promptSetPassword(Landroid/app/Activity;ZLcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/SecondLockUtil;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil;Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;Landroid/app/Activity;)V
    .locals 0

    .line 1101
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$18;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$18;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    iput-object p3, p0, Lcom/talkweb/secondlock/SecondLockUtil$18;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V
    .locals 0

    .line 1138
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$18;->val$listener:Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;

    invoke-interface {p1}, Lcom/talkweb/secondlock/SecondLockUtil$OnPhoneFlowListener;->onCancelled()V

    return-void
.end method

.method public onSetPassword(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;Ljava/lang/String;)V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$18;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    new-instance v1, Lcom/talkweb/secondlock/SecondLockUtil$18$1;

    invoke-direct {v1, p0, p1}, Lcom/talkweb/secondlock/SecondLockUtil$18$1;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$18;Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V

    invoke-virtual {v0, p2, v1}, Lcom/talkweb/secondlock/SecondLockUtil;->setServerPassword(Ljava/lang/String;Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V

    return-void
.end method
