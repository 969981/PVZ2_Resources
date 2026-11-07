.class public Lgbsdk/common/host/abkh$ah;
.super Ljava/lang/Object;
.source "TTNetDetectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abkh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ah"
.end annotation


# instance fields
.field public kA:I

.field public kg:I

.field public kk:Ljava/lang/String;

.field public kz:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static z(Lorg/json/JSONObject;)Lgbsdk/common/host/abkh$ah;
    .locals 2

    .line 146
    :try_start_0
    new-instance v0, Lgbsdk/common/host/abkh$ah;

    invoke-direct {v0}, Lgbsdk/common/host/abkh$ah;-><init>()V

    const-string v1, "ip"

    .line 147
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgbsdk/common/host/abkh$ah;->kk:Ljava/lang/String;

    const-string v1, "sendhops"

    .line 148
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ah;->kz:I

    const-string v1, "replyhops"

    .line 149
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lgbsdk/common/host/abkh$ah;->kA:I

    const-string v1, "cost"

    .line 150
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lgbsdk/common/host/abkh$ah;->kg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
