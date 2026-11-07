.class public final Lcom/volcengine/zeus/LocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/volcengine/zeus/LocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aKY:Lcom/volcengine/zeus/LocalBroadcastManager;


# direct methods
.method constructor <init>(Lcom/volcengine/zeus/LocalBroadcastManager;Landroid/os/Looper;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/volcengine/zeus/LocalBroadcastManager$1;->aKY:Lcom/volcengine/zeus/LocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 124
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/volcengine/zeus/LocalBroadcastManager$1;->aKY:Lcom/volcengine/zeus/LocalBroadcastManager;

    invoke-virtual {p1}, Lcom/volcengine/zeus/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method
