.class Lcom/talkweb/test/MainActivity$2;
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

    .line 83
    iput-object p1, p0, Lcom/talkweb/test/MainActivity$2;->this$0:Lcom/talkweb/test/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/talkweb/test/MainActivity$2;->this$0:Lcom/talkweb/test/MainActivity;

    new-instance v0, Lcom/talkweb/test/MainActivity$2$1;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$2$1;-><init>(Lcom/talkweb/test/MainActivity$2;)V

    const-string v1, "109"

    invoke-static {p1, v1, v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
