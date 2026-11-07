.class Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$2;
.super Ljava/lang/Object;
.source "TwVerifyNoteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->showVerifyDialog(ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$2;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$2;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "\u7528\u6237\u5173\u95ed\u4e86\u5b9e\u540d\u8ba4\u8bc1\u754c\u9762"

    .line 156
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$2;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    .line 158
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$2;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dismissDialog()V

    return-void
.end method
