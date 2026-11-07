.class public Lgbsdk/common/host/abkh$af;
.super Lgbsdk/common/host/abkh$ad;
.source "TTNetDetectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abkh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "af"
.end annotation


# instance fields
.field public host:Ljava/lang/String;

.field public kf:I

.field public kk:Ljava/lang/String;

.field public kv:I

.field public kw:I

.field public kx:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lgbsdk/common/host/abkh$ad;-><init>()V

    return-void
.end method

.method public static x(Lorg/json/JSONObject;)Lgbsdk/common/host/abkh$af;
    .locals 2

    .line 91
    :try_start_0
    new-instance v0, Lgbsdk/common/host/abkh$af;

    invoke-direct {v0}, Lgbsdk/common/host/abkh$af;-><init>()V

    const-string v1, "host"

    .line 92
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgbsdk/common/host/abkh$af;->host:Ljava/lang/String;

    const-string v1, "ip"

    .line 93
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgbsdk/common/host/abkh$af;->kk:Ljava/lang/String;

    const-string v1, "error"

    .line 94
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$af;->kf:I

    const-string v1, "ping_times"

    .line 95
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$af;->kv:I

    const-string v1, "succ_times"

    .line 96
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$af;->kw:I

    const-string v1, "avg_cost"

    .line 97
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lgbsdk/common/host/abkh$af;->kx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
