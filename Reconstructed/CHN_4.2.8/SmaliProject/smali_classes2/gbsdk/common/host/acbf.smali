.class public Lgbsdk/common/host/acbf;
.super Lgbsdk/common/host/abyn$ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/acbf$ab;,
        Lgbsdk/common/host/acbf$ac;
    }
.end annotation


# static fields
.field private static volatile aNu:Lgbsdk/common/host/acbf;


# instance fields
.field private final aKL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final aNv:Lgbsdk/common/host/acbf$ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/common/host/acbf$ab<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final aNw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/volcengine/zeus/service/a;",
            ">;"
        }
    .end annotation
.end field

.field private final aNx:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final ba:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final by:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lgbsdk/common/host/acbf$ac;",
            ">;"
        }
    .end annotation
.end field

.field private final eI:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 141
    invoke-direct {p0}, Lgbsdk/common/host/abyn$ab;-><init>()V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/acbf;->aKL:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/acbf;->by:Ljava/util/HashMap;

    .line 122
    new-instance v0, Lgbsdk/common/host/acbf$ab;

    invoke-direct {v0, p0}, Lgbsdk/common/host/acbf$ab;-><init>(Lgbsdk/common/host/acbf;)V

    iput-object v0, p0, Lgbsdk/common/host/acbf;->aNv:Lgbsdk/common/host/acbf$ab;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/acbf;->aNw:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/acbf;->aNx:Ljava/util/HashSet;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/acbf;->ba:Ljava/util/HashSet;

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lgbsdk/common/host/acbf;->eI:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lgbsdk/common/host/acbf;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/acbf;->d(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lgbsdk/common/host/acbf;Lgbsdk/common/host/abyx;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lgbsdk/common/host/acbf;->b(Lgbsdk/common/host/abyx;)V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Intent;Lgbsdk/common/host/abyx;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 282
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lgbsdk/common/host/acbf;->aNw:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    invoke-static {p1, p3}, Lgbsdk/common/host/acbf;->e(Landroid/content/Intent;Ljava/lang/String;)Lcom/volcengine/zeus/service/a;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 289
    monitor-exit p0

    return p1

    .line 291
    :cond_0
    :try_start_1
    iget-object v1, p0, Lgbsdk/common/host/acbf;->aNw:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_1
    iget-object p3, p0, Lgbsdk/common/host/acbf;->aNw:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/volcengine/zeus/service/a;

    .line 296
    iget-object v1, p0, Lgbsdk/common/host/acbf;->aKL:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 298
    iget-object v1, p0, Lgbsdk/common/host/acbf;->aKL:Ljava/util/HashMap;

    invoke-interface {p3, p1}, Lcom/volcengine/zeus/service/a;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_2
    iget-object p3, p0, Lgbsdk/common/host/acbf;->aKL:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/IBinder;

    if-eqz p3, :cond_4

    .line 305
    iget-object v1, p0, Lgbsdk/common/host/acbf;->by:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    iget-object v1, p0, Lgbsdk/common/host/acbf;->by:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/acbf$ac;

    invoke-virtual {v1, p2}, Lgbsdk/common/host/acbf$ac;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 308
    iget-object v1, p0, Lgbsdk/common/host/acbf;->by:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/acbf$ac;

    invoke-virtual {v1, p2}, Lgbsdk/common/host/acbf$ac;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v1, p0, Lgbsdk/common/host/acbf;->aNv:Lgbsdk/common/host/acbf$ab;

    invoke-virtual {v1, p2, p1}, Lgbsdk/common/host/acbf$ab;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-interface {p2, v0, p3}, Lgbsdk/common/host/abyx;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 316
    :cond_3
    new-instance v1, Lgbsdk/common/host/acbf$ac;

    invoke-direct {v1, p0}, Lgbsdk/common/host/acbf$ac;-><init>(Lgbsdk/common/host/acbf;)V

    .line 317
    invoke-virtual {v1, p2}, Lgbsdk/common/host/acbf$ac;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v2, p0, Lgbsdk/common/host/acbf;->by:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v1, p0, Lgbsdk/common/host/acbf;->aNv:Lgbsdk/common/host/acbf$ab;

    invoke-virtual {v1, p2, p1}, Lgbsdk/common/host/acbf$ab;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-interface {p2, v0, p3}, Lgbsdk/common/host/abyx;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 325
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lgbsdk/common/host/acbf;Landroid/content/Intent;Lgbsdk/common/host/abyx;Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lgbsdk/common/host/acbf;->a(Landroid/content/Intent;Lgbsdk/common/host/abyx;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized b(Lgbsdk/common/host/abyx;)V
    .locals 4

    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/acbf;->by:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 344
    iget-object v2, p0, Lgbsdk/common/host/acbf;->by:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/acbf$ac;

    .line 345
    invoke-virtual {v2, p1}, Lgbsdk/common/host/acbf$ac;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    invoke-virtual {v2, p1}, Lgbsdk/common/host/acbf$ac;->remove(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lgbsdk/common/host/acbf;->aNv:Lgbsdk/common/host/acbf$ab;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/acbf$ab;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 348
    invoke-virtual {v2}, Lgbsdk/common/host/acbf$ac;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lgbsdk/common/host/acbf;->by:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lgbsdk/common/host/acbf;->aNw:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/volcengine/zeus/service/a;

    if-eqz v0, :cond_1

    .line 355
    invoke-interface {v0, p1}, Lcom/volcengine/zeus/service/a;->onUnbind(Landroid/content/Intent;)Z

    .line 359
    :cond_1
    invoke-direct {p0, v1}, Lgbsdk/common/host/acbf;->b(Landroid/content/ComponentName;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    .line 363
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(Landroid/content/ComponentName;)Z
    .locals 2

    .line 233
    iget-object v0, p0, Lgbsdk/common/host/acbf;->aNx:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lgbsdk/common/host/acbf;->by:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 236
    invoke-direct {p0, p1}, Lgbsdk/common/host/acbf;->c(Landroid/content/ComponentName;)V

    return v1

    .line 241
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/acbf;->ba:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/common/host/acbf;->by:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    invoke-direct {p0, p1}, Lgbsdk/common/host/acbf;->c(Landroid/content/ComponentName;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/content/ComponentName;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lgbsdk/common/host/acbf;->aNw:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/volcengine/zeus/service/a;

    .line 253
    iget-object v1, p0, Lgbsdk/common/host/acbf;->ba:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 254
    iget-object v1, p0, Lgbsdk/common/host/acbf;->aKL:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lgbsdk/common/host/acbf;->aNx:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0}, Lcom/volcengine/zeus/service/a;->onDestroy()V

    :cond_0
    return-void
.end method

.method private declared-synchronized d(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lgbsdk/common/host/acbf;->aNw:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    invoke-static {p1, p2}, Lgbsdk/common/host/acbf;->e(Landroid/content/Intent;Ljava/lang/String;)Lcom/volcengine/zeus/service/a;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 168
    monitor-exit p0

    return-object v0

    .line 170
    :cond_0
    :try_start_1
    iget-object v1, p0, Lgbsdk/common/host/acbf;->aNw:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object p2, p0, Lgbsdk/common/host/acbf;->aNx:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    iget-object p2, p0, Lgbsdk/common/host/acbf;->aNw:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/volcengine/zeus/service/a;

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    .line 176
    invoke-interface {p2, p1, v1, v1}, Lcom/volcengine/zeus/service/a;->onStartCommand(Landroid/content/Intent;II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static e(Landroid/content/Intent;Ljava/lang/String;)Lcom/volcengine/zeus/service/a;
    .locals 0

    .line 182
    invoke-static {p0, p1}, Lgbsdk/common/host/acbf;->f(Landroid/content/Intent;Ljava/lang/String;)Lcom/volcengine/zeus/service/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 184
    invoke-interface {p0}, Lcom/volcengine/zeus/service/a;->onCreate()V

    :cond_0
    return-object p0
.end method

.method private static f(Landroid/content/Intent;Ljava/lang/String;)Lcom/volcengine/zeus/service/a;
    .locals 2

    .line 190
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 191
    invoke-static {}, Lcom/volcengine/zeus/plugin/PluginManager;->getInstance()Lcom/volcengine/zeus/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/volcengine/zeus/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/volcengine/zeus/plugin/Plugin;

    move-result-object v0

    .line 194
    :try_start_0
    invoke-static {p1}, Lcom/volcengine/zeus/Zeus;->loadPlugin(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :try_start_1
    iget-object v1, v0, Lcom/volcengine/zeus/plugin/Plugin;->mClassLoader:Lcom/volcengine/zeus/PluginClassLoader;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/volcengine/zeus/PluginClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/volcengine/zeus/service/a;

    .line 196
    invoke-interface {p0, v0}, Lcom/volcengine/zeus/service/a;->attach(Lcom/volcengine/zeus/plugin/Plugin;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 p1, 0x0

    .line 199
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "newServiceInstance failed! loadPlugin = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Zeus/service_zeus"

    invoke-static {v0, p1, p0}, Lcom/volcengine/zeus/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static hW()Lgbsdk/common/host/acbf;
    .locals 2

    .line 131
    sget-object v0, Lgbsdk/common/host/acbf;->aNu:Lgbsdk/common/host/acbf;

    if-nez v0, :cond_1

    .line 132
    const-class v0, Lgbsdk/common/host/acbf;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lgbsdk/common/host/acbf;->aNu:Lgbsdk/common/host/acbf;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Lgbsdk/common/host/acbf;

    invoke-direct {v1}, Lgbsdk/common/host/acbf;-><init>()V

    sput-object v1, Lgbsdk/common/host/acbf;->aNu:Lgbsdk/common/host/acbf;

    .line 136
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 138
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/acbf;->aNu:Lgbsdk/common/host/acbf;

    return-object v0
.end method


# virtual methods
.method public final a(Lgbsdk/common/host/abyx;)V
    .locals 2

    .line 330
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 331
    invoke-direct {p0, p1}, Lgbsdk/common/host/acbf;->b(Lgbsdk/common/host/abyx;)V

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/acbf;->eI:Landroid/os/Handler;

    new-instance v1, Lgbsdk/common/host/acbf$4;

    invoke-direct {v1, p0, p1}, Lgbsdk/common/host/acbf$4;-><init>(Lgbsdk/common/host/acbf;Lgbsdk/common/host/abyx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized a(Landroid/content/ComponentName;)Z
    .locals 1

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/acbf;->aNw:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lgbsdk/common/host/acbf;->ba:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-direct {p0, p1}, Lgbsdk/common/host/acbf;->b(Landroid/content/ComponentName;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 228
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Intent;Lgbsdk/common/host/abyx;ILjava/lang/String;)Z
    .locals 8

    .line 264
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 265
    invoke-direct {p0, p1, p2, p4}, Lgbsdk/common/host/acbf;->a(Landroid/content/Intent;Lgbsdk/common/host/abyx;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 267
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/acbf;->eI:Landroid/os/Handler;

    new-instance v7, Lgbsdk/common/host/acbf$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lgbsdk/common/host/acbf$3;-><init>(Lgbsdk/common/host/acbf;Landroid/content/Intent;Lgbsdk/common/host/abyx;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    .line 147
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 148
    invoke-direct {p0, p1, p2}, Lgbsdk/common/host/acbf;->d(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/acbf;->eI:Landroid/os/Handler;

    new-instance v1, Lgbsdk/common/host/acbf$1;

    invoke-direct {v1, p0, p1, p2}, Lgbsdk/common/host/acbf$1;-><init>(Lgbsdk/common/host/acbf;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    .line 206
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 207
    invoke-static {}, Lgbsdk/common/host/acbf;->hW()Lgbsdk/common/host/acbf;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgbsdk/common/host/acbf;->a(Landroid/content/ComponentName;)Z

    goto :goto_0

    .line 209
    :cond_0
    iget-object p2, p0, Lgbsdk/common/host/acbf;->eI:Landroid/os/Handler;

    new-instance v0, Lgbsdk/common/host/acbf$2;

    invoke-direct {v0, p0, p1}, Lgbsdk/common/host/acbf$2;-><init>(Lgbsdk/common/host/acbf;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
