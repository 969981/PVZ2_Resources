.class Lcom/tencent/connect/auth/AuthDialog$THandler;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "THandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/AuthDialog;

.field private b:Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/AuthDialog;Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;Landroid/os/Looper;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog$THandler;->a:Lcom/tencent/connect/auth/AuthDialog;

    .line 169
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    iput-object p2, p0, Lcom/tencent/connect/auth/AuthDialog$THandler;->b:Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$THandler;->a:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->a(Lcom/tencent/connect/auth/AuthDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/connect/auth/AuthDialog;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/tencent/connect/auth/AuthDialog$THandler;->b:Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;->onCancel()V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$THandler;->b:Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;->a(Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
