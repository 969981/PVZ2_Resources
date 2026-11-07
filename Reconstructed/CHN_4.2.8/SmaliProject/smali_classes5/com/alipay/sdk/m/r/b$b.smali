.class public Lcom/alipay/sdk/m/r/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/m/r/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/alipay/sdk/m/r/a;

.field public final synthetic b:Lcom/alipay/sdk/m/s/a$a;

.field public final synthetic c:Lcom/alipay/sdk/m/r/b;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/m/r/b;Lcom/alipay/sdk/m/r/a;Lcom/alipay/sdk/m/s/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/m/r/b$b;->c:Lcom/alipay/sdk/m/r/b;

    iput-object p2, p0, Lcom/alipay/sdk/m/r/b$b;->a:Lcom/alipay/sdk/m/r/a;

    iput-object p3, p0, Lcom/alipay/sdk/m/r/b$b;->b:Lcom/alipay/sdk/m/s/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/m/r/b$b;->c:Lcom/alipay/sdk/m/r/b;

    invoke-static {v0}, Lcom/alipay/sdk/m/r/b;->a(Lcom/alipay/sdk/m/r/b;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v0}, Lcom/alipay/sdk/m/y/e;->b(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 8
    iget-object v0, p0, Lcom/alipay/sdk/m/r/b$b;->a:Lcom/alipay/sdk/m/r/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/m/r/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/m/r/b$b;->c:Lcom/alipay/sdk/m/r/b;

    .line 9
    invoke-static {v2}, Lcom/alipay/sdk/m/r/b;->a(Lcom/alipay/sdk/m/r/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/downloading.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/m/r/b$b;->b:Lcom/alipay/sdk/m/s/a$a;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/m/s/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/sdk/m/s/a$a;)V

    return-void
.end method
