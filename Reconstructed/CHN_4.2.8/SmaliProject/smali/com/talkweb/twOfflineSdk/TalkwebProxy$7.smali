.class Lcom/talkweb/twOfflineSdk/TalkwebProxy$7;
.super Ljava/lang/Object;
.source "TalkwebProxy.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TalkwebProxy;->reyun(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy;Landroid/app/Activity;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$7;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$7;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "1111"

    .line 486
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$7;->val$context:Landroid/app/Activity;

    const-string v0, "twonlinepay.xml"

    const-string v1, "reyunAppkey"

    invoke-static {p1, v0, v1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "\u70ed\u4e91\u521d\u59cb\u5316\u5931\u8d25"

    .line 494
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
