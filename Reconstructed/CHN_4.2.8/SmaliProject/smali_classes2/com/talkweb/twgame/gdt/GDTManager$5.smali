.class final Lcom/talkweb/twgame/gdt/GDTManager$5;
.super Ljava/lang/Object;
.source "GDTManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twgame/gdt/GDTManager;->onCreateFlashDialog(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 358
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$500()I

    move-result v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 359
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 360
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$510()I

    .line 361
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$700()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 363
    :cond_0
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$800()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 365
    :catch_0
    invoke-static {}, Lcom/talkweb/twgame/gdt/GDTManager;->access$800()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :goto_1
    return-void
.end method
