.class Lcom/mobile/auth/e/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/e/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/e/e;->a(Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/e/e$a;

.field final synthetic b:Lcom/mobile/auth/e/e;


# direct methods
.method constructor <init>(Lcom/mobile/auth/e/e;Lcom/mobile/auth/e/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/e/e$3;->b:Lcom/mobile/auth/e/e;

    iput-object p2, p0, Lcom/mobile/auth/e/e$3;->a:Lcom/mobile/auth/e/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/mobile/auth/e/e$3;->b:Lcom/mobile/auth/e/e;

    iget-object v0, v0, Lcom/mobile/auth/e/e;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mobile/auth/e/e$3;->a:Lcom/mobile/auth/e/e$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mobile/auth/e/e$3;->b:Lcom/mobile/auth/e/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mobile/auth/e/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return-void
.end method
