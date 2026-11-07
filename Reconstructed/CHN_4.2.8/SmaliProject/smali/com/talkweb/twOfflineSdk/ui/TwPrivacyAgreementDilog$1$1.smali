.class Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1$1;
.super Ljava/lang/Object;
.source "TwPrivacyAgreementDilog.java"

# interfaces
.implements Lcom/talkweb/network/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/talkweb/network/ApiCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/talkweb/network/model/ApiError;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "success"

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CrashHandler"

    if-eqz v0, :cond_1

    const-string p1, "\u4e0a\u4f20\u690d\u7269\u5927\u6218\u50f5\u5c38\u7528\u6237\u4fe1\u606f\u5230TGA\u6210\u529f!"

    .line 157
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u4f20\u690d\u7269\u5927\u6218\u50f5\u5c38\u7528\u6237\u4fe1\u606f\u5230TGA\u5931\u8d25! resp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x0

    .line 161
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
