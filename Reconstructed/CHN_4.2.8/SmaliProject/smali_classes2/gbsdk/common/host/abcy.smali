.class public Lgbsdk/common/host/abcy;
.super Ljava/lang/Object;


# static fields
.field private static volatile do:Lgbsdk/common/host/abcy;

.field private static dp:Lgbsdk/common/host/abcx;


# instance fields
.field private final dh:Lgbsdk/common/host/abdb;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgbsdk/common/host/abdb;

    invoke-direct {v0, p1}, Lgbsdk/common/host/abdb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgbsdk/common/host/abcy;->dh:Lgbsdk/common/host/abdb;

    sget-boolean p1, Lgbsdk/common/host/abge;->t:Z

    if-eqz p1, :cond_0

    new-instance p1, Lgbsdk/common/host/abcx;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lgbsdk/common/host/abcx;-><init>(I)V

    sput-object p1, Lgbsdk/common/host/abcy;->dp:Lgbsdk/common/host/abcx;

    invoke-virtual {p1}, Lgbsdk/common/host/abcx;->b()V

    :cond_0
    return-void
.end method

.method public static F()V
    .locals 1

    sget-object v0, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    if-eqz v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    iget-object v0, v0, Lgbsdk/common/host/abcy;->dh:Lgbsdk/common/host/abdb;

    if-eqz v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    iget-object v0, v0, Lgbsdk/common/host/abcy;->dh:Lgbsdk/common/host/abdb;

    invoke-virtual {v0}, Lgbsdk/common/host/abdb;->c()V

    :cond_0
    return-void
.end method

.method public static a(J)Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lgbsdk/common/host/abcy;->dp:Lgbsdk/common/host/abcx;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0, p1}, Lgbsdk/common/host/abcx;->j(J)Lgbsdk/common/host/abcx$af;

    move-result-object p0

    invoke-virtual {p0}, Lgbsdk/common/host/abcx$af;->a()Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c()Lorg/json/JSONArray;
    .locals 1

    sget-object v0, Lgbsdk/common/host/abcy;->dp:Lgbsdk/common/host/abcx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgbsdk/common/host/abcx;->c()Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static e()V
    .locals 1

    sget-object v0, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    if-eqz v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    iget-object v0, v0, Lgbsdk/common/host/abcy;->dh:Lgbsdk/common/host/abdb;

    if-eqz v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    iget-object v0, v0, Lgbsdk/common/host/abcy;->dh:Lgbsdk/common/host/abdb;

    invoke-virtual {v0}, Lgbsdk/common/host/abdb;->f()V

    :cond_0
    return-void
.end method

.method public static f()V
    .locals 1

    sget-object v0, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    if-eqz v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    iget-object v0, v0, Lgbsdk/common/host/abcy;->dh:Lgbsdk/common/host/abdb;

    if-eqz v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    iget-object v0, v0, Lgbsdk/common/host/abcy;->dh:Lgbsdk/common/host/abdb;

    invoke-virtual {v0}, Lgbsdk/common/host/abdb;->e()V

    :cond_0
    return-void
.end method

.method public static m(Landroid/content/Context;)Lgbsdk/common/host/abcy;
    .locals 2

    sget-object v0, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    if-nez v0, :cond_1

    const-class v0, Lgbsdk/common/host/abcy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    if-nez v1, :cond_0

    new-instance v1, Lgbsdk/common/host/abcy;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abcy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lgbsdk/common/host/abcy;->do:Lgbsdk/common/host/abcy;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lgbsdk/common/host/abcy;->dh:Lgbsdk/common/host/abdb;

    invoke-virtual {v0}, Lgbsdk/common/host/abdb;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lgbsdk/common/host/abcy;->dh:Lgbsdk/common/host/abdb;

    invoke-virtual {v0}, Lgbsdk/common/host/abdb;->b()V

    return-void
.end method
