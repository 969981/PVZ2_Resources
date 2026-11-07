.class public Lcom/mobile/auth/j/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mobile/auth/j/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mobile/auth/j/a;
    .locals 2

    sget-object v0, Lcom/mobile/auth/j/a;->a:Lcom/mobile/auth/j/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/j/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mobile/auth/j/a;->a:Lcom/mobile/auth/j/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/j/a;

    invoke-direct {v1}, Lcom/mobile/auth/j/a;-><init>()V

    sput-object v1, Lcom/mobile/auth/j/a;->a:Lcom/mobile/auth/j/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mobile/auth/j/a;->a:Lcom/mobile/auth/j/a;

    return-object v0
.end method

.method private a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/j/d;Lcom/cmic/sso/sdk/a;)V
    .locals 3

    new-instance v0, Lcom/mobile/auth/h/d;

    invoke-direct {v0}, Lcom/mobile/auth/h/d;-><init>()V

    new-instance v1, Lcom/mobile/auth/h/c;

    invoke-direct {v1}, Lcom/mobile/auth/h/c;-><init>()V

    new-instance v2, Lcom/mobile/auth/h/a;

    invoke-direct {v2}, Lcom/mobile/auth/h/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mobile/auth/h/d;->a(Lcom/mobile/auth/h/b;)V

    invoke-virtual {v1, v2}, Lcom/mobile/auth/h/c;->a(Lcom/mobile/auth/h/b;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/mobile/auth/j/c;->a(J)V

    new-instance v1, Lcom/mobile/auth/j/a$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/mobile/auth/j/a$1;-><init>(Lcom/mobile/auth/j/a;Lcom/mobile/auth/j/c;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/j/d;)V

    invoke-virtual {v0, p1, v1, p3}, Lcom/mobile/auth/h/d;->a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/k/c;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/j/d;)V
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "networktype"

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/mobile/auth/i/h;

    invoke-direct {v2}, Lcom/mobile/auth/i/h;-><init>()V

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/h;->b(Ljava/lang/String;)V

    const-string v3, "quick_login_android_5.9.1"

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/h;->c(Ljava/lang/String;)V

    const-string v3, "appid"

    invoke-virtual {v0, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/h;->d(Ljava/lang/String;)V

    const-string v3, "operatortype"

    invoke-virtual {v0, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/h;->e(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/h;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/l/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/h;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/l/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/h;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/l/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/h;->i(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/h;->j(Ljava/lang/String;)V

    const-string v5, "2.0"

    invoke-virtual {v2, v5}, Lcom/mobile/auth/i/h;->k(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/l/q;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mobile/auth/i/h;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/l/o;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mobile/auth/i/h;->m(Ljava/lang/String;)V

    const-string v6, "apppackage"

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mobile/auth/i/h;->o(Ljava/lang/String;)V

    const-string v6, "appsign"

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mobile/auth/i/h;->p(Ljava/lang/String;)V

    const-string v6, "AID"

    invoke-static {v6, v4}, Lcom/mobile/auth/l/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mobile/auth/i/h;->a_(Ljava/lang/String;)V

    const-string v4, "logintype"

    invoke-virtual {v0, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    const-string v4, "pre"

    :goto_0
    invoke-virtual {v2, v4}, Lcom/mobile/auth/i/h;->s(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const-string v6, "userCapaid"

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mobile/auth/i/h;->w(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_1

    const-string v4, "200"

    goto :goto_1

    :cond_1
    const-string v4, "50"

    :goto_1
    invoke-virtual {v2, v4}, Lcom/mobile/auth/i/h;->w(Ljava/lang/String;)V

    const-string v4, "authz"

    goto :goto_0

    :goto_2
    const-string v4, "scripAndTokenForHttps"

    invoke-static {v0, v4}, Lcom/mobile/auth/l/q;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/cmic/sso/sdk/a;->b()Lcom/mobile/auth/d/a;

    move-result-object v4

    const-string v6, "isCacheScrip"

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v6

    const-string v10, "defendEOF"

    const-string v11, "traceId"

    const-string v12, "POST"

    const-string v13, "/unisdk/rs/scripAndTokenForHttps"

    const-string v14, "https://"

    if-eqz v6, :cond_2

    invoke-static {v9}, Lcom/mobile/auth/l/p;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/i/h;->q(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/mobile/auth/l/p;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/i/h;->r(Ljava/lang/String;)V

    const-string v1, "phonescrip"

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/i/h;->v(Ljava/lang/String;)V

    const-string v1, "appkey"

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/i/h;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobile/auth/i/h;->n(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mobile/auth/d/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/mobile/auth/j/c;

    invoke-virtual {v0, v11}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v2, v12, v6}, Lcom/mobile/auth/j/c;-><init>(Ljava/lang/String;Lcom/mobile/auth/i/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10, v3}, Lcom/mobile/auth/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    new-instance v3, Lcom/mobile/auth/i/e;

    invoke-direct {v3}, Lcom/mobile/auth/i/e;-><init>()V

    sget-object v6, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mobile/auth/i/e;->a([B)V

    sget-object v6, Lcom/cmic/sso/sdk/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mobile/auth/i/e;->b([B)V

    invoke-virtual {v3, v2}, Lcom/mobile/auth/i/e;->a(Lcom/mobile/auth/i/a;)V

    invoke-virtual {v3, v9}, Lcom/mobile/auth/i/e;->a(Z)V

    invoke-virtual {v4}, Lcom/mobile/auth/d/a;->h()Z

    move-result v2

    const-string v6, "isCloseIpv4"

    invoke-virtual {v0, v6, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    invoke-virtual {v4}, Lcom/mobile/auth/d/a;->i()Z

    move-result v2

    const-string v6, "isCloseIpv6"

    invoke-virtual {v0, v6, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mobile/auth/d/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "use2048PublicKey"

    invoke-virtual {v0, v4, v9}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "BaseRequest"

    const-string v6, "\u4f7f\u75282\u5bf9\u5e94\u7684\u7f16\u7801"

    invoke-static {v4, v6}, Lcom/mobile/auth/l/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "2"

    invoke-virtual {v3, v4}, Lcom/mobile/auth/i/e;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/l/i;->a()Lcom/mobile/auth/l/i;

    move-result-object v4

    sget-object v6, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mobile/auth/l/i;->b([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/mobile/auth/l/i;->a()Lcom/mobile/auth/l/i;

    move-result-object v4

    sget-object v6, Lcom/cmic/sso/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mobile/auth/l/i;->a([B)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v3, v4}, Lcom/mobile/auth/i/e;->c(Ljava/lang/String;)V

    new-instance v4, Lcom/mobile/auth/j/b;

    invoke-virtual {v0, v11}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v3, v12, v6}, Lcom/mobile/auth/j/b;-><init>(Ljava/lang/String;Lcom/mobile/auth/i/e;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v4, v10, v2}, Lcom/mobile/auth/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "doNetworkSwitch"

    if-ne v1, v7, :cond_4

    invoke-virtual {v4, v8}, Lcom/mobile/auth/j/c;->a(Z)V

    invoke-virtual {v0, v2, v8}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {v4, v9}, Lcom/mobile/auth/j/c;->a(Z)V

    invoke-virtual {v0, v2, v9}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    :goto_4
    const-string v1, "interfaceVersion"

    invoke-virtual {v4, v1, v5}, Lcom/mobile/auth/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct {p0, v4, v2, v0}, Lcom/mobile/auth/j/a;->a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/j/d;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/cmic/sso/sdk/a;Lcom/mobile/auth/j/d;)V
    .locals 5

    new-instance v0, Lcom/mobile/auth/i/f;

    invoke-direct {v0}, Lcom/mobile/auth/i/f;-><init>()V

    new-instance v1, Lcom/mobile/auth/i/f$a;

    invoke-direct {v1}, Lcom/mobile/auth/i/f$a;-><init>()V

    new-instance v2, Lcom/mobile/auth/i/f$b;

    invoke-direct {v2}, Lcom/mobile/auth/i/f$b;-><init>()V

    invoke-static {}, Lcom/mobile/auth/l/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/f$b;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/mobile/auth/l/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/f$b;->f(Ljava/lang/String;)V

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/f$b;->b(Ljava/lang/String;)V

    const-string v3, "appid"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/f$b;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/mobile/auth/i/f$b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobile/auth/i/f$b;->d(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/mobile/auth/i/f$a;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/mobile/auth/i/f;->a(Lcom/mobile/auth/i/f$a;)V

    invoke-virtual {v0, v2}, Lcom/mobile/auth/i/f;->a(Lcom/mobile/auth/i/f$b;)V

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a;->b()Lcom/mobile/auth/d/a;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mobile/auth/d/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/log/logReport"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/mobile/auth/j/c;

    const-string v2, "traceId"

    invoke-virtual {p2, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v1, p1, v0, v3, v2}, Lcom/mobile/auth/j/c;-><init>(Ljava/lang/String;Lcom/mobile/auth/i/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3, p2}, Lcom/mobile/auth/j/a;->a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/j/d;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public a(ZLcom/cmic/sso/sdk/a;Lcom/mobile/auth/j/d;)V
    .locals 4

    new-instance v0, Lcom/mobile/auth/i/b;

    invoke-direct {v0}, Lcom/mobile/auth/i/b;-><init>()V

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lcom/mobile/auth/i/b;->b(Ljava/lang/String;)V

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcom/mobile/auth/i/b;->c(Ljava/lang/String;)V

    const-string v1, "AID"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/mobile/auth/l/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobile/auth/i/b;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/mobile/auth/i/b;->e(Ljava/lang/String;)V

    const-string p1, "quick_login_android_5.9.1"

    invoke-virtual {v0, p1}, Lcom/mobile/auth/i/b;->f(Ljava/lang/String;)V

    const-string p1, "appid"

    invoke-virtual {p2, p1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mobile/auth/i/b;->g(Ljava/lang/String;)V

    const-string p1, "iYm0HAnkxQtpvN44"

    invoke-virtual {v0, p1}, Lcom/mobile/auth/i/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mobile/auth/i/b;->h(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/a;->b()Lcom/mobile/auth/d/a;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mobile/auth/d/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/client/uniConfig"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/mobile/auth/j/c;

    const-string v2, "traceId"

    invoke-virtual {p2, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v1, p1, v0, v3, v2}, Lcom/mobile/auth/j/c;-><init>(Ljava/lang/String;Lcom/mobile/auth/i/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3, p2}, Lcom/mobile/auth/j/a;->a(Lcom/mobile/auth/j/c;Lcom/mobile/auth/j/d;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method
