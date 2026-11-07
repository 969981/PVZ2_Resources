.class public Lcom/alipay/sdk/m/a0/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/sdk/m/a0/b;->a(Lcom/alipay/sdk/m/w/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/alipay/sdk/m/w/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/sdk/m/w/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/m/a0/b$h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/sdk/m/a0/b$h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/sdk/m/a0/b$h;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/alipay/sdk/m/a0/b$h;->d:Lcom/alipay/sdk/m/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 8

    const-string v0, "third"

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/alipay/sdk/m/a0/b$h;->a:Ljava/lang/String;

    const-string v3, "tid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/alipay/sdk/m/a0/b$h;->b:Ljava/lang/String;

    const-string v3, "utdid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ""

    .line 4
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/alipay/sdk/m/a0/b$h;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v4

    .line 7
    new-instance v5, Landroid/os/ConditionVariable;

    invoke-direct {v5}, Landroid/os/ConditionVariable;-><init>()V

    .line 8
    new-instance v6, Lcom/alipay/sdk/m/a0/b$h$a;

    invoke-direct {v6, p0, v2, v5}, Lcom/alipay/sdk/m/a0/b$h$a;-><init>(Lcom/alipay/sdk/m/a0/b$h;[Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v4, v3, v1, v6}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    const-wide/16 v6, 0xbb8

    .line 17
    invoke-virtual {v5, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 19
    invoke-static {v1}, Lcom/alipay/sdk/m/y/g;->a(Ljava/lang/Throwable;)V

    .line 20
    iget-object v4, p0, Lcom/alipay/sdk/m/a0/b$h;->d:Lcom/alipay/sdk/m/w/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "GetApdidEx"

    invoke-static {v4, v0, v5, v1}, Lcom/alipay/sdk/m/m/a;->b(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_0
    aget-object v1, v2, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/alipay/sdk/m/a0/b$h;->d:Lcom/alipay/sdk/m/w/a;

    const-string v4, "GetApdidNull"

    const-string v5, "missing token"

    invoke-static {v1, v0, v4, v5}, Lcom/alipay/sdk/m/m/a;->b(Lcom/alipay/sdk/m/w/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    aget-object v0, v2, v3

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/alipay/sdk/m/a0/b$h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
