.class Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$1;
.super Ljava/lang/Object;
.source "PermisionActivity.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$1;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$1;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    const-string p2, "isPrivacyAgreement"

    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "1"

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$1;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->startPrivacyAgreementDialog()V

    .line 87
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$1;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    const/4 p2, 0x0

    const-string v0, "2"

    invoke-static {p1, v0, p2}, Lcom/talkweb/twutil/TgaPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/network/ApiCallback;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$1;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->startPermiss()V

    :goto_0
    return-void
.end method
