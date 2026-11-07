.class Lcom/tencent/connect/auth/AuthDialog$TimeOutRunable;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOutRunable"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/connect/auth/AuthDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/AuthDialog;Ljava/lang/String;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/tencent/connect/auth/AuthDialog$TimeOutRunable;->b:Lcom/tencent/connect/auth/AuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p2, p0, Lcom/tencent/connect/auth/AuthDialog$TimeOutRunable;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-->timeoutUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog$TimeOutRunable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | mRetryUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog$TimeOutRunable;->b:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v1}, Lcom/tencent/connect/auth/AuthDialog;->i(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openSDK_LOG.AuthDialog"

    invoke-static {v1, v0}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$TimeOutRunable;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthDialog$TimeOutRunable;->b:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v1}, Lcom/tencent/connect/auth/AuthDialog;->i(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$TimeOutRunable;->b:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v0}, Lcom/tencent/connect/auth/AuthDialog;->f(Lcom/tencent/connect/auth/AuthDialog;)Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/UiError;

    iget-object v2, p0, Lcom/tencent/connect/auth/AuthDialog$TimeOutRunable;->b:Lcom/tencent/connect/auth/AuthDialog;

    invoke-static {v2}, Lcom/tencent/connect/auth/AuthDialog;->i(Lcom/tencent/connect/auth/AuthDialog;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x232a

    const-string v4, "\u8bf7\u6c42\u9875\u9762\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    invoke-direct {v1, v3, v4, v2}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/AuthDialog$OnTimeListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 461
    iget-object v0, p0, Lcom/tencent/connect/auth/AuthDialog$TimeOutRunable;->b:Lcom/tencent/connect/auth/AuthDialog;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/AuthDialog;->dismiss()V

    :cond_0
    return-void
.end method
