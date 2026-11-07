.class public Lcom/mobile/auth/i/f;
.super Lcom/mobile/auth/i/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/i/f$a;,
        Lcom/mobile/auth/i/f$b;
    }
.end annotation


# instance fields
.field private a:Lcom/mobile/auth/i/f$b;

.field private b:Lcom/mobile/auth/i/f$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mobile/auth/i/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/i/f;->a:Lcom/mobile/auth/i/f$b;

    invoke-static {v0}, Lcom/mobile/auth/i/f$b;->a(Lcom/mobile/auth/i/f$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/mobile/auth/i/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/i/f;->b:Lcom/mobile/auth/i/f$a;

    return-void
.end method

.method public a(Lcom/mobile/auth/i/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/i/f;->a:Lcom/mobile/auth/i/f$b;

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "sign"

    iget-object v4, p0, Lcom/mobile/auth/i/f;->a:Lcom/mobile/auth/i/f$b;

    invoke-virtual {v4}, Lcom/mobile/auth/i/f$b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "msgid"

    iget-object v4, p0, Lcom/mobile/auth/i/f;->a:Lcom/mobile/auth/i/f$b;

    invoke-virtual {v4}, Lcom/mobile/auth/i/f$b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "systemtime"

    iget-object v4, p0, Lcom/mobile/auth/i/f;->a:Lcom/mobile/auth/i/f$b;

    invoke-virtual {v4}, Lcom/mobile/auth/i/f$b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appid"

    iget-object v4, p0, Lcom/mobile/auth/i/f;->a:Lcom/mobile/auth/i/f$b;

    invoke-virtual {v4}, Lcom/mobile/auth/i/f$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    iget-object v4, p0, Lcom/mobile/auth/i/f;->a:Lcom/mobile/auth/i/f$b;

    invoke-virtual {v4}, Lcom/mobile/auth/i/f$b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "header"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "log"

    iget-object v3, p0, Lcom/mobile/auth/i/f;->b:Lcom/mobile/auth/i/f$a;

    invoke-virtual {v3}, Lcom/mobile/auth/i/f$a;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
