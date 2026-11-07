.class Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1;
.super Ljava/lang/Object;
.source "TwMultiPayDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1;->this$1:Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 202
    new-instance v1, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1$1;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1$1;-><init>(Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog$2$1;)V

    .line 208
    invoke-static {}, Lcom/talkweb/twOfflineSdk/ui/TwMultiPayDialog;->access$300()J

    move-result-wide v2

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
