.class public Lcom/mobile/auth/i/e;
.super Lcom/mobile/auth/i/g;


# instance fields
.field private a:Lcom/mobile/auth/i/a;

.field private b:[B

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mobile/auth/i/g;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobile/auth/i/e;->f:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/i/e;->a:Lcom/mobile/auth/i/a;

    invoke-virtual {v0}, Lcom/mobile/auth/i/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/mobile/auth/i/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/i/e;->a:Lcom/mobile/auth/i/a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobile/auth/i/e;->f:Z

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/i/e;->b:[B

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v1, p0, Lcom/mobile/auth/i/e;->f:Z

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "encrypted"

    iget-object v2, p0, Lcom/mobile/auth/i/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "encryptedIV"

    iget-object v2, p0, Lcom/mobile/auth/i/e;->d:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reqdata"

    iget-object v2, p0, Lcom/mobile/auth/i/e;->b:[B

    iget-object v3, p0, Lcom/mobile/auth/i/e;->a:Lcom/mobile/auth/i/a;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mobile/auth/i/e;->d:[B

    invoke-static {v2, v3, v4}, Lcom/mobile/auth/l/a;->a([BLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "securityreinforce"

    iget-object v2, p0, Lcom/mobile/auth/i/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/i/e;->e:Ljava/lang/String;

    return-void
.end method

.method public b([B)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/i/e;->d:[B

    return-void
.end method

.method public c()Lcom/mobile/auth/i/a;
    .locals 1

    iget-object v0, p0, Lcom/mobile/auth/i/e;->a:Lcom/mobile/auth/i/a;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobile/auth/i/e;->c:Ljava/lang/String;

    return-void
.end method
