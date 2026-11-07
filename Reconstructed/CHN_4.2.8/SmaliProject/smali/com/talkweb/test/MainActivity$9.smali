.class Lcom/talkweb/test/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/test/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/test/MainActivity;


# direct methods
.method constructor <init>(Lcom/talkweb/test/MainActivity;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/talkweb/test/MainActivity$9;->this$0:Lcom/talkweb/test/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 420
    new-instance p1, Lcom/talkweb/test/MainActivity$9$1;

    invoke-direct {p1, p0}, Lcom/talkweb/test/MainActivity$9$1;-><init>(Lcom/talkweb/test/MainActivity$9;)V

    const-string v0, "012000169489"

    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->redeemCode(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwRedeemCallback;)V

    return-void
.end method
