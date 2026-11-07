.class public Lgbsdk/common/host/ap;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/ap$ad;,
        Lgbsdk/common/host/ap$ac;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Ljava/util/Comparator<",
        "Lgbsdk/common/host/aban;",
        ">;"
    }
.end annotation


# static fields
.field public static ao:Landroid/os/HandlerThread;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public a:Z

.field public aA:Lgbsdk/common/host/ao;

.field public volatile aB:Lgbsdk/common/host/ar;

.field public aC:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lgbsdk/common/host/ao;",
            ">;"
        }
    .end annotation
.end field

.field public volatile aD:Lgbsdk/common/host/ax;

.field public ap:Landroid/app/Application;

.field public aq:Lgbsdk/common/host/abbk;

.field public volatile ar:Lgbsdk/common/host/abah;

.field public as:Lgbsdk/common/host/abbf;

.field public volatile at:Landroid/os/Handler;

.field public au:Lgbsdk/common/host/as;

.field public av:Lgbsdk/common/host/at;

.field public aw:Lgbsdk/common/host/av;

.field public ax:Lcom/apm/applog/UriConfig;

.field public ay:Landroid/os/Handler;

.field public az:J

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/aban;",
            ">;"
        }
    .end annotation
.end field

.field public volatile n:Z

.field public volatile r:Z

.field public volatile s:J

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/ap$ac;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Lgbsdk/common/host/abbk;Lgbsdk/common/host/abbf;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ap;->aC:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/ap;->t:Ljava/util/List;

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lgbsdk/common/host/ap;->v:Z

    .line 188
    iput-object p1, p0, Lgbsdk/common/host/ap;->ap:Landroid/app/Application;

    .line 189
    iput-object p2, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 190
    iput-object p3, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 191
    new-instance p1, Lgbsdk/common/host/av;

    invoke-direct {p1, p0}, Lgbsdk/common/host/av;-><init>(Lgbsdk/common/host/ap;)V

    iput-object p1, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    .line 194
    sget-object p1, Lgbsdk/common/host/ap;->ao:Landroid/os/HandlerThread;

    if-nez p1, :cond_1

    .line 195
    const-class p1, Lgbsdk/common/host/ap;

    monitor-enter p1

    .line 196
    :try_start_0
    sget-object p2, Lgbsdk/common/host/ap;->ao:Landroid/os/HandlerThread;

    if-nez p2, :cond_0

    .line 197
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "bd_tracker_w"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 199
    sput-object p2, Lgbsdk/common/host/ap;->ao:Landroid/os/HandlerThread;

    .line 202
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 204
    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lgbsdk/common/host/ap;->ao:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    .line 218
    iget-object p2, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 219
    iget-object p3, p2, Lgbsdk/common/host/abbf;->bf:Lgbsdk/common/host/abar;

    check-cast p3, Lgbsdk/common/host/abaw;

    .line 220
    iget-object p3, p3, Lgbsdk/common/host/abaw;->bS:Lgbsdk/common/host/abai;

    invoke-virtual {p3, p1}, Lgbsdk/common/host/abai;->a(Landroid/os/Handler;)V

    .line 221
    invoke-static {}, Lcom/apm/applog/AppLog;->isOAIdEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 223
    iget-object p1, p2, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    .line 224
    sget-object p2, Lgbsdk/common/host/abec;->ce:Lgbsdk/common/host/abdj;

    new-array p3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    invoke-virtual {p2, p3}, Lgbsdk/common/host/abdj;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/abds;

    invoke-virtual {p1}, Lgbsdk/common/host/abds;->a()V

    .line 225
    :cond_2
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 226
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->isClearDidAndIid()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 227
    iget-object p1, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    iget-object p2, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 228
    iget-object p2, p2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {p2}, Lcom/apm/applog/InitConfig;->getClearKey()Ljava/lang/String;

    move-result-object p2

    .line 229
    iget-object p3, p1, Lgbsdk/common/host/abbf;->bf:Lgbsdk/common/host/abar;

    instance-of v1, p3, Lgbsdk/common/host/abaw;

    if-eqz v1, :cond_3

    .line 230
    check-cast p3, Lgbsdk/common/host/abaw;

    iget-object v1, p1, Lgbsdk/common/host/abbf;->b:Landroid/content/Context;

    invoke-virtual {p3, v1, p2}, Lgbsdk/common/host/abaw;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    :cond_3
    iget-object p1, p1, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    .line 233
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    .line 234
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "device_token"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    :cond_4
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 236
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 237
    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->getIpcDataChecker()Lcom/apm/applog/InitConfig$a;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 238
    invoke-virtual {p1}, Lgbsdk/common/host/abbk;->k()Z

    move-result p1

    if-nez p1, :cond_5

    .line 239
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 240
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 241
    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->getIpcDataChecker()Lcom/apm/applog/InitConfig$a;

    .line 244
    :cond_5
    iget-object p1, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 247
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->autoStart()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 248
    iput-boolean v0, p0, Lgbsdk/common/host/ap;->n:Z

    .line 249
    iget-object p1, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    :cond_6
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 252
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 253
    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->isFixPageView()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 254
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lgbsdk/common/host/ap$ab;

    invoke-direct {p2, p0}, Lgbsdk/common/host/ap$ab;-><init>(Lgbsdk/common/host/ap;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public static synthetic a(Lgbsdk/common/host/ap;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "8f89c73fa53354beab61c68ca6d3e9eb"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lgbsdk/common/host/ap;->F()V

    return-void
.end method

.method public static synthetic b(Lgbsdk/common/host/ap;)Lgbsdk/common/host/abad;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "d3fe87454365412ddf165b10ef5478ec"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/common/host/abad;

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lgbsdk/common/host/ap;->G()Lgbsdk/common/host/abad;

    move-result-object p0

    return-object p0
.end method

.method public static f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public D()Lgbsdk/common/host/abah;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2b97f459fc3a0d735b1f31150672f5fa"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abah;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ap;->ar:Lgbsdk/common/host/abah;

    if-nez v0, :cond_2

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/ap;->ar:Lgbsdk/common/host/abah;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lgbsdk/common/host/abah;

    .line 7
    iget-object v1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 8
    iget-object v1, v1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 9
    invoke-virtual {v1}, Lcom/apm/applog/InitConfig;->getDbName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgbsdk/common/host/abah;-><init>(Lgbsdk/common/host/ap;Ljava/lang/String;)V

    .line 11
    :cond_1
    iput-object v0, p0, Lgbsdk/common/host/ap;->ar:Lgbsdk/common/host/abah;

    .line 12
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lgbsdk/common/host/ap;->ar:Lgbsdk/common/host/abah;

    return-object v0
.end method

.method public E()Lcom/apm/applog/UriConfig;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2b5aca3576b3806a7499e0e6d50fb934"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/apm/applog/UriConfig;

    return-object v0

    .line 1
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ap;->ax:Lcom/apm/applog/UriConfig;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 3
    iget-object v0, v0, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 4
    invoke-virtual {v0}, Lcom/apm/applog/InitConfig;->getUriConfig()Lcom/apm/applog/UriConfig;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/ap;->ax:Lcom/apm/applog/UriConfig;

    if-nez v0, :cond_1

    .line 6
    sget v0, Lgbsdk/common/host/abdm;->a:I

    .line 7
    sget-object v0, Lgbsdk/common/host/abdm;->cd:Lcom/apm/applog/UriConfig;

    .line 8
    iput-object v0, p0, Lgbsdk/common/host/ap;->ax:Lcom/apm/applog/UriConfig;

    .line 11
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/ap;->ax:Lcom/apm/applog/UriConfig;

    return-object v0
.end method

.method public final F()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bbe69839ab88d58af8f67b8d6684b79e"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lgbsdk/common/host/abaf;

    invoke-direct {v0}, Lgbsdk/common/host/abaf;-><init>()V

    const-string v1, "init"

    .line 2
    iput-object v1, v0, Lgbsdk/common/host/abaf;->n:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lgbsdk/common/host/aban;->a(J)V

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, v0, Lgbsdk/common/host/abaf;->bP:J

    const-string v1, ""

    .line 5
    iput-object v1, v0, Lgbsdk/common/host/abaf;->m:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Lgbsdk/common/host/ap;->b(Lgbsdk/common/host/aban;)V

    return-void
.end method

.method public final G()Lgbsdk/common/host/abad;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "fca34ff5593e0168328396a6e09929f4"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abad;

    return-object v0

    .line 226
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    invoke-virtual {v1}, Lgbsdk/common/host/abbf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 228
    iget-object v2, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    invoke-virtual {v2}, Lgbsdk/common/host/av;->c()V

    .line 229
    new-instance v2, Lgbsdk/common/host/abad;

    invoke-direct {v2}, Lgbsdk/common/host/abad;-><init>()V

    .line 230
    iget-object v3, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    .line 231
    iget-object v3, v3, Lgbsdk/common/host/av;->e:Ljava/lang/String;

    .line 232
    iput-object v3, v2, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    const-wide/16 v3, 0x2711

    .line 233
    iput-wide v3, v2, Lgbsdk/common/host/aban;->c:J

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lgbsdk/common/host/aban;->a(J)V

    .line 235
    iget-object v3, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    invoke-virtual {v3}, Lgbsdk/common/host/abbf;->i()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgbsdk/common/host/abad;->m:Ljava/lang/String;

    .line 236
    iget-object v3, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    invoke-virtual {v3}, Lgbsdk/common/host/abbf;->H()I

    move-result v3

    iput v3, v2, Lgbsdk/common/host/abad;->bd:I

    .line 237
    sget-wide v3, Lgbsdk/common/host/av;->aN:J

    iput-wide v3, v2, Lgbsdk/common/host/aban;->bw:J

    .line 238
    invoke-virtual {v1}, Lcom/apm/applog/AppLog;->getUserUniqueID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgbsdk/common/host/aban;->f:Ljava/lang/String;

    .line 239
    invoke-virtual {v1}, Lcom/apm/applog/AppLog;->getSsid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgbsdk/common/host/aban;->g:Ljava/lang/String;

    .line 240
    invoke-virtual {v1}, Lcom/apm/applog/AppLog;->getAbSdkVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lgbsdk/common/host/aban;->h:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v1}, Lgbsdk/common/host/abbk;->x()I

    .line 245
    iput v0, v2, Lgbsdk/common/host/abad;->p:I

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine create Launch sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lgbsdk/common/host/aban;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "dc54a31239f3c3d8a47a0957bab51840"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ap;->aB:Lgbsdk/common/host/ar;

    .line 16
    instance-of v1, p1, Lgbsdk/common/host/abae;

    if-nez v1, :cond_1

    instance-of v1, p1, Lgbsdk/common/host/abaa;

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p1}, Lgbsdk/common/host/aban;->f()Lorg/json/JSONObject;

    move-result-object p1

    .line 18
    iget-object v0, v0, Lgbsdk/common/host/ar;->f:Ljava/lang/String;

    .line 19
    invoke-static {p0, p1, v0}, Lgbsdk/common/host/aj;->a(Lgbsdk/common/host/ap;Lorg/json/JSONObject;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public final a(Lgbsdk/common/host/ao;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c02123cc65963510c80385e7a168ac48"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 174
    invoke-virtual {p1}, Lgbsdk/common/host/ao;->C()Lgbsdk/common/host/ao;

    .line 175
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 176
    invoke-virtual {p1}, Lgbsdk/common/host/ao;->a()J

    goto :goto_0

    .line 178
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "a8b07108f16d79484556ec9130d4e955"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    invoke-virtual {v1}, Lgbsdk/common/host/abbf;->I()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 206
    :cond_2
    iget-object v1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 207
    invoke-static {}, Lgbsdk/common/host/am;->A()Lgbsdk/common/host/abaf;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 209
    invoke-virtual {v1}, Lgbsdk/common/host/aban;->K()Lgbsdk/common/host/aban;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abaf;

    .line 211
    :cond_3
    iget-object v3, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object v1, v4, v0

    const/16 p1, 0xc

    invoke-virtual {v3, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 212
    iget-object v2, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v1, :cond_4

    .line 213
    iget-object p1, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    .line 214
    iget-object p1, p1, Lgbsdk/common/host/av;->m:Ljava/lang/String;

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 216
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 218
    :cond_4
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 221
    :cond_5
    iget-object v0, p0, Lgbsdk/common/host/ap;->t:Ljava/util/List;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/ap;->t:Ljava/util/List;

    new-instance v2, Lgbsdk/common/host/ap$ad;

    invoke-direct {v2, p0, p1}, Lgbsdk/common/host/ap$ad;-><init>(Lgbsdk/common/host/ap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "80b569f4fb3ab7bb35d372dbea38efa3"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_1

    nop

    :cond_1
    return-void
.end method

.method public a(ZLandroid/content/Context;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object v1, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a7e0e0aa2ed4eaadc08cde87b2310e2f"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lgbsdk/common/host/abap;->bW:Lgbsdk/common/host/abdp;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1, p2}, Lgbsdk/common/host/abdp;->a(ZLandroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-string p2, "can\'t find ET, should compile with ET"

    .line 3
    invoke-static {p2, p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a([Ljava/lang/String;Z)V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "c9d4078c18d4f8796c44364abe10e92a"

    invoke-static {v0, p0, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v2, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 29
    iget-object v4, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, p1

    add-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 34
    array-length v0, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, p1, v4

    .line 35
    invoke-static {v5}, Lgbsdk/common/host/aban;->r(Ljava/lang/String;)Lgbsdk/common/host/aban;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 37
    :cond_2
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 38
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 39
    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->isEventFilterEnable()Z

    move-result p1

    .line 40
    iget-object v0, p0, Lgbsdk/common/host/ap;->aD:Lgbsdk/common/host/ax;

    .line 41
    sget-object v4, Lcom/apm/applog/AppLog;->sEventFilterFromClient:Lgbsdk/common/host/ax;

    if-eqz p1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    if-nez v4, :cond_4

    goto :goto_2

    .line 45
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 46
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgbsdk/common/host/aban;

    .line 48
    instance-of v6, v5, Lgbsdk/common/host/abae;

    if-eqz v6, :cond_8

    .line 49
    check-cast v5, Lgbsdk/common/host/abae;

    .line 50
    iget-object v6, v5, Lgbsdk/common/host/abae;->n:Ljava/lang/String;

    .line 51
    invoke-virtual {v5}, Lgbsdk/common/host/abae;->y()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_6

    .line 52
    invoke-virtual {v4, v6, v5}, Lgbsdk/common/host/ax;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    if-eqz v0, :cond_5

    .line 53
    invoke-virtual {v0, v6, v5}, Lgbsdk/common/host/ax;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 54
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 56
    :cond_8
    instance-of v6, v5, Lgbsdk/common/host/abak;

    if-eqz v6, :cond_5

    .line 57
    check-cast v5, Lgbsdk/common/host/abak;

    if-eqz v4, :cond_5

    .line 58
    iget-object v6, v5, Lgbsdk/common/host/abak;->m:Ljava/lang/String;

    iget-object v5, v5, Lgbsdk/common/host/abak;->o:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lgbsdk/common/host/ax;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 60
    :cond_9
    :goto_2
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {p1, v2}, Lgbsdk/common/host/abbk;->a(Ljava/util/ArrayList;)Z

    move-result p1

    .line 62
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 63
    iget-object v0, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v0}, Lgbsdk/common/host/abbk;->k()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-nez p1, :cond_b

    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_a

    goto :goto_4

    .line 73
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/aban;

    .line 74
    invoke-virtual {p0, v0}, Lgbsdk/common/host/ap;->b(Lgbsdk/common/host/aban;)V

    goto :goto_3

    .line 75
    :cond_b
    :goto_4
    invoke-static {}, Lgbsdk/common/host/abap;->a()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 76
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/aban;

    .line 77
    instance-of v4, v0, Lgbsdk/common/host/abak;

    if-eqz v4, :cond_d

    const-string v4, "event"

    goto :goto_6

    .line 79
    :cond_d
    instance-of v4, v0, Lgbsdk/common/host/abae;

    if-eqz v4, :cond_e

    const-string v4, "event_v3"

    goto :goto_6

    .line 81
    :cond_e
    instance-of v4, v0, Lgbsdk/common/host/abaj;

    if-eqz v4, :cond_f

    const-string v4, "log_data"

    goto :goto_6

    .line 83
    :cond_f
    instance-of v4, v0, Lgbsdk/common/host/abad;

    if-eqz v4, :cond_10

    const-string v4, "launch"

    goto :goto_6

    .line 85
    :cond_10
    instance-of v4, v0, Lgbsdk/common/host/abab;

    if-eqz v4, :cond_11

    const-string v4, "terminate"

    goto :goto_6

    :cond_11
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_c

    .line 86
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 87
    invoke-virtual {v0}, Lgbsdk/common/host/aban;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 88
    invoke-static {v4, v5}, Lgbsdk/common/host/abap;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_5

    .line 89
    :cond_12
    invoke-static {v2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgbsdk/common/host/aban;

    .line 95
    iget-object v7, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    invoke-virtual {v7, v6, p1}, Lgbsdk/common/host/av;->a(Lgbsdk/common/host/aban;Ljava/util/ArrayList;)Z

    move-result v7

    or-int/2addr v2, v7

    .line 96
    instance-of v7, v6, Lgbsdk/common/host/abaf;

    if-eqz v7, :cond_13

    .line 98
    invoke-static {v6}, Lgbsdk/common/host/av;->c(Lgbsdk/common/host/aban;)Z

    move-result v5

    const/4 v4, 0x1

    .line 100
    :cond_13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_14

    .line 101
    iget-object v7, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    .line 103
    :cond_14
    invoke-virtual {p0, v6}, Lgbsdk/common/host/ap;->a(Lgbsdk/common/host/aban;)V

    goto :goto_7

    .line 104
    :cond_15
    invoke-virtual {p0}, Lgbsdk/common/host/ap;->E()Lcom/apm/applog/UriConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/applog/UriConfig;->getRealUris()[Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v3, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    if-eqz v3, :cond_16

    if-eqz v0, :cond_16

    array-length v0, v0

    if-lez v0, :cond_16

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lgbsdk/common/host/ap;->az:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xdbba0

    cmp-long v0, v6, v8

    if-lez v0, :cond_16

    .line 107
    iget-object v0, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abbk;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 109
    iget-object v3, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v3, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    :cond_16
    invoke-virtual {p0}, Lgbsdk/common/host/ap;->D()Lgbsdk/common/host/abah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgbsdk/common/host/abah;->d(Ljava/util/ArrayList;)V

    if-eqz v4, :cond_18

    const/4 p1, 0x7

    if-eqz v5, :cond_17

    .line 115
    iget-object v0, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_8

    .line 118
    :cond_17
    iget-object v0, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    iget-object v3, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v3}, Lgbsdk/common/host/abbk;->h()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_18
    :goto_8
    if-eqz v2, :cond_19

    .line 123
    iget-object p1, p0, Lgbsdk/common/host/ap;->av:Lgbsdk/common/host/at;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/ap;->a(Lgbsdk/common/host/ao;)V

    .line 124
    :cond_19
    iget-boolean p1, p0, Lgbsdk/common/host/ap;->a:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    .line 125
    iget-boolean p1, p1, Lgbsdk/common/host/av;->i:Z

    if-eqz p1, :cond_1a

    .line 126
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 127
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 128
    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->isAutoActive()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 129
    invoke-virtual {p0, v1}, Lgbsdk/common/host/ap;->a(Z)Z

    :cond_1a
    if-eqz p2, :cond_1b

    .line 167
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {p1}, Lgbsdk/common/host/abbk;->k()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 169
    iget-wide v0, p0, Lgbsdk/common/host/ap;->s:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_1b

    .line 170
    iput-wide p1, p0, Lgbsdk/common/host/ap;->s:J

    .line 171
    iget-object p1, p0, Lgbsdk/common/host/ap;->av:Lgbsdk/common/host/at;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/ap;->a(Lgbsdk/common/host/ao;)V

    :cond_1b
    return-void

    :catchall_0
    move-exception p1

    .line 172
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/aban;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "3427ff9a76691bfbef669db1a69e398f"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    invoke-virtual {v1}, Lgbsdk/common/host/abbf;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lgbsdk/common/host/ak;->a(Lgbsdk/common/host/ap;Lorg/json/JSONObject;Z)[Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    invoke-virtual {v3}, Lgbsdk/common/host/abbf;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lgbsdk/common/host/abdh;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 7
    array-length v4, v1

    if-lez v4, :cond_2

    .line 8
    invoke-static {p1, v3}, Lgbsdk/common/host/abag;->a(Ljava/util/ArrayList;Lorg/json/JSONObject;)[B

    move-result-object p1

    iget-object v3, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    invoke-static {v1, p1, v3}, Lgbsdk/common/host/aj;->a([Ljava/lang/String;[BLgbsdk/common/host/abbk;)I

    move-result p1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_1

    .line 10
    invoke-static {p1}, Lgbsdk/common/host/aj;->g(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/common/host/ap;->az:J

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Lgbsdk/common/host/ap;->az:J

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 18
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRealTime, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    return v0
.end method

.method public a(Z)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "a7dea8af1fec1995fed8ab2e23b434bf"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 19
    :cond_0
    iget-boolean v1, p0, Lgbsdk/common/host/ap;->a:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    .line 20
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 21
    iput-boolean v0, p0, Lgbsdk/common/host/ap;->a:Z

    .line 22
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 26
    :cond_2
    iget-boolean p1, p0, Lgbsdk/common/host/ap;->a:Z

    return p1
.end method

.method public b(Lgbsdk/common/host/aban;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "96ab59a1aab86f46c0cf32a28967eb11"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 180
    :cond_1
    iget-wide v0, p1, Lgbsdk/common/host/aban;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 v0, 0x0

    .line 181
    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 189
    :cond_2
    iget-object v0, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 191
    iget-object v2, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    instance-of p1, p1, Lgbsdk/common/host/abaf;

    .line 194
    rem-int/lit8 v0, v1, 0xa

    if-eqz v0, :cond_3

    if-eqz p1, :cond_6

    .line 195
    :cond_3
    iget-object v0, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_5

    if-eqz v1, :cond_4

    goto :goto_0

    .line 199
    :cond_4
    iget-object p1, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 200
    :cond_5
    :goto_0
    iget-object p1, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 201
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "6a5a12f6923d87e2014ca14e845dfb29"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_1

    nop

    :cond_1
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lgbsdk/common/host/aban;

    check-cast p2, Lgbsdk/common/host/aban;

    .line 2
    iget-wide v0, p1, Lgbsdk/common/host/aban;->b:J

    iget-wide p1, p2, Lgbsdk/common/host/aban;->b:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "25fc09689007a3e60ef370a91476cb91"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_1

    nop

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "818d29bdd9bec8b079369ad6ee5d9c56"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 1
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    .line 156
    :pswitch_0
    invoke-static {v6}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 157
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgbsdk/common/host/aban;

    .line 158
    invoke-virtual {p0, p1}, Lgbsdk/common/host/ap;->a(Lgbsdk/common/host/aban;)V

    goto/16 :goto_b

    .line 159
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 160
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lgbsdk/common/host/ap;->aB:Lgbsdk/common/host/ar;

    if-nez v1, :cond_22

    .line 162
    new-instance v1, Lgbsdk/common/host/ar;

    invoke-direct {v1, p0, p1}, Lgbsdk/common/host/ar;-><init>(Lgbsdk/common/host/ap;Ljava/lang/String;)V

    iput-object v1, p0, Lgbsdk/common/host/ap;->aB:Lgbsdk/common/host/ar;

    .line 163
    iget-object p1, p0, Lgbsdk/common/host/ap;->aC:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lgbsdk/common/host/ap;->aB:Lgbsdk/common/host/ar;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 168
    :cond_1
    iget-object p1, p0, Lgbsdk/common/host/ap;->aB:Lgbsdk/common/host/ar;

    if-eqz p1, :cond_22

    .line 169
    iget-object p1, p0, Lgbsdk/common/host/ap;->aB:Lgbsdk/common/host/ar;

    .line 170
    iput-boolean v0, p1, Lgbsdk/common/host/ao;->e:Z

    .line 171
    iget-object p1, p0, Lgbsdk/common/host/ap;->aC:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lgbsdk/common/host/ap;->aB:Lgbsdk/common/host/ar;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    iput-object v6, p0, Lgbsdk/common/host/ap;->aB:Lgbsdk/common/host/ar;

    goto/16 :goto_b

    .line 173
    :pswitch_3
    invoke-virtual {p0, v6, v0}, Lgbsdk/common/host/ap;->a([Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 174
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 175
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/String;

    aget-object p1, p1, v0

    check-cast p1, Lgbsdk/common/host/abaf;

    .line 176
    iget-object v5, p0, Lgbsdk/common/host/ap;->av:Lgbsdk/common/host/at;

    invoke-virtual {p0, v5}, Lgbsdk/common/host/ap;->a(Lgbsdk/common/host/ao;)V

    if-nez p1, :cond_2

    .line 179
    invoke-static {}, Lgbsdk/common/host/am;->A()Lgbsdk/common/host/abaf;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 181
    invoke-virtual {p1}, Lgbsdk/common/host/aban;->K()Lgbsdk/common/host/aban;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/abaf;

    .line 185
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz p1, :cond_4

    .line 188
    iget-wide v8, p1, Lgbsdk/common/host/aban;->b:J

    sub-long v8, v6, v8

    .line 189
    invoke-virtual {p1, v6, v7}, Lgbsdk/common/host/aban;->a(J)V

    cmp-long v10, v8, v3

    if-ltz v10, :cond_3

    move-wide v3, v8

    .line 190
    :cond_3
    iput-wide v3, p1, Lgbsdk/common/host/abaf;->bP:J

    .line 191
    iget-object v3, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    .line 192
    iget-object v3, v3, Lgbsdk/common/host/av;->m:Ljava/lang/String;

    .line 193
    iput-object v3, p1, Lgbsdk/common/host/abaf;->p:Ljava/lang/String;

    .line 194
    iget-object v3, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    invoke-virtual {v3, p1}, Lgbsdk/common/host/av;->b(Lgbsdk/common/host/aban;)V

    .line 195
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_4
    iget-object v3, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    const-string v4, "user_unique_id"

    .line 197
    invoke-virtual {v3, v4, v1}, Lgbsdk/common/host/abbf;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 198
    iget-object v2, v3, Lgbsdk/common/host/abbf;->aq:Lgbsdk/common/host/abbk;

    .line 199
    iget-object v2, v2, Lgbsdk/common/host/abbk;->aX:Landroid/content/SharedPreferences;

    const-string v3, "user_unique_id"

    invoke-static {v2, v3, v1}, Lgbsdk/common/host/ab;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 200
    iget-object v1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v1}, Lgbsdk/common/host/abbk;->l()V

    .line 202
    :cond_6
    iput-boolean v0, p0, Lgbsdk/common/host/ap;->r:Z

    .line 203
    iget-object v1, p0, Lgbsdk/common/host/ap;->au:Lgbsdk/common/host/as;

    invoke-virtual {p0, v1}, Lgbsdk/common/host/ap;->a(Lgbsdk/common/host/ao;)V

    .line 204
    invoke-virtual {p0, v0}, Lgbsdk/common/host/ap;->a(Z)Z

    :cond_7
    if-eqz p1, :cond_8

    .line 205
    invoke-virtual {p1}, Lgbsdk/common/host/aban;->K()Lgbsdk/common/host/aban;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/abaf;

    const-wide/16 v1, 0x1

    add-long/2addr v6, v1

    .line 206
    invoke-virtual {p1, v6, v7}, Lgbsdk/common/host/aban;->a(J)V

    const-wide/16 v1, -0x1

    .line 207
    iput-wide v1, p1, Lgbsdk/common/host/abaf;->bP:J

    .line 208
    iget-object v1, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    invoke-virtual {v1, p1, v5, v0}, Lgbsdk/common/host/av;->a(Lgbsdk/common/host/aban;Ljava/util/ArrayList;Z)Lgbsdk/common/host/abad;

    move-result-object v1

    .line 209
    iget-object v2, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    .line 210
    iget-object v2, v2, Lgbsdk/common/host/av;->m:Ljava/lang/String;

    .line 211
    iput-object v2, v1, Lgbsdk/common/host/abad;->o:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    invoke-virtual {v1, p1}, Lgbsdk/common/host/av;->b(Lgbsdk/common/host/aban;)V

    .line 213
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 217
    invoke-virtual {p0}, Lgbsdk/common/host/ap;->D()Lgbsdk/common/host/abah;

    move-result-object p1

    invoke-virtual {p1, v5}, Lgbsdk/common/host/abah;->d(Ljava/util/ArrayList;)V

    .line 220
    :cond_9
    iget-object p1, p0, Lgbsdk/common/host/ap;->av:Lgbsdk/common/host/at;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/ap;->a(Lgbsdk/common/host/ao;)V

    goto/16 :goto_b

    .line 221
    :pswitch_5
    iget-object p1, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    monitor-enter p1

    .line 222
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Lgbsdk/common/host/abbp;->b(Ljava/util/ArrayList;)I

    .line 223
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    sget-object p1, Lgbsdk/common/host/abbp;->aT:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 227
    new-array v6, p1, [Ljava/lang/String;

    .line 228
    sget-object p1, Lgbsdk/common/host/abbp;->aT:Ljava/util/LinkedList;

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 229
    sget-object p1, Lgbsdk/common/host/abbp;->aT:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 230
    :cond_a
    invoke-virtual {p0, v6, v2}, Lgbsdk/common/host/ap;->a([Ljava/lang/String;Z)V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    .line 231
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 232
    :pswitch_6
    iget-object p1, p0, Lgbsdk/common/host/ap;->aA:Lgbsdk/common/host/ao;

    .line 233
    iget-boolean v1, p1, Lgbsdk/common/host/ao;->e:Z

    if-nez v1, :cond_22

    .line 234
    invoke-virtual {p1}, Lgbsdk/common/host/ao;->a()J

    move-result-wide v1

    .line 235
    iget-boolean p1, p1, Lgbsdk/common/host/ao;->e:Z

    if-nez p1, :cond_22

    .line 236
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_b

    .line 259
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 260
    invoke-virtual {p0, p1}, Lgbsdk/common/host/ap;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 261
    invoke-virtual {p0}, Lgbsdk/common/host/ap;->D()Lgbsdk/common/host/abah;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgbsdk/common/host/abah;->d(Ljava/util/ArrayList;)V

    goto/16 :goto_b

    .line 262
    :pswitch_8
    iget-object p1, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    monitor-enter p1

    .line 263
    :try_start_2
    iget-object v1, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    .line 264
    sget-object v5, Lgbsdk/common/host/av;->aO:Lgbsdk/common/host/av$ac;

    if-nez v5, :cond_b

    .line 265
    new-instance v5, Lgbsdk/common/host/av$ac;

    invoke-direct {v5, v6}, Lgbsdk/common/host/av$ac;-><init>(Lgbsdk/common/host/av$ab;)V

    sput-object v5, Lgbsdk/common/host/av;->aO:Lgbsdk/common/host/av$ac;

    .line 267
    :cond_b
    sget-object v5, Lgbsdk/common/host/av;->aO:Lgbsdk/common/host/av$ac;

    invoke-virtual {v5, v3, v4}, Lgbsdk/common/host/aban;->a(J)V

    .line 268
    sget-object v3, Lgbsdk/common/host/av;->aO:Lgbsdk/common/host/av$ac;

    .line 269
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 271
    invoke-virtual {p0, v6, v2}, Lgbsdk/common/host/ap;->a([Ljava/lang/String;Z)V

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    .line 272
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 273
    :pswitch_9
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 277
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 278
    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->isSilenceInBackground()Z

    move-result p1

    const-wide/16 v1, 0x3a98

    if-eqz p1, :cond_c

    iget-object p1, p0, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    invoke-virtual {p1}, Lgbsdk/common/host/av;->b()Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_c
    const-wide v3, 0x7fffffffffffffffL

    .line 280
    iget-object p1, p0, Lgbsdk/common/host/ap;->aC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgbsdk/common/host/ao;

    .line 281
    iget-boolean v7, v6, Lgbsdk/common/host/ao;->e:Z

    if-nez v7, :cond_d

    .line 282
    invoke-virtual {v6}, Lgbsdk/common/host/ao;->a()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-gez v8, :cond_d

    move-wide v3, v6

    goto :goto_0

    .line 288
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v3, v6

    .line 289
    iget-boolean p1, p0, Lgbsdk/common/host/ap;->v:Z

    if-eqz p1, :cond_f

    cmp-long p1, v3, v1

    if-lez p1, :cond_f

    goto :goto_1

    :cond_f
    move-wide v1, v3

    .line 293
    :cond_10
    :goto_1
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 295
    iget-object p1, p0, Lgbsdk/common/host/ap;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_22

    .line 296
    iget-object p1, p0, Lgbsdk/common/host/ap;->t:Ljava/util/List;

    monitor-enter p1

    .line 297
    :try_start_4
    iget-object v1, p0, Lgbsdk/common/host/ap;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/ap$ac;

    if-eqz v2, :cond_11

    .line 299
    check-cast v2, Lgbsdk/common/host/ap$ad;

    .line 300
    iget-object v3, v2, Lgbsdk/common/host/ap$ad;->aF:Lgbsdk/common/host/ap;

    iget-object v2, v2, Lgbsdk/common/host/ap$ac;->aE:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lgbsdk/common/host/ap;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 301
    :cond_12
    iget-object v1, p0, Lgbsdk/common/host/ap;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 302
    monitor-exit p1

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 324
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lgbsdk/common/host/ap;->a([Ljava/lang/String;Z)V

    goto/16 :goto_b

    .line 325
    :pswitch_b
    new-instance p1, Lgbsdk/common/host/as;

    invoke-direct {p1, p0}, Lgbsdk/common/host/as;-><init>(Lgbsdk/common/host/ap;)V

    iput-object p1, p0, Lgbsdk/common/host/ap;->au:Lgbsdk/common/host/as;

    .line 326
    iget-object v1, p0, Lgbsdk/common/host/ap;->aC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance p1, Lgbsdk/common/host/at;

    invoke-direct {p1, p0}, Lgbsdk/common/host/at;-><init>(Lgbsdk/common/host/ap;)V

    iput-object p1, p0, Lgbsdk/common/host/ap;->av:Lgbsdk/common/host/at;

    .line 329
    iget-object v1, p0, Lgbsdk/common/host/ap;->aC:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {p0}, Lgbsdk/common/host/ap;->E()Lcom/apm/applog/UriConfig;

    .line 332
    iget-object p1, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 333
    iget-object p1, p1, Lgbsdk/common/host/abbf;->be:Landroid/content/SharedPreferences;

    const-string v1, "version_code"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 334
    iget-object v1, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    invoke-virtual {v1}, Lgbsdk/common/host/abbf;->H()I

    move-result v1

    if-ne p1, v1, :cond_1d

    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 335
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    const-string v1, "channel"

    const-string v3, ""

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 336
    iget-object v1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {v1}, Lgbsdk/common/host/abbk;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_9

    .line 337
    :cond_13
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 338
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 339
    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->isEventFilterEnable()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 340
    iget-object p1, p0, Lgbsdk/common/host/ap;->ap:Landroid/app/Application;

    :try_start_5
    const-string v1, "sp_filter_name"

    .line 341
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 343
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 344
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 347
    :try_start_6
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-object v4, v6

    :goto_3
    if-eqz v4, :cond_1c

    .line 350
    :try_start_7
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    if-gtz v7, :cond_14

    goto/16 :goto_8

    .line 353
    :cond_14
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :cond_15
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    if-nez v8, :cond_16

    goto :goto_4

    .line 357
    :cond_16
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "is_block"

    .line 358
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    const-string v7, "is_block"

    .line 359
    invoke-interface {p1, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_4

    :cond_17
    const-string v10, "events"

    .line 360
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v10, :cond_18

    .line 363
    :try_start_8
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :catchall_4
    move-object v8, v6

    :goto_5
    if-eqz v8, :cond_15

    .line 366
    :try_start_9
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_15

    .line 367
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 369
    :cond_18
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 370
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 373
    :try_start_a
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    :catchall_5
    move-object v8, v6

    :goto_6
    if-eqz v8, :cond_19

    .line 376
    :try_start_b
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_19

    .line 377
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 379
    :cond_19
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_15

    .line 380
    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1a
    if-lez v7, :cond_1b

    .line 386
    new-instance p1, Lgbsdk/common/host/az;

    invoke-direct {p1, v1, v3}, Lgbsdk/common/host/az;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    goto :goto_7

    .line 388
    :cond_1b
    new-instance p1, Lgbsdk/common/host/ay;

    invoke-direct {p1, v1, v3}, Lgbsdk/common/host/ay;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :goto_7
    move-object v6, p1

    .line 389
    :catchall_6
    :cond_1c
    :goto_8
    iput-object v6, p0, Lgbsdk/common/host/ap;->aD:Lgbsdk/common/host/ax;

    goto :goto_a

    .line 390
    :cond_1d
    :goto_9
    iget-object p1, p0, Lgbsdk/common/host/ap;->au:Lgbsdk/common/host/as;

    if-eqz p1, :cond_1e

    .line 391
    invoke-virtual {p1}, Lgbsdk/common/host/ao;->C()Lgbsdk/common/host/ao;

    .line 392
    :cond_1e
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 393
    iget-object p1, p1, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 394
    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->isEventFilterEnable()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 395
    iget-object p1, p0, Lgbsdk/common/host/ap;->ap:Landroid/app/Application;

    :try_start_c
    const-string v1, "sp_filter_name"

    .line 396
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 397
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 398
    :catchall_7
    iput-object v6, p0, Lgbsdk/common/host/ap;->aD:Lgbsdk/common/host/ax;

    .line 399
    :cond_1f
    :goto_a
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 401
    :pswitch_c
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 402
    iget-object v1, p1, Lgbsdk/common/host/abbk;->aZ:Landroid/content/SharedPreferences;

    const-string v3, "bav_log_collect"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 403
    invoke-virtual {p1, v1}, Lgbsdk/common/host/abbk;->a(Z)V

    .line 404
    iget-object p1, p0, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    invoke-virtual {p1}, Lgbsdk/common/host/abbf;->j()Z

    move-result p1

    const-wide/16 v1, 0x3e8

    if-eqz p1, :cond_21

    .line 405
    iget-object p1, p0, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    invoke-virtual {p1}, Lgbsdk/common/host/abbk;->k()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 406
    new-instance p1, Landroid/os/HandlerThread;

    const-string v3, "bd_tracker_n"

    invoke-direct {p1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 408
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v3, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    .line 409
    iget-object p1, p0, Lgbsdk/common/host/ap;->at:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 410
    iget-object p1, p0, Lgbsdk/common/host/ap;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_20

    .line 411
    iget-object p1, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    iget-object p1, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 414
    :cond_20
    iget-object p1, p0, Lgbsdk/common/host/ap;->ap:Landroid/app/Application;

    .line 415
    sput-boolean v0, Lgbsdk/common/host/abdo;->a:Z

    .line 416
    new-instance v1, Lgbsdk/common/host/abdr;

    invoke-direct {v1, p1}, Lgbsdk/common/host/abdr;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/bytedance/apm/common/utility/concurrent/ThreadPlus;->submitRunnable(Ljava/lang/Runnable;)V

    const-string p1, "net|worker start"

    .line 417
    invoke-static {p1, v6}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 418
    :cond_21
    iget-object p1, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-object p1, p0, Lgbsdk/common/host/ap;->ay:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_22
    :goto_b
    :pswitch_d
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_d
        :pswitch_4
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public k(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0a92b6b8963c2b0eb47986c0063159cf"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_1

    nop

    :cond_1
    return-void
.end method

.method public l(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/ap;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "566e608d3dee7e7903f00e6d019441d5"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_1

    nop

    :cond_1
    return-void
.end method
