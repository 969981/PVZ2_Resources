.class Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog$1;
.super Ljava/lang/Object;
.source "TwServiceNoteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->access$000(Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "agreeButton"

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 107
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->access$102(Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;Z)Z

    .line 108
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->dismissDialog()V

    const/16 p1, 0xfa0

    .line 110
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;->access$200(Lcom/talkweb/twOfflineSdk/ui/TwServiceNoteDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/callback/CallbackManager;->onInitCallBack(ILjava/lang/String;)V

    const-string p1, "doInit success"

    .line 111
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
