.class public Lgbsdk/common/host/abtf$ab;
.super Ljava/lang/Object;
.source "TTStateConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abtf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field aHs:Z

.field aHt:Z

.field aHu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field aHv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field aHw:I

.field aHx:I

.field aHy:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lgbsdk/common/host/abtf$ab;->aHs:Z

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lgbsdk/common/host/abtf$ab;->aHt:Z

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abtf$ab;->aHu:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abtf$ab;->aHv:Ljava/util/Set;

    const/16 v0, 0x3e8

    .line 73
    iput v0, p0, Lgbsdk/common/host/abtf$ab;->aHw:I

    const/16 v1, 0x64

    .line 74
    iput v1, p0, Lgbsdk/common/host/abtf$ab;->aHx:I

    .line 75
    iput v0, p0, Lgbsdk/common/host/abtf$ab;->aHy:I

    return-void
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abtf$1;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lgbsdk/common/host/abtf$ab;-><init>()V

    return-void
.end method
