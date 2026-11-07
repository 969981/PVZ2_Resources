.class Lcom/popcap/pvz2cthddev/AndroidGameApp$2;
.super Ljava/lang/Object;
.source "AndroidGameApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/AndroidGameApp;->Device_CopyToClipBoard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidGameApp;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/AndroidGameApp;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1233
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$2;->this$0:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    iput-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$2;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1236
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$2;->this$0:Lcom/popcap/pvz2cthddev/AndroidGameApp;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/AndroidGameApp;->access$100(Lcom/popcap/pvz2cthddev/AndroidGameApp;)Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1237
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1239
    iget-object v1, p0, Lcom/popcap/pvz2cthddev/AndroidGameApp$2;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
