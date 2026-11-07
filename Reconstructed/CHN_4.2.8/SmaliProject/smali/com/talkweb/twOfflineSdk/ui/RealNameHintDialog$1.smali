.class Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog$1;
.super Ljava/lang/Object;
.source "RealNameHintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->showHintDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;

.field final synthetic val$alerDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog$1;->val$alerDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 51
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog$1;->val$alerDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const-string p1, "\u5b9e\u540d\u72b6\u6001\u63d0\u793a\u5173\u95ed\uff0c\u5f00\u59cb\u5f39\u51fa\u5b9e\u540d\u8ba4\u8bc1\u7a97\u53e3"

    .line 52
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->access$300(Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;)Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->access$000(Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;)Z

    move-result v0

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;)Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;->access$200(Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;)Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->showVerifyDialog(ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    return-void
.end method
