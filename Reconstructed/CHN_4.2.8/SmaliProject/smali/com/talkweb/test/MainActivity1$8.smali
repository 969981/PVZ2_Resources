.class Lcom/talkweb/test/MainActivity1$8;
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

    .line 274
    iput-object p1, p0, Lcom/talkweb/test/MainActivity1$8;->this$0:Lcom/talkweb/test/MainActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 277
    iget-object p1, p0, Lcom/talkweb/test/MainActivity1$8;->this$0:Lcom/talkweb/test/MainActivity1;

    new-instance v0, Lcom/talkweb/test/MainActivity1$8$1;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity1$8$1;-><init>(Lcom/talkweb/test/MainActivity1$8;)V

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->login(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;)V

    return-void
.end method
