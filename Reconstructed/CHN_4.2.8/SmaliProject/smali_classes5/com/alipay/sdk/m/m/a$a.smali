.class public Lcom/alipay/sdk/m/m/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/m/m/a;->a(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/alipay/sdk/m/w/a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/m/m/a$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/sdk/m/m/a$a;->b:Lcom/alipay/sdk/m/w/a;

    iput-object p3, p0, Lcom/alipay/sdk/m/m/a$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/sdk/m/m/a$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/m/m/a$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/sdk/m/m/a$a;->b:Lcom/alipay/sdk/m/w/a;

    iget-object v1, v1, Lcom/alipay/sdk/m/w/a;->n:Lcom/alipay/sdk/m/m/b;

    iget-object v2, p0, Lcom/alipay/sdk/m/m/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/m/m/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/m/m/a$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/m/m/a$b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
