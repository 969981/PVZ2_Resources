.class public Lgbsdk/common/host/abpd;
.super Ljava/lang/Object;
.source "PlatformHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abpd$ab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformHandlerThread"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect; = null

.field private static volatile yA:Landroid/os/Handler; = null

.field private static volatile yB:Landroid/os/Handler; = null

.field public static volatile yC:Landroid/os/Handler; = null

.field private static yD:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private static yE:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static yF:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static yG:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final yH:Ljava/lang/String; = "\u200b"

.field private static final yw:Ljava/lang/String; = "common_handler_thread"

.field private static final yx:Ljava/lang/String; = "back_handler_thread"

.field private static volatile yy:Landroid/os/HandlerThread;

.field private static volatile yz:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lgbsdk/common/host/abpd;->yC:Landroid/os/Handler;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/abpd;->yD:Ljava/util/HashMap;

    const-string v0, "NpthHandlerThread"

    const-string v1, "NewVideo-HandlerThread"

    const-string v2, "trace_time_update_thread"

    .line 29
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abpd;->yE:Ljava/util/List;

    const-string v0, "DBHelper-AsyncOp-New"

    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abpd;->yF:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/abpd;->yG:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    sget-object v3, Lgbsdk/common/host/abpd;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "e3fed733c9b38ab51dd598b461ac6c37"

    invoke-static {v0, v4, v3, v2, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/os/HandlerThread;

    return-object p0

    .line 132
    :cond_0
    invoke-static {p0, v1, p1}, Lgbsdk/common/host/abpd;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method private static J(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    sget-object v4, Lgbsdk/common/host/abpd;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v5, 0x0

    const-string v6, "5eaca04291df859b639bbd20355f1b2b"

    invoke-static {v1, v5, v4, v3, v6}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v1, 0x4

    .line 206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "/"

    .line 207
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 208
    array-length v4, p0

    if-lt v4, v1, :cond_2

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 210
    sget-object v0, Lgbsdk/common/host/abpd;->yG:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    sget-object v0, Lgbsdk/common/host/abpd;->yG:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    return-object p1

    :cond_2
    const-string p0, "platform_handler"

    return-object p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/HandlerThread;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    sget-object p2, Lgbsdk/common/host/abpd;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v1, 0x0

    const-string v3, "6a5c369d73b3b9181f9c3ff36a30772d"

    invoke-static {v0, v1, p2, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p2, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/os/HandlerThread;

    return-object p0

    .line 145
    :cond_0
    sget-object p2, Lgbsdk/common/host/abpd;->yD:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    .line 147
    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 186
    :cond_2
    sget-object p2, Lgbsdk/common/host/abpd;->yD:Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/HandlerThread;

    if-nez p2, :cond_3

    .line 188
    new-instance p2, Lgbsdk/common/host/abpd$ab;

    invoke-direct {p2, p0, p1}, Lgbsdk/common/host/abpd$ab;-><init>(Ljava/lang/String;I)V

    .line 189
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 190
    invoke-static {p2}, Lgbsdk/common/host/abrx;->a(Landroid/os/HandlerThread;)V

    .line 191
    sget-object p1, Lgbsdk/common/host/abpd;->yD:Ljava/util/HashMap;

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p2
.end method

.method public static bF(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/common/host/abpd;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "3799a1c57323bd6f18afb5c0c9a5ea07"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/os/HandlerThread;

    return-object p0

    :cond_0
    const-string v0, ""

    .line 121
    invoke-static {p0, v2, v0}, Lgbsdk/common/host/abpd;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method public static du()Landroid/os/Handler;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abpd;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "fbff14d4e7f583ce02f6b366dc6e5738"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    return-object v0

    .line 58
    :cond_0
    const-class v0, Lgbsdk/common/host/abpd;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abpd;->yA:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 60
    invoke-static {}, Lgbsdk/common/host/abpd;->dv()Landroid/os/HandlerThread;

    .line 62
    :cond_1
    sget-object v1, Lgbsdk/common/host/abpd;->yA:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static dv()Landroid/os/HandlerThread;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abpd;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "53216b9415965f626fd77e77b1feb310"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/os/HandlerThread;

    return-object v0

    .line 72
    :cond_0
    const-class v0, Lgbsdk/common/host/abpd;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abpd;->yy:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Lgbsdk/common/host/abpd$ab;

    const-string v2, "common_handler_thread"

    invoke-direct {v1, v2}, Lgbsdk/common/host/abpd$ab;-><init>(Ljava/lang/String;)V

    sput-object v1, Lgbsdk/common/host/abpd;->yy:Landroid/os/HandlerThread;

    .line 75
    sget-object v1, Lgbsdk/common/host/abpd;->yy:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 76
    sget-object v1, Lgbsdk/common/host/abpd;->yy:Landroid/os/HandlerThread;

    invoke-static {v1}, Lgbsdk/common/host/abrx;->a(Landroid/os/HandlerThread;)V

    .line 77
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lgbsdk/common/host/abpd;->yy:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lgbsdk/common/host/abpd;->yA:Landroid/os/Handler;

    .line 79
    :cond_1
    sget-object v1, Lgbsdk/common/host/abpd;->yy:Landroid/os/HandlerThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static dw()Landroid/os/Handler;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abpd;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "bd6e6e7a862f517b08c73effb09ae96e"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    return-object v0

    .line 89
    :cond_0
    const-class v0, Lgbsdk/common/host/abpd;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abpd;->yB:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 91
    invoke-static {}, Lgbsdk/common/host/abpd;->dx()Landroid/os/HandlerThread;

    .line 93
    :cond_1
    sget-object v1, Lgbsdk/common/host/abpd;->yB:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static dx()Landroid/os/HandlerThread;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abpd;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "a731a72b3b0d8da3ef344ed4f1cf073d"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/os/HandlerThread;

    return-object v0

    .line 103
    :cond_0
    const-class v0, Lgbsdk/common/host/abpd;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abpd;->yz:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 105
    new-instance v1, Lgbsdk/common/host/abpd$ab;

    const-string v2, "back_handler_thread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lgbsdk/common/host/abpd$ab;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgbsdk/common/host/abpd;->yz:Landroid/os/HandlerThread;

    .line 106
    sget-object v1, Lgbsdk/common/host/abpd;->yz:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 107
    sget-object v1, Lgbsdk/common/host/abpd;->yz:Landroid/os/HandlerThread;

    invoke-static {v1}, Lgbsdk/common/host/abrx;->a(Landroid/os/HandlerThread;)V

    .line 108
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lgbsdk/common/host/abpd;->yz:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lgbsdk/common/host/abpd;->yB:Landroid/os/Handler;

    .line 110
    :cond_1
    sget-object v1, Lgbsdk/common/host/abpd;->yz:Landroid/os/HandlerThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
