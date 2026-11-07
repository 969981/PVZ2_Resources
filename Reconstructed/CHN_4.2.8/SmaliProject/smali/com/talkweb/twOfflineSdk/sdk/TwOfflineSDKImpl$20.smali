.class Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->startPrivacyAgreementDialog(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$privacyAgreementCallback:Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;)V
    .locals 0

    .line 2020
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;->val$privacyAgreementCallback:Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAgreement(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 2025
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object p1

    .line 2026
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u540c\u610f\u534f\u8bae\uff0c\u5f00\u59cb\u83b7\u53d6\u6743\u9650!cid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2027
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1030"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2030"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2028
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6388\u6743\u63d0\u793a"

    .line 2029
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u4e3a\u4e86\u66f4\u597d\u5730\u4e3a\u60a8\u63d0\u4f9b\u6e38\u620f\u670d\u52a1\uff0c\u6211\u4eec\u9700\u8981\u83b7\u53d6\u4ee5\u4e0b\u6743\u9650\u4ee5\u4fbf\u4e8e\u751f\u6210\u60a8\u7684\u6e38\u620f\u8d26\u53f7\u4ee5\u53ca\u4fdd\u5b58\u60a8\u7684\u6e38\u620f\u8fdb\u5ea6\uff1a\u83b7\u53d6\u624b\u673a\u53f7\u53ca\u901a\u8bdd\u72b6\u6001\u7684\u6743\u9650\u3002"

    .line 2031
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20$1;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20$1;-><init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;)V

    const-string v1, "\u786e\u5b9a"

    .line 2032
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2041
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2042
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 2046
    :cond_1
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;->val$privacyAgreementCallback:Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;->isAgreement(Z)V

    .line 2047
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u62d2\u7edd\u534f\u8bae\uff0c\u9000\u51fa\u6e38\u620f"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2048
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$20;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2049
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_2
    :goto_0
    return-void
.end method
