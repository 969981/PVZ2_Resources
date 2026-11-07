.class Lcom/talkweb/test/MainActivity$8;
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

    .line 385
    iput-object p1, p0, Lcom/talkweb/test/MainActivity$8;->this$0:Lcom/talkweb/test/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 389
    iget-object p1, p0, Lcom/talkweb/test/MainActivity$8;->this$0:Lcom/talkweb/test/MainActivity;

    invoke-static {p1}, Lcom/talkweb/test/MainActivity;->access$000(Lcom/talkweb/test/MainActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/talkweb/test/MainActivity$8$1;

    invoke-direct {v0, p0}, Lcom/talkweb/test/MainActivity$8$1;-><init>(Lcom/talkweb/test/MainActivity$8;)V

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->get(Ljava/lang/String;Lcom/talkweb/twOfflineSdk/callback/TwStorageGetCallBack;)V

    return-void
.end method
