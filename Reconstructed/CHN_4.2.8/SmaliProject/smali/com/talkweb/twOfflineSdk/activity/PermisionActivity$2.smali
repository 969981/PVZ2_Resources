.class Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;
.super Ljava/lang/Object;
.source "PermisionActivity.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->startPrivacyAgreementDialog()V
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

    .line 115
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAgreement(Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 120
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    const/4 v1, 0x0

    const-string v2, "3"

    invoke-static {v0, v2, v1}, Lcom/talkweb/twutil/TgaPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/network/ApiCallback;)V

    .line 122
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u540c\u610f\u534f\u8bae\uff0c\u5f00\u59cb\u83b7\u53d6\u6743\u9650!cid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1027"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->startPermiss()V

    goto :goto_1

    .line 155
    :cond_1
    :goto_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6388\u6743\u63d0\u793a"

    .line 156
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u4e3a\u4e86\u53ca\u65f6\u5411\u60a8\u540c\u6b65\u6e38\u620f\u8fdb\u5ea6\u3001\u6d3b\u52a8\u5f00\u542f\u7b49\u91cd\u8981\u72b6\u6001\uff0c\u6211\u4eec\u9700\u8981\u60a8\u6388\u6743\u901a\u77e5\u6743\u9650\u3002"

    .line 158
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2$1;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2$1;-><init>(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;)V

    const-string v1, "\u786e\u5b9a"

    .line 160
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 175
    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\u62d2\u7edd\u534f\u8bae\uff0c\u9000\u51fa\u6e38\u620f"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;->this$0:Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->finish()V

    const/4 p1, 0x0

    .line 177
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void
.end method
