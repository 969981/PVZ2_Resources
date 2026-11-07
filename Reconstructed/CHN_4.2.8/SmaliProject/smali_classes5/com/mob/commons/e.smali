.class public final Lcom/mob/commons/e;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/Boolean;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Z

.field private static e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/mob/commons/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mob/commons/e;->e:Ljava/util/HashSet;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/mob/commons/b/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/mob/commons/e;

    monitor-enter v0

    .line 62
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/e;->b(Lcom/mob/commons/MobProduct;)Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 64
    sget-object v1, Lcom/mob/tools/network/NetCommunicator;->KEY_DUID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 66
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()Z
    .locals 1

    .line 30
    invoke-static {}, Lcom/mob/commons/b;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 18
    sput-boolean p0, Lcom/mob/commons/e;->d:Z

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Lcom/mob/commons/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    sget-object v0, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {}, Lcom/mob/commons/e;->d()Lcom/mob/commons/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/e;->a:Ljava/lang/String;

    .line 50
    :cond_1
    sget-object v0, Lcom/mob/commons/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized b(Lcom/mob/commons/MobProduct;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/MobProduct;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mob/commons/e;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/u;->a(Lcom/mob/commons/MobProduct;)V

    .line 82
    sget-object v3, Lcom/mob/commons/e;->e:Ljava/util/HashSet;

    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_1

    .line 84
    sget-object v4, Lcom/mob/commons/e;->e:Ljava/util/HashSet;

    invoke-interface {p0}, Lcom/mob/commons/MobProduct;->getProductTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v3, v1

    .line 87
    :cond_1
    :goto_0
    sget-object v4, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    invoke-static {}, Lcom/mob/commons/e;->d()Lcom/mob/commons/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/commons/a;->b()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mob/commons/e;->a:Ljava/lang/String;

    move v3, v2

    :cond_2
    if-nez v3, :cond_3

    .line 92
    sget-boolean v3, Lcom/mob/commons/e;->d:Z

    if-nez v3, :cond_4

    .line 93
    :cond_3
    sput-boolean v2, Lcom/mob/commons/e;->d:Z

    .line 94
    sget-object v3, Lcom/mob/commons/t;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/mob/commons/e$1;

    invoke-direct {v4, p0}, Lcom/mob/commons/e$1;-><init>(Lcom/mob/commons/MobProduct;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 126
    :cond_4
    sget-object p0, Lcom/mob/commons/e;->b:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    .line 127
    invoke-static {}, Lcom/mob/commons/v;->a()Lcom/mob/commons/v;

    move-result-object p0

    const-string v3, "key_curr_passed_duid"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/mob/commons/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 128
    sput-object p0, Lcom/mob/commons/e;->c:Ljava/lang/String;

    .line 129
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 130
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/mob/commons/e;->b:Ljava/lang/Boolean;

    goto :goto_1

    .line 132
    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/mob/commons/e;->b:Ljava/lang/Boolean;

    .line 135
    :cond_6
    :goto_1
    invoke-static {}, Lcom/mob/commons/v;->a()Lcom/mob/commons/v;

    move-result-object p0

    const-string v1, "key_curr_passed_duid"

    sget-object v2, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/mob/commons/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 137
    sget-object v1, Lcom/mob/tools/network/NetCommunicator;->KEY_DUID:Ljava/lang/String;

    sget-object v2, Lcom/mob/commons/e;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "isModified"

    sget-object v2, Lcom/mob/commons/e;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "duidPrevious"

    sget-object v2, Lcom/mob/commons/e;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic c()Lcom/mob/commons/a;
    .locals 1

    .line 18
    invoke-static {}, Lcom/mob/commons/e;->d()Lcom/mob/commons/a;

    move-result-object v0

    return-object v0
.end method

.method private static d()Lcom/mob/commons/a;
    .locals 1

    .line 144
    sget-object v0, Lcom/mob/commons/e;->f:Lcom/mob/commons/a;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/mob/commons/a;

    invoke-direct {v0}, Lcom/mob/commons/a;-><init>()V

    sput-object v0, Lcom/mob/commons/e;->f:Lcom/mob/commons/a;

    .line 147
    :cond_0
    sget-object v0, Lcom/mob/commons/e;->f:Lcom/mob/commons/a;

    return-object v0
.end method
