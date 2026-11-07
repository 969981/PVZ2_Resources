.class public abstract Lgbsdk/common/host/abfb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abfb$ab;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lgbsdk/common/host/abfb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lgbsdk/common/host/abfb;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/apm/insight/CrashType;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lgbsdk/common/host/abfb;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lgbsdk/common/host/abfb$ab;

    invoke-direct {v0, p1, p0}, Lgbsdk/common/host/abfb$ab;-><init>(Lorg/json/JSONObject;Lcom/apm/insight/CrashType;)V

    :cond_1
    :goto_0
    sget-object p1, Lgbsdk/common/host/abfb;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lgbsdk/common/host/abfb;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgbsdk/common/host/abfb;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0, v0}, Lgbsdk/common/host/abfb;->a(Lcom/apm/insight/CrashType;Lgbsdk/common/host/abfb$ab;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    sput-object p0, Lgbsdk/common/host/abfb;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/apm/insight/CrashType;Lgbsdk/common/host/abfb$ab;)V
.end method
