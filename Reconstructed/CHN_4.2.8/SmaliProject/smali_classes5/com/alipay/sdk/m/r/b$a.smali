.class public Lcom/alipay/sdk/m/r/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/sdk/m/s/a$a;


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

.field public final synthetic b:Lcom/alipay/sdk/m/r/b;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/m/r/b;Lcom/alipay/sdk/m/r/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/m/r/b$a;->b:Lcom/alipay/sdk/m/r/b;

    iput-object p2, p0, Lcom/alipay/sdk/m/r/b$a;->a:Lcom/alipay/sdk/m/r/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1

    const-string p1, "LocalWebPayManager"

    const-string v0, "checkAndUpdateLocalData downloadListener onSuccess"

    .line 1
    invoke-static {p1, v0}, Lcom/alipay/sdk/m/y/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/alipay/sdk/m/r/b$a;->b:Lcom/alipay/sdk/m/r/b;

    iget-object v0, p0, Lcom/alipay/sdk/m/r/b$a;->a:Lcom/alipay/sdk/m/r/a;

    invoke-static {p1, v0}, Lcom/alipay/sdk/m/r/b;->a(Lcom/alipay/sdk/m/r/b;Lcom/alipay/sdk/m/r/a;)V

    .line 3
    iget-object p1, p0, Lcom/alipay/sdk/m/r/b$a;->b:Lcom/alipay/sdk/m/r/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alipay/sdk/m/r/b;->a(Lcom/alipay/sdk/m/r/b;Z)Z

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 4
    invoke-static {p1}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lcom/alipay/sdk/m/r/b$a;->b:Lcom/alipay/sdk/m/r/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alipay/sdk/m/r/b;->a(Lcom/alipay/sdk/m/r/b;Z)Z

    return-void
.end method
