.class public Lgbsdk/common/host/abpt;
.super Ljava/lang/Object;
.source "PatchManager.java"

# interfaces
.implements Lgbsdk/common/host/abox$ab;
.implements Lgbsdk/common/host/abps$ab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abpt$ab;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0xea60

.field private static final IO_TIMEOUT:I = 0xea60

.field private static volatile mPatchManager:Lgbsdk/common/host/abpt; = null

.field private static final wd:I = 0x3e8


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Lgbsdk/common/host/abox;

.field public final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/frankie/FrankieListener;",
            ">;"
        }
    .end annotation
.end field

.field private we:Ljava/lang/String;

.field private volatile wf:Lgbsdk/common/host/abqm;

.field public wg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;"
        }
    .end annotation
.end field

.field public wh:Ljava/lang/ClassLoader;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lgbsdk/common/host/abpt;->mContext:Landroid/content/Context;

    .line 74
    new-instance p1, Lgbsdk/common/host/abox;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lgbsdk/common/host/abox;-><init>(Landroid/os/Looper;Lgbsdk/common/host/abox$ab;)V

    iput-object p1, p0, Lgbsdk/common/host/abpt;->mHandler:Lgbsdk/common/host/abox;

    return-void
.end method

.method public static W(Landroid/content/Context;)Lgbsdk/common/host/abpt;
    .locals 2

    .line 62
    sget-object v0, Lgbsdk/common/host/abpt;->mPatchManager:Lgbsdk/common/host/abpt;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lgbsdk/common/host/abpt;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abpt;->mPatchManager:Lgbsdk/common/host/abpt;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lgbsdk/common/host/abpt;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abpt;-><init>(Landroid/content/Context;)V

    sput-object v1, Lgbsdk/common/host/abpt;->mPatchManager:Lgbsdk/common/host/abpt;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 69
    :cond_1
    :goto_0
    sget-object p0, Lgbsdk/common/host/abpt;->mPatchManager:Lgbsdk/common/host/abpt;

    return-object p0
.end method

.method private a(Lgbsdk/common/host/abqo;)V
    .locals 8

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalidateMoss: MossFetchInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Frankie"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p1, p1, Lgbsdk/common/host/abqo;->patchedClasses:Ljava/util/List;

    .line 395
    invoke-static {p1}, Lgbsdk/common/host/aboz;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "invalidateMoss->MossedClasses==null"

    .line 396
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 399
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meituan/robust/PatchedClassInfo;

    .line 401
    :try_start_0
    iget-object v0, v0, Lcom/meituan/robust/PatchedClassInfo;->patchedClassName:Ljava/lang/String;

    .line 402
    const-class v2, Lcom/meituan/robust/PatchExecutor;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalidateMoss:oldClass :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "     fields "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 407
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/meituan/robust/ChangeQuickRedirect;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 408
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    .line 410
    invoke-static {v5, v2}, Lgbsdk/common/host/abqa;->writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidateMoss\uff1aset :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " changeQuickRedirectField "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v2, "invalidateMoss failed! "

    .line 416
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;)Z"
        }
    .end annotation

    .line 366
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 368
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    return v2

    .line 375
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abqo;

    .line 376
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method private o(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;)V"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 292
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "Frankie"

    if-eqz v1, :cond_1

    const-string v1, "new patches empty, invalidate all old patches"

    .line 293
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abqo;

    .line 296
    invoke-direct {p0, v2}, Lgbsdk/common/host/abpt;->a(Lgbsdk/common/host/abqo;)V

    .line 298
    invoke-virtual {v2}, Lgbsdk/common/host/abqo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/frankie/Frankie;->getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/frankie/IFrankieConfig;->getPatchDirName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lgbsdk/common/host/aboz;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 305
    iput-object p1, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    .line 308
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/frankie/Frankie;->getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/frankie/IFrankieConfig;->isMainProcess()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lgbsdk/common/host/abqn;->a(Landroid/content/Context;Ljava/util/List;Z)V

    goto/16 :goto_3

    .line 311
    :cond_1
    iget-object v1, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "old patches empty, use all new patches"

    .line 312
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mContext:Landroid/content/Context;

    const-string v1, "patch_total"

    invoke-static {v0, v1}, Lgbsdk/common/host/aboz;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    iput-object p1, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    .line 320
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/frankie/Frankie;->getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/frankie/IFrankieConfig;->isMainProcess()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lgbsdk/common/host/abqn;->a(Landroid/content/Context;Ljava/util/List;Z)V

    goto/16 :goto_3

    .line 325
    :cond_2
    iget-object v1, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lgbsdk/common/host/abpt;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 327
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abqo;

    .line 328
    iget-object v3, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/common/host/abqo;

    .line 329
    invoke-virtual {v1, v4}, Lgbsdk/common/host/abqo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    iget-boolean v5, v4, Lgbsdk/common/host/abqo;->isAppliedSuccess:Z

    iput-boolean v5, v1, Lgbsdk/common/host/abqo;->isAppliedSuccess:Z

    .line 331
    iget-object v4, v4, Lgbsdk/common/host/abqo;->patchedClasses:Ljava/util/List;

    iput-object v4, v1, Lgbsdk/common/host/abqo;->patchedClasses:Ljava/util/List;

    goto :goto_1

    :cond_5
    const-string v0, "old patches equals new patches"

    .line 335
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iput-object p1, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    goto :goto_3

    .line 340
    :cond_6
    iget-object v1, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abqo;

    .line 342
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 344
    invoke-direct {p0, v2}, Lgbsdk/common/host/abpt;->a(Lgbsdk/common/host/abqo;)V

    .line 346
    invoke-virtual {v2}, Lgbsdk/common/host/abqo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 351
    :cond_8
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/frankie/Frankie;->getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/frankie/IFrankieConfig;->getPatchDirName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lgbsdk/common/host/aboz;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 354
    iput-object p1, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    .line 357
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/frankie/Frankie;->getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/frankie/IFrankieConfig;->isMainProcess()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lgbsdk/common/host/abqn;->a(Landroid/content/Context;Ljava/util/List;Z)V

    :goto_3
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/List;Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;",
            "Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    invoke-virtual {v0}, Lgbsdk/common/host/abqm;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Frankie"

    const-string v0, "patchWithListener abort, mLastPatcher already running"

    .line 161
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 163
    invoke-interface {p2, p1}, Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;->onPatchExecute(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "Frankie"

    const-string v1, "patchWithListener start"

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0, p1, p2}, Lgbsdk/common/host/abpt;->b(Ljava/util/List;Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(ZLcom/meituan/robust/Patch;Lcom/bytedance/frankie/so/SoPatchInfo;Ljava/lang/String;)V
    .locals 3

    .line 482
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 483
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/frankie/FrankieListener;

    if-eqz v2, :cond_0

    .line 485
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/bytedance/frankie/FrankieListener;->onPatchSoInstall(ZLcom/meituan/robust/Patch;Lcom/bytedance/frankie/so/SoPatchInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/frankie/FrankieListener;

    if-eqz v2, :cond_0

    .line 495
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/bytedance/frankie/FrankieListener;->onPatchSoAutoLoadAfterInstall(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addFrankieListener(Lcom/bytedance/frankie/FrankieListener;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(Ljava/util/List;Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;",
            "Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Frankie"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start Moss, newFetchInfos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :try_start_1
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/frankie/Frankie;->getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/frankie/IFrankieConfig;->isMainProcess()Z

    move-result v0

    invoke-static {p1, v0}, Lgbsdk/common/host/abqn;->a(Ljava/util/List;Z)V

    .line 176
    invoke-direct {p0, p1}, Lgbsdk/common/host/abpt;->o(Ljava/util/List;)V

    .line 210
    new-instance v0, Lgbsdk/common/host/abqm$ab;

    iget-object v1, p0, Lgbsdk/common/host/abpt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lgbsdk/common/host/abqm$ab;-><init>(Landroid/content/Context;)V

    new-instance v1, Lgbsdk/common/host/abpt$3;

    invoke-direct {v1, p0, p1}, Lgbsdk/common/host/abpt$3;-><init>(Lgbsdk/common/host/abpt;Ljava/util/List;)V

    .line 211
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abqm$ab;->a(Lgbsdk/common/host/abpr;)Lgbsdk/common/host/abqm$ab;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/abpt$2;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abpt$2;-><init>(Lgbsdk/common/host/abpt;)V

    .line 218
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abqm$ab;->a(Lgbsdk/common/host/abpo;)Lgbsdk/common/host/abqm$ab;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/abpt$1;

    invoke-direct {v1, p0}, Lgbsdk/common/host/abpt$1;-><init>(Lgbsdk/common/host/abpt;)V

    .line 228
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abqm$ab;->a(Lcom/bytedance/frankie/patch/PatchCallBack;)Lgbsdk/common/host/abqm$ab;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abpt;->we:Ljava/lang/String;

    .line 270
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abqm$ab;->bj(Ljava/lang/String;)Lgbsdk/common/host/abqm$ab;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abpt;->wh:Ljava/lang/ClassLoader;

    .line 271
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abqm$ab;->a(Ljava/lang/ClassLoader;)Lgbsdk/common/host/abqm$ab;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lgbsdk/common/host/abqm$ab;->dh()Lgbsdk/common/host/abqm;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    .line 273
    iget-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    invoke-virtual {v0, p2}, Lgbsdk/common/host/abqm;->a(Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V

    .line 274
    invoke-static {p1}, Lgbsdk/common/host/abqn;->q(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    invoke-virtual {v0}, Lgbsdk/common/host/abqm;->start()V

    .line 276
    iget-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abqm;->v(Z)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    invoke-virtual {v0}, Lgbsdk/common/host/abqm;->dg()V

    :goto_0
    const-string v0, "Frankie"

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start Moss success. newFetchInfos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "Frankie"

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start Moss failed. newFetchInfos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "PatchManager.patch"

    .line 283
    invoke-static {p1, v0}, Lgbsdk/common/host/abrt;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 285
    invoke-interface {p2, p1}, Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;->onPatchExecute(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public be(Ljava/lang/String;)V
    .locals 3

    .line 462
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 463
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/frankie/FrankieListener;

    if-eqz v2, :cond_0

    .line 465
    invoke-interface {v2, p1}, Lcom/bytedance/frankie/FrankieListener;->onPatchInfoResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bf(Ljava/lang/String;)Z
    .locals 1

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iput-object p1, p0, Lgbsdk/common/host/abpt;->we:Ljava/lang/String;

    .line 80
    invoke-static {}, Lgbsdk/common/host/abqn;->init()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bg(Ljava/lang/String;)V
    .locals 3

    .line 502
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/frankie/FrankieListener;

    if-eqz v2, :cond_0

    .line 505
    invoke-interface {v2, p1}, Lcom/bytedance/frankie/FrankieListener;->onPatchSoLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cT()V
    .locals 0

    return-void
.end method

.method public cZ()V
    .locals 3

    .line 88
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/frankie/Frankie;->getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/frankie/IFrankieConfig;->isMainProcess()Z

    move-result v1

    invoke-static {v0, v1}, Lgbsdk/common/host/abqn;->b(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Lgbsdk/common/host/abqf;->dm()Lgbsdk/common/host/abqf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgbsdk/common/host/abqf;->r(Ljava/util/List;)V

    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/bytedance/frankie/Frankie;->getInstance()Lcom/bytedance/frankie/Frankie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/frankie/Frankie;->getFrankieConfig()Lcom/bytedance/frankie/IFrankieConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/frankie/IFrankieConfig;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    invoke-static {v0}, Lgbsdk/common/host/abqn;->p(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abqf;->dm()Lgbsdk/common/host/abqf;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lgbsdk/common/host/abqf;->b(Ljava/util/List;Z)V

    .line 96
    invoke-virtual {p0, v0}, Lgbsdk/common/host/abpt;->n(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public da()Z
    .locals 3

    const-string v0, "Frankie"

    :try_start_0
    const-string v1, "crashed for too many times. clearMoss now."

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lgbsdk/common/host/abpt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lgbsdk/common/host/abqn;->Z(Landroid/content/Context;)V

    .line 111
    iget-object v1, p0, Lgbsdk/common/host/abpt;->we:Ljava/lang/String;

    invoke-static {v1}, Lgbsdk/common/host/aboz;->bA(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lgbsdk/common/host/abpt;->mContext:Landroid/content/Context;

    const-string v2, "patch_total"

    invoke-static {v1, v2}, Lgbsdk/common/host/aboz;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lgbsdk/common/host/abqf;->dm()Lgbsdk/common/host/abqf;

    move-result-object v1

    invoke-virtual {v1}, Lgbsdk/common/host/abqf;->dq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 116
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public db()Lorg/json/JSONArray;
    .locals 3

    .line 442
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 443
    iget-object v1, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgbsdk/common/host/abqo;

    .line 444
    invoke-virtual {v2}, Lgbsdk/common/host/abqo;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public dc()V
    .locals 1

    .line 457
    new-instance v0, Lgbsdk/common/host/abps;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abps;-><init>(Lgbsdk/common/host/abps$ab;)V

    invoke-virtual {v0}, Lgbsdk/common/host/abps;->start()V

    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 2

    .line 423
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lgbsdk/common/host/abpt$ab;

    if-eqz v0, :cond_1

    .line 426
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgbsdk/common/host/abpt$ab;

    .line 427
    iget-object p1, p1, Lgbsdk/common/host/abpt$ab;->wk:Ljava/util/List;

    invoke-virtual {p0, p1}, Lgbsdk/common/host/abpt;->n(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isHotFixReady()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lgbsdk/common/host/abpt;->wg:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    invoke-virtual {v0}, Lgbsdk/common/host/abqm;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;)V"
        }
    .end annotation

    .line 473
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abpt;->n(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized n(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgbsdk/common/host/abqo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "Frankie"

    const-string v0, "start Moss, fetchInfos is null. just ignore it."

    .line 143
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/common/host/abpt;->wf:Lgbsdk/common/host/abqm;

    invoke-virtual {v0}, Lgbsdk/common/host/abqm;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mHandler:Lgbsdk/common/host/abox;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lgbsdk/common/host/abox;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 150
    new-instance v2, Lgbsdk/common/host/abpt$ab;

    invoke-direct {v2, v1}, Lgbsdk/common/host/abpt$ab;-><init>(Lgbsdk/common/host/abpt$1;)V

    .line 151
    iput-object p1, v2, Lgbsdk/common/host/abpt$ab;->wk:Ljava/util/List;

    .line 152
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    iget-object p1, p0, Lgbsdk/common/host/abpt;->mHandler:Lgbsdk/common/host/abox;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lgbsdk/common/host/abox;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0, p1, v1}, Lgbsdk/common/host/abpt;->b(Ljava/util/List;Lcom/meituan/robust/PatchExecutor$PatchExecuteListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeFrankieListener(Lcom/bytedance/frankie/FrankieListener;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lgbsdk/common/host/abpt;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
