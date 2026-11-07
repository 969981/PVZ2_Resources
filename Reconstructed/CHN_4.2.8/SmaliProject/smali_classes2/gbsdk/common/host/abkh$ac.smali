.class public Lgbsdk/common/host/abkh$ac;
.super Lgbsdk/common/host/abkh$ad;
.source "TTNetDetectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abkh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# instance fields
.field public httpCode:I

.field public ki:I

.field public kj:I

.field public kk:Ljava/lang/String;

.field public kl:I

.field public km:I

.field public kn:I

.field public ko:I

.field public kp:I

.field public kq:I

.field public kr:I

.field public ks:I

.field public kt:I

.field public ku:I

.field public port:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lgbsdk/common/host/abkh$ad;-><init>()V

    return-void
.end method

.method public static v(Lorg/json/JSONObject;)Lgbsdk/common/host/abkh$ac;
    .locals 2

    .line 56
    :try_start_0
    new-instance v0, Lgbsdk/common/host/abkh$ac;

    invoke-direct {v0}, Lgbsdk/common/host/abkh$ac;-><init>()V

    const-string v1, "url"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgbsdk/common/host/abkh$ac;->url:Ljava/lang/String;

    const-string v1, "httpcode"

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->httpCode:I

    const-string v1, "error"

    .line 59
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->ki:I

    const-string v1, "timeout"

    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->kj:I

    const-string v1, "addr"

    .line 61
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgbsdk/common/host/abkh$ac;->kk:Ljava/lang/String;

    const-string v1, "port"

    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->port:I

    const-string v1, "cached"

    .line 63
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->kl:I

    const-string v1, "sock_reused"

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->km:I

    const-string v1, "totalcost"

    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->kn:I

    const-string v1, "dnscost"

    .line 66
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->ko:I

    const-string v1, "tcpcost"

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->kp:I

    const-string v1, "sslcost"

    .line 68
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->kq:I

    const-string v1, "sendcost"

    .line 69
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->kr:I

    const-string v1, "waitcost"

    .line 70
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->ks:I

    const-string v1, "recvcost"

    .line 71
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ac;->kt:I

    const-string v1, "recvd_bytes"

    .line 72
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lgbsdk/common/host/abkh$ac;->ku:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
