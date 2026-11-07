.class Lcom/talkweb/test/MainActivity1$6;
.super Ljava/lang/Object;
.source "MainActivity1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/test/MainActivity1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/test/MainActivity1;


# direct methods
.method constructor <init>(Lcom/talkweb/test/MainActivity1;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/talkweb/test/MainActivity1$6;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 203
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getRequestHead()Ljava/lang/String;

    move-result-object p1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "head:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$6;->this$0:Lcom/talkweb/test/MainActivity1;

    new-instance v0, Lcom/talkweb/test/MainActivity1$6$1;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$6$1;-><init>(Lcom/talkweb/test/MainActivity1$6;)V

    const-string v1, "109"

    invoke-static {p1, v1, v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
