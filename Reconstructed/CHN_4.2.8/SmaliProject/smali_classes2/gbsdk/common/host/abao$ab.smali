.class public Lgbsdk/common/host/abao$ab;
.super Ljava/lang/Object;
.source "AccountCacheHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abao;->a(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic bj:Lgbsdk/common/host/abao;

.field public final synthetic bp:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abao;Landroid/accounts/Account;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgbsdk/common/host/abao$ab;->bj:Lgbsdk/common/host/abao;

    iput-object p2, p0, Lgbsdk/common/host/abao$ab;->bp:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abao$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "259535c633218c6d6a4366701fda5340"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abao$ab;->bj:Lgbsdk/common/host/abao;

    .line 2
    iget-object v0, v0, Lgbsdk/common/host/abao;->bu:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lgbsdk/common/host/abao$ab;->bj:Lgbsdk/common/host/abao;

    .line 4
    iget-object v0, v0, Lgbsdk/common/host/abao;->bu:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lgbsdk/common/host/abao$ab;->bj:Lgbsdk/common/host/abao;

    .line 6
    iget-object v0, v0, Lgbsdk/common/host/abao;->bt:Landroid/accounts/AccountManager;

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abao$ab;->bj:Lgbsdk/common/host/abao;

    .line 8
    iget-object v0, v0, Lgbsdk/common/host/abao;->bu:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    iget-object v2, p0, Lgbsdk/common/host/abao$ab;->bj:Lgbsdk/common/host/abao;

    .line 13
    iget-object v2, v2, Lgbsdk/common/host/abao;->bt:Landroid/accounts/AccountManager;

    .line 14
    iget-object v3, p0, Lgbsdk/common/host/abao$ab;->bp:Landroid/accounts/Account;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lgbsdk/common/host/abao$ab;->bj:Lgbsdk/common/host/abao;

    .line 17
    iget-object v0, v0, Lgbsdk/common/host/abao;->bu:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
