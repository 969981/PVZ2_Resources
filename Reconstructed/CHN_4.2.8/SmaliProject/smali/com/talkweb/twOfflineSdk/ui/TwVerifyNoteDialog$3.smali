.class Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;
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

.field final synthetic val$isMust:Z

.field final synthetic val$twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Z)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iput-boolean p4, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$isMust:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 166
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->onButtonClick()Z

    move-result p1

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "\u60a8\u7684\u70b9\u51fb\u8fc7\u4e8e\u9891\u7e41\uff0c\u8bf7 5\u79d2\u540e\u91cd\u8bd5\uff01"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$200(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    .line 171
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$300(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->verifyName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u5f00\u59cb\u5b9e\u540d\u8ba4\u8bc1!"

    .line 172
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "userid"

    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 174
    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$300(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$200(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 178
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "username"

    .line 179
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "idCard"

    .line 180
    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "channel"

    .line 181
    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x11

    .line 182
    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;)V

    invoke-static {p1, v4, v0}, Lcom/talkweb/twOfflineSdk/net/HttpAsyncTaskUtil;->doRequest(ILjava/util/HashMap;Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;)V

    goto :goto_0

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$2;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$2;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
