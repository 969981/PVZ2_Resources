.class Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;
.super Ljava/lang/Object;
.source "TwVerifyNoteDialog.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 10

    const-string v0, ","

    const-string v1, "\u5b9e\u540d\u8ba4\u8bc1\u6210\u529f"

    if-eqz p1, :cond_b

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnObject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 195
    :try_start_0
    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v3, v3, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    invoke-virtual {v4, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    invoke-static {v3, p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$402(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    .line 200
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    const/4 v3, 0x1

    if-nez p1, :cond_3

    .line 201
    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 205
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    .line 206
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 208
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fdd\u5b58\u8eab\u4efd\u8bc1\u53f7\u7801\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/talkweb/twOfflineSdk/paycfg/TalkwebPayConfig;->getPayConfig()Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 215
    sget v4, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isTheadRun:I

    if-nez v4, :cond_0

    .line 216
    sput v3, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isTheadRun:I

    .line 217
    new-instance v4, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;

    iget-object v5, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v5, v5, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v5}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object v5

    aget-object v6, p1, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v0, v7}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v4}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->start()V

    :cond_0
    const-string v0, "\u5b8c\u6210\u5b9e\u540d\u8ba4\u8bc1!"

    .line 221
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    aget-object v4, p1, v2

    .line 223
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isYoung(Ljava/lang/String;)Z

    move-result v4

    .line 222
    invoke-interface {v0, v3, v4}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    .line 224
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object v0

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->saveVerifyNumber(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u4fdd\u5b58\u670d\u52a1\u5668\u8fd4\u56de\u7684\u8eab\u4efd\u8bc1\u53f7\u7801\u5230\u672c\u5730"

    .line 225
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5b9e\u540d\u8ba4\u8bc1\uff0c\u672a\u6210\u5e74\uff1f\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isYoung(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 229
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isYoung(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v3, v3, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-virtual {v0, v3}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->getSystemTime(Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    aget-object v4, p1, v2

    .line 236
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isYoung(Ljava/lang/String;)Z

    move-result v4

    .line 235
    invoke-interface {v0, v3, v4}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v3, v3, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v3}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->uploadUsrinfoTGA(Landroid/app/Activity;)V

    const-string v0, "109"

    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v1, v1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object v1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->uploadUsrinfo_NEW_TGA(Landroid/app/Activity;Ljava/lang/String;)V

    .line 243
    :cond_2
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dismissDialog()V

    goto/16 :goto_1

    .line 251
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5b9e\u540d\u8ba4\u8bc1\u5931\u8d25\n,===errcode\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object v0

    iget v0, v0, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n==msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    .line 252
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object v0

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    .line 257
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_b

    const-string p1, "errmsg \u4e0d\u4e3a\u7a7a\uff0c\u6709\u6570\u636e"

    .line 258
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 259
    new-instance v4, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object v5

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v6, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-boolean v7, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$isMust:Z

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v8, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object v9, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-direct/range {v4 .. v9}, Lcom/talkweb/twOfflineSdk/ui/RealNameHintDialog;-><init>(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    .line 261
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    const/16 v0, 0x7d1

    if-ne p1, v0, :cond_4

    .line 262
    sput v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isDialog:I

    .line 264
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u8eab\u4efd\u8bc1\u53f7\u683c\u5f0f\u6821\u9a8c\u5931\u8d25"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 266
    :cond_4
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_5

    .line 267
    sput v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isDialog:I

    .line 269
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u5b9e\u540d\u8ba4\u8bc1\u6761\u76ee\u5df2\u8fbe\u4e0a\u9650"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 270
    :cond_5
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    const/16 v0, 0x7d3

    if-ne p1, v0, :cond_6

    .line 271
    sput v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isDialog:I

    .line 273
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u65e0\u8be5\u7f16\u7801\u63d0\u4ea4\u7684\u5b9e\u540d\u8ba4\u8bc1\u8bb0\u5f55"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 275
    :cond_6
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_7

    .line 276
    sput v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isDialog:I

    .line 278
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u7f16\u7801\u5df2\u7ecf\u88ab\u5360\u7528"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 280
    :cond_7
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    if-ne p1, v3, :cond_8

    .line 282
    sput v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isDialog:I

    .line 283
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u5b9e\u540d\u8ba4\u8bc1\u4e2d"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 284
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dismissDialog()V

    .line 285
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-interface {p1, v2, v2}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    goto :goto_1

    .line 289
    :cond_8
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 291
    sput v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isDialog:I

    .line 293
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u5b9e\u540d\u5931\u8d25\uff0c\u8eab\u4efd\u8bc1\u6216\u59d3\u540d\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\u6b63\u786e\u5f97\u8eab\u4efd\u8bc1\u53f7"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 295
    :cond_9
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    .line 297
    sput v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isDialog:I

    .line 298
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u8ba4\u8bc1\u8d85\u65f6"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 299
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dismissDialog()V

    .line 300
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-interface {p1, v2, v2}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    goto :goto_1

    .line 305
    :cond_a
    sput v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isDialog:I

    .line 306
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u5b9e\u540d\u8ba4\u8bc1\u5931\u8d25,\u8bf7\u91cd\u65b0\u5b9e\u540d\u8ba4\u8bc1"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 317
    :catch_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dismissDialog()V

    .line 318
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$3;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-interface {p1, v2, v2}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    :cond_b
    :goto_1
    return-void
.end method
