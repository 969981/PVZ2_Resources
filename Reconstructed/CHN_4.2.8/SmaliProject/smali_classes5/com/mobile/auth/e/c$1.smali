.class Lcom/mobile/auth/e/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mobile/auth/j/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/e/c;->b(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Lcom/mobile/auth/e/d;

.field final synthetic c:Lcom/mobile/auth/e/c;


# direct methods
.method constructor <init>(Lcom/mobile/auth/e/c;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/e/c$1;->c:Lcom/mobile/auth/e/c;

    iput-object p2, p0, Lcom/mobile/auth/e/c$1;->a:Lcom/cmic/sso/sdk/a;

    iput-object p3, p0, Lcom/mobile/auth/e/c$1;->b:Lcom/mobile/auth/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    iget-object v0, p0, Lcom/mobile/auth/e/c$1;->c:Lcom/mobile/auth/e/c;

    iget-object v1, p0, Lcom/mobile/auth/e/c$1;->a:Lcom/cmic/sso/sdk/a;

    iget-object v2, p0, Lcom/mobile/auth/e/c$1;->b:Lcom/mobile/auth/e/d;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mobile/auth/e/c;->a(Lcom/mobile/auth/e/c;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/e/d;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
