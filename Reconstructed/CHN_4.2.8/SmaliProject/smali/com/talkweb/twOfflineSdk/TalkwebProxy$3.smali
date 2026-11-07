.class Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;
.super Ljava/lang/Object;
.source "TalkwebProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TalkwebProxy;->loginChannel(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/bean/UserInfo;
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

    .line 162
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;->val$context:Landroid/app/Activity;

    new-instance v1, Lcom/talkweb/twOfflineSdk/TalkwebProxy$3$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy$3$1;-><init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy$3;)V

    invoke-static {v0, v1}, Lcom/tw/OnLinePaySdk/TwOnlineSDK;->loginSDK(Landroid/content/Context;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    return-void
.end method
