.class public final Lct/cr;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/tencent/map/geolocation/TencentLocation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/cr$a;
    }
.end annotation


# static fields
.field public static final a:Lct/cr;


# instance fields
.field private b:Lct/cn;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lct/cm;

.field private final f:Landroid/os/Bundle;

.field private g:Ljava/lang/String;

.field private h:Landroid/location/Location;

.field private final i:J

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lct/cr$1;

    invoke-direct {v0}, Lct/cr$1;-><init>()V

    .line 107
    new-instance v0, Lct/cr;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lct/cr;-><init>(I)V

    sput-object v0, Lct/cr;->a:Lct/cr;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lct/cr;->f:Landroid/os/Bundle;

    const-string v0, "network"

    .line 122
    iput-object v0, p0, Lct/cr;->g:Ljava/lang/String;

    .line 130
    iput p1, p0, Lct/cr;->c:I

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lct/cr;->i:J

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/cr;->j:J

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lct/cr;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lct/cr;->f:Landroid/os/Bundle;

    const-string v0, "network"

    .line 122
    iput-object v0, p0, Lct/cr;->g:Ljava/lang/String;

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lct/cr;->i:J

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/cr;->j:J

    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string p1, "location"

    .line 188
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 189
    new-instance v1, Lct/cn;

    invoke-direct {v1, p1}, Lct/cn;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lct/cr;->b:Lct/cn;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p1, "bearing"

    .line 194
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lct/cr;->d:Ljava/lang/String;

    const/4 p1, -0x1

    const-string v1, "icontrol"

    .line 195
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 197
    iget-object v2, p0, Lct/cr;->f:Landroid/os/Bundle;

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string p1, "details"

    .line 200
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 203
    :try_start_1
    new-instance v0, Lct/cm;

    invoke-direct {v0, p1}, Lct/cm;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lct/cr;->e:Lct/cm;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    throw p1

    :cond_1
    const-string p1, "addrdesp"

    .line 209
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "detail"

    .line 210
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 219
    new-instance v0, Lct/cm;

    invoke-direct {v0, p1}, Lct/cm;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lct/cr;->e:Lct/cm;

    .line 223
    :cond_2
    :goto_0
    iget-object p1, p0, Lct/cr;->e:Lct/cm;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lct/cm;->c:Lct/cp;

    if-eqz p1, :cond_3

    .line 224
    iget-object p1, p0, Lct/cr;->f:Landroid/os/Bundle;

    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    iget-object v0, v0, Lct/cm;->c:Lct/cp;

    iget-object v0, v0, Lct/cp;->l:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    return-void

    :catch_1
    move-exception p1

    .line 190
    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lct/cr;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lct/cr;J)J
    .locals 0

    .line 25
    iput-wide p1, p0, Lct/cr;->j:J

    return-wide p1
.end method

.method static synthetic a(Lct/cr;Lct/cm;)Lct/cm;
    .locals 0

    .line 25
    iput-object p1, p0, Lct/cr;->e:Lct/cm;

    return-object p1
.end method

.method static synthetic a(Lct/cr;Lct/cn;)Lct/cn;
    .locals 0

    .line 25
    iput-object p1, p0, Lct/cr;->b:Lct/cn;

    return-object p1
.end method

.method static synthetic a(Lct/cr;I)Lct/cr;
    .locals 0

    .line 25
    iput p1, p0, Lct/cr;->c:I

    return-object p0
.end method

.method static synthetic a(Lct/cr;Landroid/location/Location;)Lct/cr;
    .locals 0

    .line 25
    iput-object p1, p0, Lct/cr;->h:Landroid/location/Location;

    return-object p0
.end method

.method public static a(Lct/cr;Lct/cd;)Lct/cr;
    .locals 5

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 415
    iget-object v0, p0, Lct/cr;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 417
    iget p1, p1, Lct/cd;->f:I

    if-eqz v0, :cond_0

    const-string v2, ","

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 422
    :cond_0
    iget-object v0, p0, Lct/cr;->b:Lct/cn;

    if-eqz v0, :cond_1

    .line 424
    iget v2, v0, Lct/cn;->d:F

    float-to-double v2, v2

    invoke-static {v2, v3, v1, p1}, Lcom/tencent/tencentmap/lbssdk/service/e;->r(DII)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Lct/cn;->d:F

    :cond_1
    return-object p0
.end method

.method static synthetic a(Lct/cr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lct/cr;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lct/cr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 431
    sget-object v0, Lct/cr;->a:Lct/cr;

    if-eq p0, v0, :cond_0

    return-void

    .line 432
    :cond_0
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "location failed"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lct/cr;)Landroid/os/Bundle;
    .locals 0

    .line 25
    iget-object p0, p0, Lct/cr;->f:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic b(Lct/cr;Ljava/lang/String;)Lct/cr;
    .locals 0

    .line 25
    iput-object p1, p0, Lct/cr;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lct/cr;)Lct/cr;
    .locals 6

    .line 25
    new-instance v0, Lct/cr;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lct/cr;-><init>(I)V

    if-nez p0, :cond_0

    new-instance p0, Lct/cn;

    invoke-direct {p0}, Lct/cn;-><init>()V

    iput-object p0, v0, Lct/cr;->b:Lct/cn;

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lct/cr;->b:Lct/cn;

    new-instance v2, Lct/cn;

    invoke-direct {v2}, Lct/cn;-><init>()V

    if-eqz v1, :cond_1

    iget-wide v3, v1, Lct/cn;->a:D

    iput-wide v3, v2, Lct/cn;->a:D

    iget-wide v3, v1, Lct/cn;->b:D

    iput-wide v3, v2, Lct/cn;->b:D

    iget-wide v3, v1, Lct/cn;->c:D

    iput-wide v3, v2, Lct/cn;->c:D

    iget v3, v1, Lct/cn;->d:F

    iput v3, v2, Lct/cn;->d:F

    iget-object v3, v1, Lct/cn;->e:Ljava/lang/String;

    iput-object v3, v2, Lct/cn;->e:Ljava/lang/String;

    iget-object v1, v1, Lct/cn;->f:Ljava/lang/String;

    iput-object v1, v2, Lct/cn;->f:Ljava/lang/String;

    :cond_1
    iput-object v2, v0, Lct/cr;->b:Lct/cn;

    iget v1, p0, Lct/cr;->c:I

    iput v1, v0, Lct/cr;->c:I

    iget-object v1, p0, Lct/cr;->d:Ljava/lang/String;

    iput-object v1, v0, Lct/cr;->d:Ljava/lang/String;

    iget-object v1, p0, Lct/cr;->e:Lct/cm;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v2, Lct/cm;

    invoke-direct {v2}, Lct/cm;-><init>()V

    iget v3, v1, Lct/cm;->a:I

    iput v3, v2, Lct/cm;->a:I

    iget-object v3, v1, Lct/cm;->c:Lct/cp;

    invoke-static {v3}, Lct/cp;->a(Lct/cp;)Lct/cp;

    move-result-object v3

    iput-object v3, v2, Lct/cm;->c:Lct/cp;

    iget-object v1, v1, Lct/cm;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/map/geolocation/TencentPoi;

    iget-object v4, v2, Lct/cm;->b:Ljava/util/ArrayList;

    new-instance v5, Lct/co;

    invoke-direct {v5, v3}, Lct/co;-><init>(Lcom/tencent/map/geolocation/TencentPoi;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lct/cr;->e:Lct/cm;

    iget-object v1, p0, Lct/cr;->f:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lct/cr;->f:Landroid/os/Bundle;

    iget-object p0, p0, Lct/cr;->f:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 353
    iget-object v0, p0, Lct/cr;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ","

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 356
    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 358
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(J)Lct/cr;
    .locals 0

    .line 136
    iput-wide p1, p0, Lct/cr;->j:J

    return-object p0
.end method

.method public final a(Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lct/cr;->b:Lct/cn;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 172
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v4

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    mul-double v2, v2, v4

    .line 174
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    .line 176
    iget-object v4, p0, Lct/cr;->b:Lct/cn;

    iput-wide v0, v4, Lct/cn;->a:D

    .line 177
    iget-object v0, p0, Lct/cr;->b:Lct/cn;

    iput-wide v2, v0, Lct/cn;->b:D

    .line 178
    iget-object v0, p0, Lct/cr;->b:Lct/cn;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    iput-wide v1, v0, Lct/cn;->c:D

    .line 179
    iget-object v0, p0, Lct/cr;->b:Lct/cn;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iput p1, v0, Lct/cn;->d:F

    :cond_0
    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAccuracy()F
    .locals 1

    .line 261
    iget-object v0, p0, Lct/cr;->b:Lct/cn;

    if-eqz v0, :cond_0

    iget v0, v0, Lct/cn;->d:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 2

    .line 276
    iget v0, p0, Lct/cr;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lct/cr;->f:Landroid/os/Bundle;

    const-string v1, "addrdesp.name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Lct/cr;->b:Lct/cn;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lct/cn;->f:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final getAltitude()D
    .locals 2

    .line 257
    iget-object v0, p0, Lct/cr;->b:Lct/cn;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lct/cn;->c:D

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getAreaStat()Ljava/lang/Integer;
    .locals 1

    .line 315
    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    if-eqz v0, :cond_0

    iget v0, v0, Lct/cm;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBearing()F
    .locals 1

    .line 335
    iget-object v0, p0, Lct/cr;->h:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    return v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lct/cm;->c:Lct/cp;

    iget-object v0, v0, Lct/cp;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getCityCode()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lct/cm;->c:Lct/cp;

    iget-object v0, v0, Lct/cp;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getDistrict()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lct/cm;->c:Lct/cp;

    iget-object v0, v0, Lct/cp;->g:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getElapsedRealtime()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lct/cr;->i:J

    return-wide v0
.end method

.method public final getExtra()Landroid/os/Bundle;
    .locals 1

    .line 330
    iget-object v0, p0, Lct/cr;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    .line 249
    iget-object v0, p0, Lct/cr;->b:Lct/cn;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lct/cn;->a:D

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .line 253
    iget-object v0, p0, Lct/cr;->b:Lct/cn;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lct/cn;->b:D

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 265
    iget v0, p0, Lct/cr;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lct/cr;->f:Landroid/os/Bundle;

    const-string v1, "addrdesp.name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :cond_0
    iget-object v0, p0, Lct/cr;->b:Lct/cn;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lct/cn;->e:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final getNation()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lct/cm;->c:Lct/cp;

    iget-object v0, v0, Lct/cp;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getPoiList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/map/geolocation/TencentPoi;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lct/cr;->e:Lct/cm;

    iget-object v1, v1, Lct/cm;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lct/cr;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvince()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lct/cm;->c:Lct/cp;

    iget-object v0, v0, Lct/cp;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getSpeed()F
    .locals 1

    .line 340
    iget-object v0, p0, Lct/cr;->h:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    return v0
.end method

.method public final getStreet()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lct/cm;->c:Lct/cp;

    iget-object v0, v0, Lct/cp;->j:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getStreetNo()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lct/cm;->c:Lct/cp;

    iget-object v0, v0, Lct/cp;->k:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getTime()J
    .locals 2

    .line 345
    iget-wide v0, p0, Lct/cr;->j:J

    return-wide v0
.end method

.method public final getTown()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lct/cm;->c:Lct/cp;

    iget-object v0, v0, Lct/cp;->h:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getVillage()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lct/cr;->e:Lct/cm;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lct/cm;->c:Lct/cp;

    iget-object v0, v0, Lct/cp;->i:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TxLocation{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "level="

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lct/cr;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "name="

    .line 372
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "address="

    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "provider="

    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "latitude="

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "longitude="

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "altitude="

    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "accuracy="

    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cityCode="

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "areaStat="

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getAreaStat()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "nation="

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getNation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "province="

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "city="

    .line 385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "district="

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "street="

    .line 387
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "streetNo="

    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getStreetNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "town="

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getTown()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "village="

    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getVillage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bearing="

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getBearing()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "time="

    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lct/cr;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "poilist=["

    .line 395
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p0}, Lct/cr;->getPoiList()Ljava/util/List;

    move-result-object v2

    .line 397
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/map/geolocation/TencentPoi;

    .line 398
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "]"

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 77
    iget p2, p0, Lct/cr;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {p0}, Lct/cr;->getProvider()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lct/cr;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 81
    invoke-virtual {p0}, Lct/cr;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 82
    invoke-virtual {p0}, Lct/cr;->getAccuracy()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 83
    invoke-virtual {p0}, Lct/cr;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 84
    invoke-virtual {p0}, Lct/cr;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lct/cr;->getNation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lct/cr;->getProvince()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lct/cr;->getCity()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lct/cr;->getDistrict()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lct/cr;->getStreet()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lct/cr;->getStreetNo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lct/cr;->e:Lct/cm;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lct/cm;->c:Lct/cp;

    iget-object p2, p2, Lct/cp;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lct/cr;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-wide v0, p0, Lct/cr;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-object p2, p0, Lct/cr;->f:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
