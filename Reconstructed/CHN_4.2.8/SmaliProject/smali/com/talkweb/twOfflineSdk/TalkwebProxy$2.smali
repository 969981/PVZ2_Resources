.class Lcom/talkweb/twOfflineSdk/TalkwebProxy$2;
.super Ljava/lang/Object;
.source "TalkwebProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TalkwebProxy;->channelPay(Lcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy;Landroid/app/Activity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$2;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$2;->val$activity:Landroid/app/Activity;

    const-string v1, "tw_err_network"

    .line 119
    invoke-static {v0, v1}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 118
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
