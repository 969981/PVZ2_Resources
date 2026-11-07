.class public final Lgbsdk/common/host/abds;
.super Ljava/lang/Object;
.source "Oaid.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/aw;",
            ">;"
        }
    .end annotation
.end field

.field public static l:Ljava/lang/String;


# instance fields
.field public final c:Z

.field public final cj:Ljava/util/concurrent/locks/ReentrantLock;

.field public final ck:Lgbsdk/common/host/abdv;

.field public final cl:Lgbsdk/common/host/abco;

.field public final cm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public cn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public co:Ljava/lang/Long;

.field public final e:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lgbsdk/common/host/abds;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abds;->i:Ljava/lang/String;

    .line 2
    sput-object v0, Lgbsdk/common/host/abds;->j:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgbsdk/common/host/abds;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abds;->cj:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgbsdk/common/host/abds;->cm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abds;->e:Landroid/content/Context;

    .line 15
    invoke-static {}, Lgbsdk/common/host/abdl;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 16
    new-instance v2, Lgbsdk/common/host/abcq;

    new-instance v0, Lgbsdk/common/host/abcl;

    invoke-direct {v0}, Lgbsdk/common/host/abcl;-><init>()V

    invoke-direct {v2, v0}, Lgbsdk/common/host/abcq;-><init>(Lgbsdk/common/host/abdv;)V

    goto/16 :goto_5

    .line 19
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abcl;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    new-instance v2, Lgbsdk/common/host/abcl;

    invoke-direct {v2}, Lgbsdk/common/host/abcl;-><init>()V

    goto/16 :goto_5

    .line 21
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abcn;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    new-instance v2, Lgbsdk/common/host/abcn;

    invoke-direct {v2}, Lgbsdk/common/host/abcn;-><init>()V

    goto/16 :goto_5

    .line 23
    :cond_2
    invoke-static {}, Lgbsdk/common/host/abdl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HUAWEI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 24
    invoke-static {}, Lgbsdk/common/host/abdl;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 25
    :cond_3
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "OnePlus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    new-instance v0, Lgbsdk/common/host/abcq;

    .line 27
    invoke-direct {v0, v2}, Lgbsdk/common/host/abcq;-><init>(Lgbsdk/common/host/abdv;)V

    move-object v2, v0

    goto/16 :goto_5

    .line 28
    :cond_4
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :cond_5
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "meizu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_6

    .line 34
    new-instance v2, Lgbsdk/common/host/abdy;

    invoke-direct {v2}, Lgbsdk/common/host/abdy;-><init>()V

    goto/16 :goto_5

    .line 37
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v0, v3, :cond_f

    .line 38
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "samsung"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_8

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_9

    .line 39
    new-instance v2, Lgbsdk/common/host/abcj;

    invoke-direct {v2}, Lgbsdk/common/host/abcj;-><init>()V

    goto/16 :goto_5

    .line 40
    :cond_9
    invoke-static {}, Lgbsdk/common/host/abdl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NUBIA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41
    new-instance v2, Lgbsdk/common/host/abdt;

    invoke-direct {v2}, Lgbsdk/common/host/abdt;-><init>()V

    goto :goto_5

    .line 42
    :cond_a
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "VIBEUI_V2"

    if-nez v2, :cond_b

    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_3

    :cond_b
    const-string v0, "ro.build.version.incremental"

    .line 46
    invoke-static {v0}, Lgbsdk/common/host/abdl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_d

    .line 48
    new-instance v2, Lgbsdk/common/host/abdz;

    invoke-direct {v2}, Lgbsdk/common/host/abdz;-><init>()V

    goto :goto_5

    .line 49
    :cond_d
    invoke-static {}, Lgbsdk/common/host/abdl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ASUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 50
    new-instance v2, Lgbsdk/common/host/abdg;

    invoke-direct {v2}, Lgbsdk/common/host/abdg;-><init>()V

    goto :goto_5

    .line 53
    :cond_e
    new-instance v2, Lgbsdk/common/host/abea;

    invoke-direct {v2}, Lgbsdk/common/host/abea;-><init>()V

    goto :goto_5

    .line 57
    :cond_f
    invoke-static {}, Lgbsdk/common/host/abdl;->f()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1}, Lgbsdk/common/host/abdx;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 58
    new-instance v2, Lgbsdk/common/host/abdx;

    invoke-direct {v2}, Lgbsdk/common/host/abdx;-><init>()V

    goto :goto_5

    .line 59
    :cond_10
    :goto_4
    new-instance v2, Lgbsdk/common/host/abdx;

    invoke-direct {v2}, Lgbsdk/common/host/abdx;-><init>()V

    .line 60
    :cond_11
    :goto_5
    iput-object v2, p0, Lgbsdk/common/host/abds;->ck:Lgbsdk/common/host/abdv;

    if-eqz v2, :cond_12

    .line 62
    invoke-interface {v2, p1}, Lgbsdk/common/host/abdv;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lgbsdk/common/host/abds;->c:Z

    goto :goto_6

    .line 64
    :cond_12
    iput-boolean v1, p0, Lgbsdk/common/host/abds;->c:Z

    .line 66
    :goto_6
    new-instance v0, Lgbsdk/common/host/abco;

    invoke-direct {v0, p1}, Lgbsdk/common/host/abco;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgbsdk/common/host/abds;->cl:Lgbsdk/common/host/abco;

    return-void
.end method

.method public static R()[Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abds;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "f08a832421fdab1e26df19ee9d46d8c1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 1
    :cond_0
    sget-object v0, Lgbsdk/common/host/abds;->k:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abds;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    sget-object v1, Lgbsdk/common/host/abds;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 5
    :cond_1
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic a(Lgbsdk/common/host/abds;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abds;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "b5819c1d078fef83eb033e3b7c2bb222"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lgbsdk/common/host/abds;->b()V

    return-void
.end method

.method public static a(Lgbsdk/common/host/aw$ab;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    sget-object v3, Lgbsdk/common/host/abds;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "21330d1f956fc2587f4c521933c5bc95"

    invoke-static {v0, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 5
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 6
    check-cast v2, Lgbsdk/common/host/aw;

    invoke-interface {v2, p0}, Lgbsdk/common/host/aw;->a(Lgbsdk/common/host/aw$ab;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lgbsdk/common/host/aw;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/abds;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "51d5bee850690997138ae956904f992e"

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v1, Lgbsdk/common/host/abds;->k:Ljava/util/List;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v3, Lgbsdk/common/host/abds;->k:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    sget-object v1, Lgbsdk/common/host/abds;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    new-instance v3, Lgbsdk/common/host/aw$ab;

    invoke-direct {v3, v1}, Lgbsdk/common/host/aw$ab;-><init>(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-static {v3, v0}, Lgbsdk/common/host/abds;->a(Lgbsdk/common/host/aw$ab;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abds;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "d393bf30c2efffff73de8fbe6377b35a"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 12
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abds;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "af37d8362da19df205ffadba3788b614"

    invoke-static {v0, v3, v2, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 9
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Lgbsdk/common/host/aw;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abds;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "972f20866f6a9a43f7895a197e9163be"

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lgbsdk/common/host/abds;->k:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abds;->k:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abds;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "803307e86d850a74ed216812101063e3"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abds;->cm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    new-instance v0, Lgbsdk/common/host/abds$ab;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abds$ab;-><init>(Lgbsdk/common/host/abds;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lgbsdk/common/host/abds;->j:Ljava/lang/String;

    const-string v3, "-query"

    invoke-static {v1, v2, v3}, Lgbsdk/common/host/ab;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "TrackerDr"

    .line 19
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lgbsdk/common/host/abeb;

    invoke-direct {v3, v0, v1}, Lgbsdk/common/host/abeb;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abds;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "aaa262b0f2d64c9e0f5eb2247fa392e0"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abds;->cj:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 10
    iget-object v0, p0, Lgbsdk/common/host/abds;->cl:Lgbsdk/common/host/abco;

    invoke-virtual {v0}, Lgbsdk/common/host/abco;->S()Lgbsdk/common/host/abdu;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oaid#initOaid fetch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 13
    iget-object v1, v0, Lgbsdk/common/host/abdu;->a:Ljava/lang/String;

    sput-object v1, Lgbsdk/common/host/abds;->l:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lgbsdk/common/host/abdu;->a()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abds;->cn:Ljava/util/Map;

    .line 17
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 18
    iget-object v3, p0, Lgbsdk/common/host/abds;->e:Landroid/content/Context;

    .line 19
    iget-object v4, p0, Lgbsdk/common/host/abds;->ck:Lgbsdk/common/host/abdv;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 20
    invoke-interface {v4, v3}, Lgbsdk/common/host/abdv;->i(Landroid/content/Context;)Lgbsdk/common/host/abdv$ab;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 22
    iget-object v4, v3, Lgbsdk/common/host/abdv$ab;->a:Ljava/lang/String;

    .line 23
    iget-boolean v6, v3, Lgbsdk/common/host/abdv$ab;->b:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 24
    instance-of v7, v3, Lgbsdk/common/host/abdx$ac;

    if-eqz v7, :cond_3

    .line 25
    check-cast v3, Lgbsdk/common/host/abdx$ac;

    iget-wide v7, v3, Lgbsdk/common/host/abdx$ac;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lgbsdk/common/host/abds;->co:Ljava/lang/Long;

    goto :goto_0

    :cond_2
    move-object v4, v5

    move-object v6, v4

    .line 29
    :cond_3
    :goto_0
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    .line 31
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_7

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 35
    iget-object v5, v0, Lgbsdk/common/host/abdu;->b:Ljava/lang/String;

    .line 36
    iget-object v0, v0, Lgbsdk/common/host/abdu;->ct:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 38
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5
    if-gtz v1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v1

    .line 44
    :goto_1
    new-instance v0, Lgbsdk/common/host/abdu;

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Ljava/lang/Boolean;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lgbsdk/common/host/abds;->co:Ljava/lang/Long;

    move-object v1, v0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v8

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lgbsdk/common/host/abdu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 46
    iget-object v1, p0, Lgbsdk/common/host/abds;->cl:Lgbsdk/common/host/abco;

    invoke-virtual {v1, v0}, Lgbsdk/common/host/abco;->a(Lgbsdk/common/host/abdu;)V

    move-object v5, v0

    :cond_7
    if-eqz v5, :cond_8

    .line 49
    iget-object v0, v5, Lgbsdk/common/host/abdu;->a:Ljava/lang/String;

    sput-object v0, Lgbsdk/common/host/abds;->l:Ljava/lang/String;

    .line 50
    invoke-virtual {v5}, Lgbsdk/common/host/abdu;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abds;->cn:Ljava/util/Map;

    .line 52
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oaid#initOaid oaidModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v0, p0, Lgbsdk/common/host/abds;->cj:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    new-instance v0, Lgbsdk/common/host/aw$ab;

    sget-object v1, Lgbsdk/common/host/abds;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Lgbsdk/common/host/aw$ab;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abds;->R()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lgbsdk/common/host/abds;->a(Lgbsdk/common/host/aw$ab;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 56
    iget-object v1, p0, Lgbsdk/common/host/abds;->cj:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 57
    new-instance v1, Lgbsdk/common/host/aw$ab;

    sget-object v2, Lgbsdk/common/host/abds;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Lgbsdk/common/host/aw$ab;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lgbsdk/common/host/abds;->R()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lgbsdk/common/host/abds;->a(Lgbsdk/common/host/aw$ab;[Ljava/lang/Object;)V

    throw v0
.end method
