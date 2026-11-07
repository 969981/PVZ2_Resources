.class Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$3;
.super Ljava/lang/Object;
.source "TwOfflineSDKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;->doPay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;Landroid/app/Activity;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$3;->this$0:Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u4e0a\u4e00\u6b21\u652f\u4ed8\u5c1a\u672a\u7ed3\u675f\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
