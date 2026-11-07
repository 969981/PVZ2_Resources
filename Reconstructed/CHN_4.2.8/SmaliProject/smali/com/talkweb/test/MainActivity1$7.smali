.class Lcom/talkweb/test/MainActivity1$7;
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

    .line 257
    iput-object p1, p0, Lcom/talkweb/test/MainActivity1$7;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 262
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$7;->this$0:Lcom/talkweb/test/MainActivity1;

    const-string v0, "deviceid1"

    const-string v1, "45065563"

    const-string v2, "890717479"

    invoke-static {p1, v0, v1, v2}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->userInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
