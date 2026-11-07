.class Lcom/talkweb/test/MainActivity1$5;
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

    .line 187
    iput-object p1, p0, Lcom/talkweb/test/MainActivity1$5;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "\u5f00\u59cb\u5b9e\u540d\u8ba4\u8bc1"

    .line 193
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$5;->this$0:Lcom/talkweb/test/MainActivity1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p1, v0, v1}, Lcom/talkweb/twOfflineSdk/tools/CertificationUtil;->showCertification(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;ZLcom/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl;)V

    return-void
.end method
