.class Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$1;
.super Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$SimpleTextWatcher;
.source "TwgLockSetPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$1;->this$0:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$SimpleTextWatcher;-><init>(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$1;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog$1;->this$0:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;

    invoke-static {p1}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->access$100(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V

    return-void
.end method
