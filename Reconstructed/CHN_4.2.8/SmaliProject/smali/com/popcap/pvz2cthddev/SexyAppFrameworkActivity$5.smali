.class Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$5;
.super Ljava/lang/Object;
.source "SexyAppFrameworkActivity.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->InitUncaughtExceptionHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$5;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 387
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 388
    const-string p1, "handller"

    const-string v0, "uncaughtException"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity$5;->this$0:Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->handleNativeCrash(Ljava/lang/String;)V

    return-void
.end method
