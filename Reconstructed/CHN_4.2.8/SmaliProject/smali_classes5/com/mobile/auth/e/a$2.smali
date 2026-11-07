.class Lcom/mobile/auth/e/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/e/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/e/a;->a(Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/e/e$a;

.field final synthetic b:Lcom/mobile/auth/e/a;


# direct methods
.method constructor <init>(Lcom/mobile/auth/e/a;Lcom/mobile/auth/e/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/e/a$2;->b:Lcom/mobile/auth/e/a;

    iput-object p2, p0, Lcom/mobile/auth/e/a$2;->a:Lcom/mobile/auth/e/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "onBusinessComplete"

    invoke-static {v0, v0}, Lcom/mobile/auth/l/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobile/auth/e/a$2;->b:Lcom/mobile/auth/e/a;

    iget-object v0, v0, Lcom/mobile/auth/e/a;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mobile/auth/e/a$2;->a:Lcom/mobile/auth/e/e$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "103000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "traceId"

    invoke-virtual {p3, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/l/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/mobile/auth/e/a$2;->b:Lcom/mobile/auth/e/a;

    iget-object p1, p1, Lcom/mobile/auth/e/a;->b:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/mobile/auth/e/a;->a(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/e/a$2;->b:Lcom/mobile/auth/e/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mobile/auth/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return-void
.end method
