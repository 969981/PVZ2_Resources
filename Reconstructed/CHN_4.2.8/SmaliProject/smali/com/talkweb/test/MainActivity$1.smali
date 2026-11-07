.class Lcom/talkweb/test/MainActivity$1;
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

    .line 68
    iput-object p1, p0, Lcom/talkweb/test/MainActivity$1;->this$0:Lcom/talkweb/test/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/talkweb/test/MainActivity$1;->this$0:Lcom/talkweb/test/MainActivity;

    new-instance v0, Lcom/talkweb/test/MainActivity$1$1;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$1$1;-><init>(Lcom/talkweb/test/MainActivity$1;)V

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->openCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V

    return-void
.end method
