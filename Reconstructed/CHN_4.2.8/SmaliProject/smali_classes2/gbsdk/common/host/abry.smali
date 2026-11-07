.class public interface abstract Lgbsdk/common/host/abry;
.super Ljava/lang/Object;
.source "UncaughtThrowableStrategy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PlatformExecutor"

.field public static final zn:Lgbsdk/common/host/abry;

.field public static final zo:Lgbsdk/common/host/abry;

.field public static final zp:Lgbsdk/common/host/abry;

.field public static final zq:Lgbsdk/common/host/abry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lgbsdk/common/host/abry$1;

    invoke-direct {v0}, Lgbsdk/common/host/abry$1;-><init>()V

    sput-object v0, Lgbsdk/common/host/abry;->zn:Lgbsdk/common/host/abry;

    .line 17
    new-instance v0, Lgbsdk/common/host/abry$2;

    invoke-direct {v0}, Lgbsdk/common/host/abry$2;-><init>()V

    sput-object v0, Lgbsdk/common/host/abry;->zo:Lgbsdk/common/host/abry;

    .line 27
    new-instance v0, Lgbsdk/common/host/abry$3;

    invoke-direct {v0}, Lgbsdk/common/host/abry$3;-><init>()V

    sput-object v0, Lgbsdk/common/host/abry;->zp:Lgbsdk/common/host/abry;

    .line 36
    sget-object v0, Lgbsdk/common/host/abry;->zo:Lgbsdk/common/host/abry;

    sput-object v0, Lgbsdk/common/host/abry;->zq:Lgbsdk/common/host/abry;

    return-void
.end method


# virtual methods
.method public abstract g(Ljava/lang/Throwable;)V
.end method
