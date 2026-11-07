.class Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$1;
.super Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$SimpleTextWatcher;
.source "TwgLockVerificationPhoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$1;->this$0:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$SimpleTextWatcher;-><init>(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$1;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog$1;->this$0:Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;

    invoke-static {p1}, Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;->access$100(Lcom/talkweb/secondlock/ui/TwgLockVerificationPhoneDialog;)V

    return-void
.end method
