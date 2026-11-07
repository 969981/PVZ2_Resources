.class Lcom/popcap/pvz2cthddev/CrashHandler$2;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/CrashHandler;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/CrashHandler;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/CrashHandler;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/CrashHandler$2;->this$0:Lcom/popcap/pvz2cthddev/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/CrashHandler$2;->this$0:Lcom/popcap/pvz2cthddev/CrashHandler;

    invoke-virtual {p1}, Lcom/popcap/pvz2cthddev/CrashHandler;->finish()V

    return-void
.end method
