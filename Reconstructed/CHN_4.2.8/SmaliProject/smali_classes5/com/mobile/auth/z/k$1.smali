.class public final Lcom/mobile/auth/z/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobile/auth/z/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mobile/auth/z/k;


# direct methods
.method public constructor <init>(Lcom/mobile/auth/z/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/z/k$1;->b:Lcom/mobile/auth/z/k;

    iput p2, p0, Lcom/mobile/auth/z/k$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/z/k$1;->b:Lcom/mobile/auth/z/k;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/mobile/auth/z/k$1;->b:Lcom/mobile/auth/z/k;

    iget-object v1, v1, Lcom/mobile/auth/z/k;->b:Lcom/mobile/auth/z/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobile/auth/z/k$1;->b:Lcom/mobile/auth/z/k;

    iget-object v2, v1, Lcom/mobile/auth/z/k;->b:Lcom/mobile/auth/z/l;

    iget v3, p0, Lcom/mobile/auth/z/k$1;->a:I

    const v4, 0x64190

    const-string v5, "\u8bf7\u6c42\u8d85\u65f6"

    const-string v6, ""

    const-string v7, ""

    invoke-virtual/range {v2 .. v7}, Lcom/mobile/auth/z/l;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobile/auth/z/k$1;->b:Lcom/mobile/auth/z/k;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mobile/auth/z/k;->b:Lcom/mobile/auth/z/l;

    iget-object v1, p0, Lcom/mobile/auth/z/k$1;->b:Lcom/mobile/auth/z/k;

    invoke-static {v1}, Lcom/mobile/auth/z/k;->a(Lcom/mobile/auth/z/k;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
