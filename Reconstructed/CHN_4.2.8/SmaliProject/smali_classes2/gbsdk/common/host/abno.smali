.class public Lgbsdk/common/host/abno;
.super Ljava/lang/Object;
.source "DefaultMonitorConfigure.java"

# interfaces
.implements Lgbsdk/common/host/abok;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemoveSwitch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reportCount()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public reportFailRepeatBaseTime()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public reportFailRepeatCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public reportInterval()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public reportJsonHeaderInfo()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public reportUrl(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
