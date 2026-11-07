.class public Lcom/alipay/sdk/m/o/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/m/o/b;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/alipay/sdk/m/w/a;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Lcom/alipay/sdk/m/o/b;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/m/o/b;Lcom/alipay/sdk/m/w/a;Landroid/content/Context;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/m/o/b$a;->e:Lcom/alipay/sdk/m/o/b;

    iput-object p2, p0, Lcom/alipay/sdk/m/o/b$a;->a:Lcom/alipay/sdk/m/w/a;

    iput-object p3, p0, Lcom/alipay/sdk/m/o/b$a;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/alipay/sdk/m/o/b$a;->c:Z

    iput p5, p0, Lcom/alipay/sdk/m/o/b$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/m/u/b;

    invoke-direct {v0}, Lcom/alipay/sdk/m/u/b;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/alipay/sdk/m/o/b$a;->a:Lcom/alipay/sdk/m/w/a;

    iget-object v2, p0, Lcom/alipay/sdk/m/o/b$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/m/t/e;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;)Lcom/alipay/sdk/m/t/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/alipay/sdk/m/o/b$a;->e:Lcom/alipay/sdk/m/o/b;

    iget-object v2, p0, Lcom/alipay/sdk/m/o/b$a;->a:Lcom/alipay/sdk/m/w/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/m/t/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/m/o/b;->a(Lcom/alipay/sdk/m/o/b;Lcom/alipay/sdk/m/w/a;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/alipay/sdk/m/o/b$a;->e:Lcom/alipay/sdk/m/o/b;

    invoke-static {}, Lcom/alipay/sdk/m/w/a;->f()Lcom/alipay/sdk/m/w/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/m/o/b;->a(Lcom/alipay/sdk/m/o/b;Lcom/alipay/sdk/m/w/a;)V

    .line 6
    iget-object v0, p0, Lcom/alipay/sdk/m/o/b$a;->a:Lcom/alipay/sdk/m/w/a;

    const-string v1, "biz"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offcfg|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/alipay/sdk/m/o/b$a;->c:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/sdk/m/o/b$a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/m/m/a;->a(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v0}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
