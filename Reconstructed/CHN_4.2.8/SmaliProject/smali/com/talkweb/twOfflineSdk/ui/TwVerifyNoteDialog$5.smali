.class Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;
.super Ljava/lang/Object;
.source "TwVerifyNoteDialog.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->queryAuthentication(ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
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

    .line 409
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iput-boolean p4, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$isMust:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 7

    const-string v0, ","

    if-eqz p1, :cond_8

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u67e5\u8be2\u5b9e\u540d\u8ba4\u8bc1\u8fd4\u56de\u7ed3\u679c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 420
    :try_start_0
    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    invoke-virtual {v3, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    invoke-static {v2, p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$402(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    .line 421
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\u5b9e\u540d\u8ba4\u8bc1\u67e5\u8be2\u8fd4\u56de\u7ed3\u679c:"

    const/4 v3, 0x1

    if-nez p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object v2

    iget-object v2, v2, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 425
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4fdd\u5b58\u8eab\u4efd\u8bc1\u53f7\u7801\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 430
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 432
    sget v2, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isTheadRun:I

    if-nez v2, :cond_0

    .line 433
    sput v3, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->isTheadRun:I

    .line 434
    new-instance v2, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;

    iget-object v4, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v4}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object v4

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v0, v6}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v2}, Lcom/talkweb/twOfflineSdk/tools/MyRunnable;->start()V

    :cond_0
    const-string v0, "\u5df2\u5b9e\u540d\u8ba4\u8bc1!"

    .line 437
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8eab\u4efd\u8bc1\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isYoung(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v3, v2}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    .line 442
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object v0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->saveVerifyNumber(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u4fdd\u5b58\u670d\u52a1\u5668\u8fd4\u56de\u7684\u8eab\u4efd\u8bc1\u53f7\u7801\u5230\u672c\u5730"

    .line 443
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b9e\u540d\u67e5\u8be2\uff0c\u672a\u6210\u5e74\uff1f\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isYoung(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 445
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isYoung(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-virtual {v0, v2}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->getSystemTime(Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    aget-object v2, p1, v1

    .line 452
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->isYoung(Ljava/lang/String;)Z

    move-result v2

    .line 451
    invoke-interface {v0, v3, v2}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    .line 455
    :goto_0
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "\u5df2\u5b9e\u540d\u8ba4\u8bc1"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 457
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->uploadUsrinfoTGA(Landroid/app/Activity;)V

    .line 458
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object v2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->uploadUsrinfo_NEW_TGA(Landroid/app/Activity;Ljava/lang/String;)V

    .line 460
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->dismissDialog()V

    goto/16 :goto_1

    .line 464
    :cond_2
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object v0

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 466
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u5b9e\u540d\u8ba4\u8bc1\u4e2d"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 467
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-interface {p1, v1, v1}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    goto/16 :goto_1

    .line 469
    :cond_3
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object v0

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$isMust:Z

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1, v0, v2, v3}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->showVerifyDialog(ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    goto/16 :goto_1

    .line 473
    :cond_4
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object v0

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 476
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$isMust:Z

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1, v0, v2, v3}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->showVerifyDialog(ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    goto/16 :goto_1

    .line 477
    :cond_5
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object v0

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 480
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$isMust:Z

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1, v0, v2, v3}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->showVerifyDialog(ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    goto/16 :goto_1

    .line 481
    :cond_6
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errcode:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object p1

    iget-object p1, p1, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object v0

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 483
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$100(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u8ba4\u8bc1\u8d85\u65f6"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 484
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-interface {p1, v1, v1}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    goto :goto_1

    .line 488
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->access$400(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;

    move-result-object v0

    iget-object v0, v0, Lcom/talkweb/twOfflineSdk/bean/AthenticationBean;->errmsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 490
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iget-boolean v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$isMust:Z

    iget-object v2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    iget-object v3, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$twOfflineSDKImpl:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    invoke-virtual {p1, v0, v2, v3}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->showVerifyDialog(ZLcom/talkweb/twOfflineSdk/callback/CertificationCallback;Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b9e\u540d\u8ba4\u8bc1\u5931\u8d25xxx:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 497
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$5;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-interface {p1, v1, v1}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    :cond_8
    :goto_1
    return-void
.end method
