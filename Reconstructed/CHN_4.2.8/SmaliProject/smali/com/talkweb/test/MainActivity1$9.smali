.class Lcom/talkweb/test/MainActivity1$9;
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

    .line 326
    iput-object p1, p0, Lcom/talkweb/test/MainActivity1$9;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 332
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$9;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-static {p1}, Lcom/talkweb/test/MainActivity1;->access$200(Lcom/talkweb/test/MainActivity1;)Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orderNumber is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/talkweb/test/MainActivity1$9;->this$0:Lcom/talkweb/test/MainActivity1;

    new-instance v2, Lcom/talkweb/test/MainActivity1$9$1;

    invoke-direct {v2, p0}, Lcom/talkweb/test/MainActivity1$9$1;-><init>(Lcom/talkweb/test/MainActivity1$9;)V

    invoke-static {p1, v0, v1, v2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->pay(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
