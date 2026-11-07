.class public Lgbsdk/common/host/abwc;
.super Ljava/util/Observable;
.source "CronetDataStorageAccess.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CronetDataStorageAccess"

.field public static final aIf:Ljava/lang/String; = "region_source"

.field private static volatile aIg:Lgbsdk/common/host/abwc; = null

.field public static volatile aIh:Ljava/lang/String; = ""

.field public static volatile aIi:Ljava/lang/String; = ""

.field public static volatile aIj:Ljava/lang/String; = ""

.field public static final sA:Ljava/lang/String; = "store_region"

.field public static final sz:Ljava/lang/String; = "store_idc"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static hk()Lgbsdk/common/host/abwc;
    .locals 2

    .line 21
    sget-object v0, Lgbsdk/common/host/abwc;->aIg:Lgbsdk/common/host/abwc;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lgbsdk/common/host/abwc;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lgbsdk/common/host/abwc;->aIg:Lgbsdk/common/host/abwc;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lgbsdk/common/host/abwc;

    invoke-direct {v1}, Lgbsdk/common/host/abwc;-><init>()V

    sput-object v1, Lgbsdk/common/host/abwc;->aIg:Lgbsdk/common/host/abwc;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lgbsdk/common/host/abwc;->aIg:Lgbsdk/common/host/abwc;

    return-object v0
.end method

.method private o(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lgbsdk/common/host/abwc;->setChanged()V

    .line 46
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abwc;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onStoreIdcChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStoreIdcChanged idc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CronetDataStorageAccess"

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sput-object p1, Lgbsdk/common/host/abwc;->aIh:Ljava/lang/String;

    .line 34
    sput-object p2, Lgbsdk/common/host/abwc;->aIi:Ljava/lang/String;

    .line 35
    sput-object p3, Lgbsdk/common/host/abwc;->aIj:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "store_idc"

    .line 38
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "store_region"

    .line 39
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "region_source"

    .line 40
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-direct {p0, v0}, Lgbsdk/common/host/abwc;->o(Ljava/util/Map;)V

    return-void
.end method
