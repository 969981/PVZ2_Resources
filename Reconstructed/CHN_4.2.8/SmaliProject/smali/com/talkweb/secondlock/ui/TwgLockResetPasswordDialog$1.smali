.class Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$1;
.super Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$SimpleTextWatcher;
.source "TwgLockResetPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$1;->this$0:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$SimpleTextWatcher;-><init>(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$1;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog$1;->this$0:Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;

    invoke-static {p1}, Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;->access$100(Lcom/talkweb/secondlock/ui/TwgLockResetPasswordDialog;)V

    return-void
.end method
