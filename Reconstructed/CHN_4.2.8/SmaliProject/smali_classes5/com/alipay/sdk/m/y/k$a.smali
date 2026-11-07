.class public Lcom/alipay/sdk/m/y/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/sdk/app/APayEntranceActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/m/y/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lcom/alipay/sdk/m/y/k;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/m/y/k;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/m/y/k$a;->b:Lcom/alipay/sdk/m/y/k;

    iput-object p2, p0, Lcom/alipay/sdk/m/y/k$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/m/y/k$a;->b:Lcom/alipay/sdk/m/y/k;

    invoke-static {v0, p1}, Lcom/alipay/sdk/m/y/k;->a(Lcom/alipay/sdk/m/y/k;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/alipay/sdk/m/y/k$a;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/m/y/k$a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/alipay/sdk/m/y/k$a;->b:Lcom/alipay/sdk/m/y/k;

    invoke-static {v1}, Lcom/alipay/sdk/m/y/k;->a(Lcom/alipay/sdk/m/y/k;)Lcom/alipay/sdk/m/w/a;

    move-result-object v1

    const-string v2, "biz"

    const-string v3, "BSAResultEx"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
