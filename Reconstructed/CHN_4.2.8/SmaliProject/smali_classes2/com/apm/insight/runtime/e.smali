.class public Lcom/apm/insight/runtime/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/apm/insight/runtime/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONObject;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/apm/insight/runtime/e;->c:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apm/insight/runtime/e;->d:Z

    iput-object p2, p0, Lcom/apm/insight/runtime/e;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/apm/insight/runtime/e;->a(Lorg/json/JSONObject;)V

    sget-object p1, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "after update aid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abia;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apm/insight/runtime/e;

    if-eqz v0, :cond_0

    invoke-direct {v0, p1}, Lcom/apm/insight/runtime/e;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/apm/insight/runtime/e;

    invoke-direct {v0, p1, p0}, Lcom/apm/insight/runtime/e;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    iput-object p1, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const-string v0, "error_module"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "switcher"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "err_sampling_rate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/apm/insight/runtime/e;->d:Z

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->a()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lcom/apm/insight/runtime/e;
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)J
    .locals 4

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    const-wide/32 v0, 0x36ee80

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->a()Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "over_all"

    const-string v3, "get_settings_interval"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lgbsdk/common/host/abie;->b(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    nop

    :catchall_0
    :cond_0
    return-wide v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static k(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    if-nez p0, :cond_0

    const/16 p0, 0x12c

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->k()I

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->o()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0x64

    return p0
.end method

.method public static o(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apm/insight/runtime/e;

    invoke-virtual {p0}, Lcom/apm/insight/runtime/e;->p()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x2

    return p0
.end method

.method public static q()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    sget-object v2, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    invoke-static {v2}, Lgbsdk/common/host/abfk;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apm/insight/runtime/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/apm/insight/runtime/e;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/apm/insight/runtime/e;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/apm/insight/runtime/e;->h()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static r()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    sget-object v2, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    invoke-static {v2}, Lgbsdk/common/host/abfk;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apm/insight/runtime/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/apm/insight/runtime/e;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/apm/insight/runtime/e;->h()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static s()Lorg/json/JSONArray;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    sget-object v1, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    invoke-static {v1}, Lgbsdk/common/host/abfk;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apm/insight/runtime/e;

    invoke-virtual {v0}, Lcom/apm/insight/runtime/e;->l()Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static t()I
    .locals 2

    :try_start_0
    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    sget-object v1, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    invoke-static {v1}, Lgbsdk/common/host/abfk;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apm/insight/runtime/e;

    invoke-virtual {v0}, Lcom/apm/insight/runtime/e;->m()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static u()Z
    .locals 2

    :try_start_0
    sget-object v0, Lcom/apm/insight/runtime/e;->a:Ljava/util/HashMap;

    sget-object v1, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    invoke-static {v1}, Lgbsdk/common/host/abfk;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apm/insight/runtime/e;

    invoke-virtual {v0}, Lcom/apm/insight/runtime/e;->n()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/apm/insight/runtime/e;->d:Z

    return p1
.end method

.method public b()Z
    .locals 5

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "crash_module"

    const-string v4, "switcher"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c()Z
    .locals 5

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "crash_module"

    const-string v4, "switcher"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d()Z
    .locals 5

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "crash_module"

    const-string v4, "switcher"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()Z
    .locals 5

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "crash_module"

    const-string v4, "upload_alog"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f()Z
    .locals 5

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "crash_module"

    const-string v4, "apmplus_alog_rate"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public g()Z
    .locals 5

    const-string v0, "crash_optimizer_module"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const-string v4, "switcher"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v0, :cond_2

    const/4 v1, 0x1

    :catchall_0
    :cond_2
    return v1
.end method

.method public h()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method public i()Z
    .locals 5

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "crash_module"

    const-string v4, "custom_file_sampling_rate"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public j()Z
    .locals 5

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "exit_module"

    const-string v4, "switcher"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const-string v4, "exit_sampling_rate"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k()I
    .locals 4

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const/16 v1, 0x12c

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "crash_module"

    const-string v3, "alog_crash_before_time"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public l()Lorg/json/JSONArray;
    .locals 3

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "protector_module"

    const-string v2, "metas"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 4

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x5

    const-string v2, "protector_module"

    const-string v3, "max_portrait_count_per_proc"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 4

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "protector_module"

    const-string v3, "switcher"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public o()I
    .locals 4

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const/16 v1, 0x64

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "error_module"

    const-string v3, "all_limit"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 4

    iget-object v0, p0, Lcom/apm/insight/runtime/e;->b:Lorg/json/JSONObject;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "error_module"

    const-string v3, "stack_limit"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgbsdk/common/host/abie;->a(Lorg/json/JSONObject;I[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
