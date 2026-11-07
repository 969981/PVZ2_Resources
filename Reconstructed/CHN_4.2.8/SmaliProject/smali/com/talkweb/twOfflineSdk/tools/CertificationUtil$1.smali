.class final Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$1;
.super Ljava/lang/Object;
.source "CertificationUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->showCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;ZLcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$twofflinesdkimpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$1;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$1;->val$twofflinesdkimpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 4

    .line 150
    invoke-static {p1}, Lcom/talkweb/twutil/StringUtils;->isStrValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 151
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$1;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-interface {p1, v1, v1}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    const-string p1, "\u83b7\u53d6\u662f\u5426\u5c55\u793a\u8eab\u4efd\u8bc1\u7a97\u53e3 returnObject is null"

    .line 152
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u662f\u5426\u5c55\u793a\u8eab\u4efd\u8bc1\u7a97\u53e3:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 157
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/talkweb/twOfflineSdk/bean/CertificationBean;

    .line 158
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/CertificationBean;

    .line 161
    iget v0, p1, Lcom/talkweb/twOfflineSdk/bean/CertificationBean;->show:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, "\u5c55\u793a\u8eab\u4efd\u8bc1\u7a97\u53e3\uff1a"

    .line 162
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 163
    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/CertificationBean;->must:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 165
    :goto_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$1;->val$context:Landroid/app/Activity;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->getTwVerifyNoteDialog(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$1;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$1;->val$twofflinesdkimpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1, v2, v0, v3}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->queryAuthentication(ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    goto :goto_1

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$1;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-interface {p1, v1, v1}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c55\u793a\u8eab\u4efd\u8bc1\u7a97\u53e3error\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil$1;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-interface {p1, v1, v1}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    :goto_1
    return-void
.end method
