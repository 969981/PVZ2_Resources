.class Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;
.super Ljava/lang/Object;
.source "TwPrivacyAgreementDilog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->access$000(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bt_tongtyi"

    invoke-static {v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "isPrivacyAgreement"

    if-ne v0, v1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->dismissDialog()V

    const-string p1, "\u7528\u6237\u540c\u610f\u534f\u8bae!"

    .line 142
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->access$100()Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;->isAgreement(Z)V

    .line 144
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->access$000(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "1"

    invoke-static {v2, v0, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 145
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->access$200(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const-string p1, "\u7f13\u5b58\u540c\u610f\u534f\u8bae\u72b6\u6001"

    .line 146
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->access$000(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bt_butongtyi"

    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const-string p1, "\u7528\u6237\u4e0d\u540c\u610f\u534f\u8bae\uff0c\u9000\u51fa\u6e38\u620f!"

    .line 148
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->access$000(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "0"

    invoke-static {v2, v0, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string p1, "\u7f13\u5b58\u4e0d\u540c\u610f\u534f\u8bae\u72b6\u6001"

    .line 150
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->access$100()Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;->isAgreement(Z)V

    .line 152
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->access$000(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1$1;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1$1;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog$1;)V

    const-string v1, "4"

    invoke-static {p1, v1, v0}, Lcom/talkweb/twutil/TgaPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/network/ApiCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
