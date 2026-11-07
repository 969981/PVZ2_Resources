.class public Lgbsdk/common/host/abbh;
.super Ljava/lang/Object;
.source "DeviceRegisterParameterFactory.java"


# static fields
.field public static bh:Landroid/accounts/Account;

.field public static volatile c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lgbsdk/common/host/abbk;",
            "Lgbsdk/common/host/abbh;",
            ">;"
        }
    .end annotation
.end field

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public volatile bi:Lgbsdk/common/host/abar;

.field public bj:Lgbsdk/common/host/abao;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/abbh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lgbsdk/common/host/abbk;)Lgbsdk/common/host/abar;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abbh;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b8194507e99eb07660e38d7dd0ca2fa2"

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/common/host/abar;

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lgbsdk/common/host/abbh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abbh;

    if-nez v0, :cond_3

    .line 2
    const-class v1, Lgbsdk/common/host/abbh;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lgbsdk/common/host/abbh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abbh;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    .line 7
    new-instance v0, Lgbsdk/common/host/abbh;

    invoke-direct {v0}, Lgbsdk/common/host/abbh;-><init>()V

    .line 10
    new-instance v2, Lgbsdk/common/host/abao;

    invoke-direct {v2, p0}, Lgbsdk/common/host/abao;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lgbsdk/common/host/abbh;->bj:Lgbsdk/common/host/abao;

    .line 27
    iget-object v2, v0, Lgbsdk/common/host/abbh;->bi:Lgbsdk/common/host/abar;

    if-nez v2, :cond_2

    .line 28
    new-instance v2, Lgbsdk/common/host/abaw;

    iget-object v3, v0, Lgbsdk/common/host/abbh;->bj:Lgbsdk/common/host/abao;

    invoke-direct {v2, p0, p1, v3}, Lgbsdk/common/host/abaw;-><init>(Landroid/content/Context;Lgbsdk/common/host/abbk;Lgbsdk/common/host/abao;)V

    iput-object v2, v0, Lgbsdk/common/host/abbh;->bi:Lgbsdk/common/host/abar;

    .line 29
    sget-object p0, Lgbsdk/common/host/abbh;->bh:Landroid/accounts/Account;

    if-eqz p0, :cond_2

    .line 30
    iget-object p0, v0, Lgbsdk/common/host/abbh;->bi:Lgbsdk/common/host/abar;

    check-cast p0, Lgbsdk/common/host/abaw;

    sget-object p1, Lgbsdk/common/host/abbh;->bh:Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/abaw;->a(Landroid/accounts/Account;)V

    goto :goto_0

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_2
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 62
    :cond_3
    :goto_1
    iget-object p0, v0, Lgbsdk/common/host/abbh;->bi:Lgbsdk/common/host/abar;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/abbh;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "9f81f03f8119214eef6abdbf54a18f3e"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceRegisterParameterFactory isNewUserMode false. context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isDebugChannel()="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    return v2
.end method
