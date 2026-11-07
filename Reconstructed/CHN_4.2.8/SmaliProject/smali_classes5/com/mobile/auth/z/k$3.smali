.class public final Lcom/mobile/auth/z/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/z/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobile/auth/z/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lcom/mobile/auth/z/m;

.field final synthetic e:Lcom/mobile/auth/z/k;


# direct methods
.method public constructor <init>(Lcom/mobile/auth/z/k;JLandroid/content/Context;ILcom/mobile/auth/z/m;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/z/k$3;->e:Lcom/mobile/auth/z/k;

    iput-wide p2, p0, Lcom/mobile/auth/z/k$3;->a:J

    iput-object p4, p0, Lcom/mobile/auth/z/k$3;->b:Landroid/content/Context;

    iput p5, p0, Lcom/mobile/auth/z/k$3;->c:I

    iput-object p6, p0, Lcom/mobile/auth/z/k$3;->d:Lcom/mobile/auth/z/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mobile/auth/z/k$3;->a:J

    sub-long/2addr v0, v2

    const-string p1, "selectDataChannel:"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mobile/auth/z/t;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobile/auth/z/k$3;->e:Lcom/mobile/auth/z/k;

    iget-object v0, p0, Lcom/mobile/auth/z/k$3;->b:Landroid/content/Context;

    iget v1, p0, Lcom/mobile/auth/z/k$3;->c:I

    iget-object v2, p0, Lcom/mobile/auth/z/k$3;->d:Lcom/mobile/auth/z/m;

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/mobile/auth/z/k;->a(Landroid/content/Context;ILjava/lang/Object;Lcom/mobile/auth/z/m;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/mobile/auth/z/k$3;->d:Lcom/mobile/auth/z/m;

    iget p2, p0, Lcom/mobile/auth/z/k$3;->c:I

    const v0, 0x64193

    const-string v1, "\u65e0\u6cd5\u5207\u6362\u81f3\u6570\u636e\u7f51\u7edc"

    invoke-interface {p1, p2, v0, v1}, Lcom/mobile/auth/z/m;->a(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/ExceptionProcessor;->processException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
