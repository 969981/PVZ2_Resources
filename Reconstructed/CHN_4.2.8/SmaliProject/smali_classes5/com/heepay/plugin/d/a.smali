.class public Lcom/heepay/plugin/d/a;
.super Lcom/heepay/plugin/b/a;
.source "SourceFile"


# static fields
.field private static n:Lcom/heepay/plugin/d/a;

.field private static final o:Ljava/lang/String;


# instance fields
.field private l:Z

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/heepay/plugin/d/a;

    invoke-direct {v0}, Lcom/heepay/plugin/d/a;-><init>()V

    sput-object v0, Lcom/heepay/plugin/d/a;->n:Lcom/heepay/plugin/d/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/heepay/plugin/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heepay/plugin/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heepay/plugin/b/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<@*Se*rv*ic*e@ xm*ln*s=\"h*tt*p:*/*/w*ww*.j*ca*r*d*.c*n/*we*bs*er*vi*ces/\">"

    const-string v2, "\\*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<ph*one*Ver*>@p*ho*ne*Ver@</*pho*ne*Ver>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<ph*on*eI*D>*@p*ho*ne*ID*@</*pho*ne*I*D>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<*p*hon*eI*nf*o>@*ph*o*n*eI*n*f*o@*</*ph*one*In*fo>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<*tim*est*am*p>@*tim*est*amp*@</*tim*est*am*p>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<*enc*ryp*tPa*ra*m>*@p*ar*am*@<*/e*nc*ry*pt*Pa*ra*m>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<*si*gn>*@s**ign@</sign>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<*/*@*Se*rv*ice*@>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heepay/plugin/b/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heepay/plugin/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/d/a;->o:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/heepay/plugin/b/a;-><init>()V

    sget-boolean v0, Lcom/heepay/plugin/e/d;->a:Z

    iput-boolean v0, p0, Lcom/heepay/plugin/d/a;->l:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/heepay/plugin/d/a;->m:I

    return-void
.end method

.method private a(Lcom/heepay/plugin/domain/g;)Lcom/heepay/plugin/domain/d;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/heepay/plugin/domain/d;

    invoke-direct {p1}, Lcom/heepay/plugin/domain/d;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/heepay/plugin/domain/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/heepay/plugin/domain/d;

    invoke-direct {p1}, Lcom/heepay/plugin/domain/d;-><init>()V

    sget-object v1, Lcom/heepay/plugin/b/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/heepay/plugin/e/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/heepay/plugin/domain/d;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/heepay/plugin/b/b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/heepay/plugin/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/heepay/plugin/domain/d;->a(I)V

    sget-object v1, Lcom/heepay/plugin/b/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/heepay/plugin/e/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/heepay/plugin/domain/d;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/heepay/plugin/b/c;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/heepay/plugin/e/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/heepay/plugin/domain/d;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/heepay/plugin/b/c;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/heepay/plugin/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/heepay/plugin/domain/d;->b(I)V

    sget-object v1, Lcom/heepay/plugin/b/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/heepay/plugin/e/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/heepay/plugin/domain/d;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/heepay/plugin/b/c;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/heepay/plugin/e/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/heepay/plugin/domain/d;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/heepay/plugin/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/heepay/plugin/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object p1, Lcom/heepay/plugin/b/c;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private b(Lcom/heepay/plugin/domain/g;)Z
    .locals 3

    iget-object v0, p1, Lcom/heepay/plugin/domain/g;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/heepay/plugin/domain/g;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lcom/heepay/plugin/domain/g;->m:Ljava/lang/String;

    const-string v0, "WebService"

    const-string v1, "public key data has error "

    invoke-static {v0, v1}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received public key data again: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iput-object p1, p0, Lcom/heepay/plugin/b/a;->c:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lcom/heepay/plugin/b/g;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/heepay/plugin/b/a;->d:Ljava/security/PublicKey;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received public key: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heepay/plugin/b/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/heepay/plugin/api/HPlugin;->mPayInitInfo:Lcom/heepay/plugin/domain/PayInitInfo;

    invoke-virtual {v0}, Lcom/heepay/plugin/domain/PayInitInfo;->getSdkVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/b/a;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/heepay/plugin/api/HPlugin;->mPayInitInfo:Lcom/heepay/plugin/domain/PayInitInfo;

    invoke-virtual {v1}, Lcom/heepay/plugin/domain/PayInitInfo;->getSdkVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lcom/heepay/plugin/d/a;
    .locals 1

    sget-object v0, Lcom/heepay/plugin/d/a;->n:Lcom/heepay/plugin/d/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/heepay/plugin/domain/f;
    .locals 5

    new-instance v0, Lcom/heepay/plugin/domain/f;

    invoke-direct {v0}, Lcom/heepay/plugin/domain/f;-><init>()V

    const-string v1, "Ve*rs*i*on*Se*rv*ic*e.A*pp*Bu*gR*ep*or*t"

    const-string v2, "\\*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x1

    :try_start_0
    sget-object v4, Lcom/heepay/plugin/b/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/heepay/plugin/b/d;->b:Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v3}, Lcom/heepay/plugin/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;

    move-result-object p1

    iget-boolean p2, p1, Lcom/heepay/plugin/domain/g;->b:Z

    if-eqz p2, :cond_0

    invoke-virtual {v0, v3}, Lcom/heepay/plugin/domain/f;->a(Z)V

    iget-object p2, p1, Lcom/heepay/plugin/domain/g;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/heepay/plugin/domain/g;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4ea7\u751f\u4e86\u4f8b\u5916\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Exception"

    invoke-static {v1, p2}, Lcom/heepay/plugin/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "---->1--AppBugReport"

    invoke-static {v1, p2}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/heepay/plugin/domain/f;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/Exception;)V

    const-string p2, "\u83b7\u53d6\u6570\u636e\u65f6\u51fa\u9519"

    invoke-virtual {v0, p2}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/heepay/plugin/domain/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u539f\u56e0\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/heepay/plugin/domain/f;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/heepay/plugin/domain/f;
    .locals 9

    const-string v0, ", \u539f\u56e0\uff1a"

    const-string v1, "\u83b7\u53d6\u6570\u636e\u65f6\u51fa\u9519"

    const-string v2, "---"

    const-string v3, "Exception"

    const-string v4, "\u4ea7\u751f\u4e86\u4f8b\u5916\uff1a"

    new-instance v5, Lcom/heepay/plugin/domain/f;

    invoke-direct {v5}, Lcom/heepay/plugin/domain/f;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x1

    :try_start_0
    sget-object v8, Lcom/heepay/plugin/b/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/heepay/plugin/b/c;->b:Ljava/lang/String;

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object p1, Lcom/heepay/plugin/b/c;->d:Ljava/lang/String;

    invoke-virtual {v6, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/heepay/plugin/b/c;->e:Ljava/lang/String;

    invoke-virtual {v6, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/heepay/plugin/b/b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/heepay/plugin/domain/e;->d()Lcom/heepay/plugin/domain/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/heepay/plugin/domain/e;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PayService.CheckPayTokenID"

    invoke-virtual {p0, p2, p1, v7}, Lcom/heepay/plugin/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;

    move-result-object p1

    iget-boolean p3, p1, Lcom/heepay/plugin/domain/g;->b:Z

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lcom/heepay/plugin/d/a;->b(Lcom/heepay/plugin/domain/g;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v7}, Lcom/heepay/plugin/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;

    move-result-object p1

    iget-boolean p2, p1, Lcom/heepay/plugin/domain/g;->b:Z

    if-eqz p2, :cond_1

    invoke-virtual {v5, v7}, Lcom/heepay/plugin/domain/f;->a(Z)V

    iget-object p2, p1, Lcom/heepay/plugin/domain/g;->c:Ljava/lang/String;

    invoke-virtual {v5, p2}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/heepay/plugin/domain/g;->d:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/String;)V

    return-object v5

    :cond_0
    invoke-virtual {v5, v7}, Lcom/heepay/plugin/domain/f;->a(Z)V

    iget-object p2, p1, Lcom/heepay/plugin/domain/g;->c:Ljava/lang/String;

    invoke-virtual {v5, p2}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/heepay/plugin/domain/g;->d:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/String;)V

    return-object v5

    :cond_1
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/heepay/plugin/domain/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/heepay/plugin/domain/h;

    invoke-direct {p1}, Lcom/heepay/plugin/domain/h;-><init>()V

    sget-object p3, Lcom/heepay/plugin/b/c;->f:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/heepay/plugin/e/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/heepay/plugin/domain/h;->e(Ljava/lang/String;)V

    sget-object p3, Lcom/heepay/plugin/b/c;->c:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/heepay/plugin/e/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/heepay/plugin/domain/h;->a(Ljava/lang/String;)V

    sget-object p3, Lcom/heepay/plugin/b/c;->h:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/heepay/plugin/e/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/heepay/plugin/domain/h;->f(Ljava/lang/String;)V

    sget-object p3, Lcom/heepay/plugin/b/c;->j:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/heepay/plugin/e/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/heepay/plugin/domain/h;->b(Ljava/lang/String;)V

    sget-object p3, Lcom/heepay/plugin/b/c;->k:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/heepay/plugin/e/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/heepay/plugin/domain/h;->c(Ljava/lang/String;)V

    sget-object p3, Lcom/heepay/plugin/b/c;->l:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/heepay/plugin/e/a;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/heepay/plugin/domain/h;->d(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/heepay/plugin/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "---->2--CheckPayTokenID"

    invoke-static {p3, p2}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/heepay/plugin/domain/f;->a(Z)V

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/Exception;)V

    invoke-virtual {v5, v1}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/heepay/plugin/domain/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->b(Ljava/lang/String;)V

    return-object v5

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/heepay/plugin/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "---->1--CheckPayTokenID"

    invoke-static {p3, p2}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/heepay/plugin/domain/f;->a(Z)V

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/Exception;)V

    invoke-virtual {v5, v1}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/heepay/plugin/domain/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->b(Ljava/lang/String;)V

    return-object v5
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/heepay/plugin/domain/f;
    .locals 8

    const-string v0, ", \u539f\u56e0\uff1a"

    const-string v1, "\u83b7\u53d6\u6570\u636e\u65f6\u51fa\u9519"

    const-string v2, "---"

    const-string v3, "Exception"

    const-string v4, "\u4ea7\u751f\u4e86\u4f8b\u5916\uff1a"

    new-instance v5, Lcom/heepay/plugin/domain/f;

    invoke-direct {v5}, Lcom/heepay/plugin/domain/f;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v5, v7}, Lcom/heepay/plugin/domain/f;->a(Z)V

    const-string p1, "\u8ba2\u5355\u53f7\u51fa\u9519"

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    return-object v5

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {v5, v7}, Lcom/heepay/plugin/domain/f;->a(Z)V

    const-string p1, "\u5546\u5bb6\u4fe1\u606f\u51fa\u9519"

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    return-object v5

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/heepay/plugin/d/a;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    sget-object p2, Lcom/heepay/plugin/b/c;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/heepay/plugin/b/c;->g:Ljava/lang/String;

    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PayService.SubmitPay"

    invoke-virtual {p0, p2, p1, v7}, Lcom/heepay/plugin/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;

    move-result-object p1

    iget-boolean p2, p1, Lcom/heepay/plugin/domain/g;->b:Z

    if-eqz p2, :cond_2

    invoke-virtual {v5, v7}, Lcom/heepay/plugin/domain/f;->a(Z)V

    iget-object p2, p1, Lcom/heepay/plugin/domain/g;->c:Ljava/lang/String;

    invoke-virtual {v5, p2}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/heepay/plugin/domain/g;->d:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/String;)V

    return-object v5

    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/heepay/plugin/d/a;->a(Lcom/heepay/plugin/domain/g;)Lcom/heepay/plugin/domain/d;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/heepay/plugin/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "---->2--SubmitPay"

    invoke-static {p3, p2}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/heepay/plugin/domain/f;->a(Z)V

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/Exception;)V

    invoke-virtual {v5, v1}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/heepay/plugin/domain/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->b(Ljava/lang/String;)V

    return-object v5

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/heepay/plugin/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "---->1--SubmitPay"

    invoke-static {p3, p2}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/heepay/plugin/domain/f;->a(Z)V

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/Exception;)V

    invoke-virtual {v5, v1}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/heepay/plugin/domain/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/heepay/plugin/domain/f;->b(Ljava/lang/String;)V

    return-object v5
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Z)Lcom/heepay/plugin/domain/f;
    .locals 4

    new-instance v0, Lcom/heepay/plugin/domain/f;

    invoke-direct {v0}, Lcom/heepay/plugin/domain/f;-><init>()V

    const-string v1, "P*a*yS*er*vi*ce.Qu*ery*Pa*yS*ta*tu*s"

    const-string v2, "\\*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/heepay/plugin/d/a;->a(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    sget-object p2, Lcom/heepay/plugin/b/c;->m:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v2}, Lcom/heepay/plugin/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;

    move-result-object p1

    iget-boolean p2, p1, Lcom/heepay/plugin/domain/g;->b:Z

    if-eqz p2, :cond_0

    invoke-virtual {v0, v2}, Lcom/heepay/plugin/domain/f;->a(Z)V

    iget-object p2, p1, Lcom/heepay/plugin/domain/g;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/heepay/plugin/domain/g;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/String;)V

    iget p1, p1, Lcom/heepay/plugin/domain/g;->n:I

    invoke-virtual {v0, p1}, Lcom/heepay/plugin/domain/f;->a(I)V

    return-object v0

    :cond_0
    iget p1, p1, Lcom/heepay/plugin/domain/g;->n:I

    invoke-virtual {v0, p1}, Lcom/heepay/plugin/domain/f;->a(I)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u4ea7\u751f\u4e86\u4f8b\u5916\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Exception"

    invoke-static {p3, p2}, Lcom/heepay/plugin/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "---->1--QueryPayStatus"

    invoke-static {p3, p2}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/heepay/plugin/domain/f;->a(Z)V

    invoke-virtual {v0, p1}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/Exception;)V

    const-string p2, "\u83b7\u53d6\u6570\u636e\u65f6\u51fa\u9519"

    invoke-virtual {v0, p2}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/heepay/plugin/domain/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", \u539f\u56e0\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/heepay/plugin/domain/f;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;
    .locals 5

    invoke-virtual {p0}, Lcom/heepay/plugin/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heepay/plugin/b/a;->a:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/heepay/plugin/d/a;->l:Z

    const-string v3, "\\*"

    if-eqz v1, :cond_1

    sget-object v1, Lcom/heepay/plugin/api/HPlugin;->mPayInitInfo:Lcom/heepay/plugin/domain/PayInitInfo;

    invoke-virtual {v1}, Lcom/heepay/plugin/domain/PayInitInfo;->getPayUrlType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "*h*t*t*p*:*/*/*c*.*s*u*p*.*8*0*0*j*.*c*o*m*/*P*h*o*n*e*/*S*D*K*"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_0
    const-string v1, "*h*t*t*p*s*:*/*/*t*e*s*t*.*h*e*e*p*a*y*.*c*o*m*/*P*h*o*n*e*/*S*D*K"

    goto :goto_0

    :pswitch_1
    const-string v1, "*h*t*t*p*:*/*/*1*1*5*.*1*8*2*.*2*4*4*.*1*6*5*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*"

    goto :goto_0

    :pswitch_2
    const-string v1, "*h*t*t*p*:*/*/*2*1*1.*1*0*3*.*1*7*1*.*1*8*8*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*"

    goto :goto_0

    :pswitch_3
    const-string v1, "*h*t*t*p*:*/*/*2*1*1*.*1*0*3*.*1*7*1*.*1*8*5*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*"

    goto :goto_0

    :pswitch_4
    const-string v1, "*h*t*t*p*:*/*/*2*1*1*.*1*0*3*.*1*7*1*.*1*6*3*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*"

    goto :goto_0

    :pswitch_5
    const-string v1, "*h*t*t*p*:*/*/*1*1*5*.*1*8*2*.*3*8*.*1*3*6*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*"

    goto :goto_0

    :pswitch_6
    const-string v1, "*h*t*t*p*:*/*/*2*1*1*.*1*0*3*.*1*5*7*.*4*5*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*"

    goto :goto_0

    :pswitch_7
    const-string v1, "*h*t*t*p*:*/*/*1*9*2*.*1*6*8*.*2*.*9*5*/*P*a*y*H*e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K"

    goto :goto_0

    :cond_1
    :pswitch_8
    const-string v1, "*h*t*t*p*s*:*/*/*p*a*y*.*h*e*e*_*p*a*y*.*c*o*m*/*P*h*o*n*e*/*S*D*K"

    :goto_0
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heepay/plugin/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/heepay/plugin/b/a;->a:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/heepay/plugin/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/heepay/plugin/domain/g;

    invoke-direct {v1}, Lcom/heepay/plugin/domain/g;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/heepay/plugin/domain/g;->b:Z

    const-string v3, "\u8fd4\u56de\u7684\u5bf9\u8c61\u4e3a\u7a7a"

    iput-object v3, v1, Lcom/heepay/plugin/domain/g;->c:Ljava/lang/String;

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " return value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heepay/plugin/domain/g;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GetDataFromServer"

    invoke-static {v4, v3}, Lcom/heepay/plugin/e/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/heepay/plugin/domain/g;->b:Z

    if-nez v3, :cond_4

    return-object v1

    :cond_4
    iget-object v3, v1, Lcom/heepay/plugin/domain/g;->a:Ljava/lang/Exception;

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x3

    if-ge v3, v4, :cond_6

    iget-object v4, v1, Lcom/heepay/plugin/domain/g;->a:Ljava/lang/Exception;

    if-eqz v4, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "----\u91cd\u65b0\u8bf7\u6c42"

    invoke-static {v4, v1}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/heepay/plugin/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;

    move-result-object v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/heepay/plugin/domain/g;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u670d\u52a1\u5931\u8d25\uff0c\u539f\u56e0\uff1a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/heepay/plugin/b/a;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GetDataFromServer return error, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/heepay/plugin/b/a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "USaleWebService"

    invoke-static {p2, p1}, Lcom/heepay/plugin/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/heepay/plugin/domain/e;->d()Lcom/heepay/plugin/domain/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heepay/plugin/domain/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/heepay/plugin/domain/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/heepay/plugin/d/a;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/heepay/plugin/b/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/heepay/plugin/b/a;->d:Ljava/security/PublicKey;

    invoke-virtual {p0, p4, p2}, Lcom/heepay/plugin/b/a;->a(Ljava/security/PublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance p4, Ljava/lang/String;

    sget-object v4, Lcom/heepay/plugin/d/a;->o:Ljava/lang/String;

    invoke-direct {p4, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "@Service@"

    invoke-virtual {p4, v4, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "@phoneVer@"

    invoke-virtual {p1, p4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/heepay/plugin/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "@phoneID@"

    invoke-virtual {p1, v1, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "@phoneInfo@"

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/heepay/plugin/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "@timestamp@"

    invoke-virtual {p1, p4, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/heepay/plugin/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "@param@"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3}, Lcom/heepay/plugin/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "@sign@"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/heepay/plugin/b/a;->a(Landroid/content/Context;)Z

    iget v0, p0, Lcom/heepay/plugin/d/a;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/heepay/plugin/d/a;->m:I

    invoke-static {}, Lcom/heepay/plugin/domain/e;->d()Lcom/heepay/plugin/domain/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/heepay/plugin/domain/e;->b(Landroid/content/Context;)V

    return v1
.end method

.method public d()Lcom/heepay/plugin/domain/f;
    .locals 15

    const-string v0, ", \u539f\u56e0\uff1a"

    const-string v1, "\u83b7\u53d6\u6570\u636e\u65f6\u51fa\u9519"

    const-string v2, "---"

    const-string v3, "Exception"

    const-string v4, "\u4ea7\u751f\u4e86\u4f8b\u5916\uff1a"

    new-instance v5, Lcom/heepay/plugin/domain/f;

    invoke-direct {v5}, Lcom/heepay/plugin/domain/f;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "ver"

    const/4 v8, 0x1

    :try_start_0
    iget v9, p0, Lcom/heepay/plugin/b/a;->e:I

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VersionService.GetVersionInfo"

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v6, v9}, Lcom/heepay/plugin/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/heepay/plugin/domain/g;

    move-result-object v6

    iget-boolean v7, v6, Lcom/heepay/plugin/domain/g;->b:Z

    if-eqz v7, :cond_0

    invoke-virtual {v5, v8}, Lcom/heepay/plugin/domain/f;->a(Z)V

    iget-object v0, v6, Lcom/heepay/plugin/domain/g;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/heepay/plugin/domain/g;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/String;)V

    return-object v5

    :cond_0
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lcom/heepay/plugin/domain/g;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/heepay/plugin/domain/i;

    invoke-direct {v6}, Lcom/heepay/plugin/domain/i;-><init>()V

    sget-object v10, Lcom/heepay/plugin/b/e;->a:Ljava/lang/String;

    invoke-static {v7, v10, v9}, Lcom/heepay/plugin/b/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/heepay/plugin/domain/i;->a(I)V

    sget-object v10, Lcom/heepay/plugin/b/e;->b:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/heepay/plugin/b/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/heepay/plugin/domain/i;->b(Ljava/lang/String;)V

    sget-object v10, Lcom/heepay/plugin/b/e;->c:Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/heepay/plugin/b/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/heepay/plugin/domain/i;->a(Ljava/lang/String;)V

    sget-object v10, Lcom/heepay/plugin/b/e;->g:Ljava/lang/String;

    invoke-static {v7, v10, v8}, Lcom/heepay/plugin/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/heepay/plugin/domain/i;->b(I)V

    sget-object v10, Lcom/heepay/plugin/b/d;->b:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Lcom/heepay/plugin/domain/a;

    invoke-direct {v10}, Lcom/heepay/plugin/domain/a;-><init>()V

    sget-object v11, Lcom/heepay/plugin/b/d;->b:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    sget-object v12, Lcom/heepay/plugin/b/d;->c:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/heepay/plugin/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/heepay/plugin/domain/a;->a(Z)V

    sget-object v11, Lcom/heepay/plugin/b/d;->b:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    sget-object v12, Lcom/heepay/plugin/b/d;->d:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/heepay/plugin/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/heepay/plugin/domain/a;->f(Z)V

    sget-object v11, Lcom/heepay/plugin/b/d;->b:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    sget-object v12, Lcom/heepay/plugin/b/d;->e:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/heepay/plugin/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/heepay/plugin/domain/a;->d(Z)V

    sget-object v11, Lcom/heepay/plugin/b/d;->b:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    sget-object v12, Lcom/heepay/plugin/b/d;->f:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/heepay/plugin/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/heepay/plugin/domain/a;->b(Z)V

    sget-object v11, Lcom/heepay/plugin/b/d;->b:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    sget-object v12, Lcom/heepay/plugin/b/d;->g:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/heepay/plugin/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/heepay/plugin/domain/a;->c(Z)V

    sget-object v11, Lcom/heepay/plugin/b/d;->b:Ljava/lang/String;

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    sget-object v12, Lcom/heepay/plugin/b/d;->h:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/heepay/plugin/e/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/heepay/plugin/domain/a;->e(Z)V

    invoke-virtual {v6, v10}, Lcom/heepay/plugin/domain/i;->a(Lcom/heepay/plugin/domain/a;)V

    :cond_1
    sget-object v10, Lcom/heepay/plugin/b/e;->e:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/heepay/plugin/b/e;->e:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v9, v12, :cond_2

    new-instance v12, Lcom/heepay/plugin/domain/c;

    invoke-direct {v12}, Lcom/heepay/plugin/domain/c;-><init>()V

    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    sget-object v14, Lcom/heepay/plugin/b/e;->f:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/heepay/plugin/b/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/heepay/plugin/domain/c;->a(Ljava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v11}, Lcom/heepay/plugin/domain/i;->a(Ljava/util/List;)V

    :cond_3
    invoke-virtual {v5, v6}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/Object;)V

    sget-object v6, Lcom/heepay/plugin/b/e;->d:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/heepay/plugin/b/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    iput-object v6, p0, Lcom/heepay/plugin/b/a;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/heepay/plugin/b/g;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v6

    iput-object v6, p0, Lcom/heepay/plugin/b/a;->d:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_4

    const-string v6, "WebService"

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received public key: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/heepay/plugin/b/a;->c:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    return-object v5

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heepay/plugin/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "---->2--getVersionFromServer"

    invoke-static {v3, v2}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/heepay/plugin/domain/f;->a(Z)V

    invoke-virtual {v5, v6}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/Exception;)V

    invoke-virtual {v5, v1}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/heepay/plugin/domain/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/heepay/plugin/domain/f;->b(Ljava/lang/String;)V

    return-object v5

    :catch_1
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heepay/plugin/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/heepay/plugin/e/b;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "---->1--getVersionFromServer"

    invoke-static {v3, v2}, Lcom/heepay/plugin/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/heepay/plugin/domain/f;->a(Z)V

    invoke-virtual {v5, v6}, Lcom/heepay/plugin/domain/f;->a(Ljava/lang/Exception;)V

    invoke-virtual {v5, v1}, Lcom/heepay/plugin/domain/f;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/heepay/plugin/domain/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/heepay/plugin/domain/f;->b(Ljava/lang/String;)V

    return-object v5
.end method
