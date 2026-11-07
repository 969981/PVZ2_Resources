.class Lcom/mobile/auth/e/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobile/auth/e/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mobile/auth/e/b;

.field final synthetic b:I

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lcom/mobile/auth/e/e;


# direct methods
.method constructor <init>(Lcom/mobile/auth/e/e;Lcom/mobile/auth/e/b;ILorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/e/e$4;->d:Lcom/mobile/auth/e/e;

    iput-object p2, p0, Lcom/mobile/auth/e/e$4;->a:Lcom/mobile/auth/e/b;

    iput p3, p0, Lcom/mobile/auth/e/e$4;->b:I

    iput-object p4, p0, Lcom/mobile/auth/e/e$4;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mobile/auth/e/e$4;->a:Lcom/mobile/auth/e/b;

    iget v1, p0, Lcom/mobile/auth/e/e$4;->b:I

    iget-object v2, p0, Lcom/mobile/auth/e/e$4;->c:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/mobile/auth/e/b;->a(ILorg/json/JSONObject;)V

    return-void
.end method
