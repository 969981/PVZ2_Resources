.class public Lgbsdk/optional/applog/abge$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/abge;->a(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/accounts/Account;

.field public final synthetic b:Lgbsdk/optional/applog/abge;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abge;Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abge$ab;->b:Lgbsdk/optional/applog/abge;

    iput-object p2, p0, Lgbsdk/optional/applog/abge$ab;->a:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lgbsdk/optional/applog/abge$ab;->b:Lgbsdk/optional/applog/abge;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abge;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lgbsdk/optional/applog/abge$ab;->b:Lgbsdk/optional/applog/abge;

    .line 3
    iget-object v0, v0, Lgbsdk/optional/applog/abge;->a:Landroid/accounts/AccountManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abge$ab;->b:Lgbsdk/optional/applog/abge;

    .line 5
    iget-object v0, v0, Lgbsdk/optional/applog/abge;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lgbsdk/optional/applog/abge$ab;->b:Lgbsdk/optional/applog/abge;

    .line 7
    iget-object v2, v2, Lgbsdk/optional/applog/abge;->a:Landroid/accounts/AccountManager;

    .line 8
    iget-object v3, p0, Lgbsdk/optional/applog/abge$ab;->a:Landroid/accounts/Account;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lgbsdk/optional/applog/abge$ab;->b:Lgbsdk/optional/applog/abge;

    .line 9
    iget-object v0, v0, Lgbsdk/optional/applog/abge;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgbsdk/optional/applog/abge$ab;->b:Lgbsdk/optional/applog/abge;

    .line 11
    iget-object v1, v1, Lgbsdk/optional/applog/abge;->d:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v2, "AccountCacheHelper"

    .line 13
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Set account failed"

    invoke-interface {v1, v2, v4, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
