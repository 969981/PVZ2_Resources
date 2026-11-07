.class final Lct/bq;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static c:D

.field private static d:D


# instance fields
.field private final a:Lct/be;

.field private final b:Lct/ca;

.field private e:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lct/be;Lct/ca;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lct/bq;->a:Lct/be;

    .line 36
    iput-object p2, p0, Lct/bq;->b:Lct/ca;

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/location/Location;
    .locals 5

    .line 165
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "location"

    .line 166
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "latitude"

    .line 168
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "longitude"

    .line 169
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 171
    new-instance p0, Landroid/location/Location;

    const-string v4, ""

    invoke-direct {p0, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 173
    invoke-virtual {p0, v2, v3}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 178
    :catch_0
    sget-object p0, Lct/bp;->b:Landroid/location/Location;

    return-object p0
.end method

.method public static a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 78
    sput-wide v0, Lct/bq;->c:D

    .line 79
    sput-wide v0, Lct/bq;->d:D

    return-void
.end method

.method public static a(Landroid/location/Location;DD)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "lat"

    .line 110
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "lng"

    .line 111
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 112
    invoke-virtual {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/location/Location;)Z
    .locals 5

    .line 93
    invoke-static {p0}, Lct/bq;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    .line 94
    sget-object v0, Lct/bp;->b:Landroid/location/Location;

    if-eq p0, v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {p1, v0, v1, v2, v3}, Lct/bq;->a(Landroid/location/Location;DD)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    sput-wide v1, Lct/bq;->c:D

    .line 100
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    sub-double/2addr v1, p0

    sput-wide v1, Lct/bq;->d:D

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    new-array v3, v2, [D

    .line 50
    sget-wide v4, Lct/bq;->c:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpl-double v10, v4, v6

    if-lez v10, :cond_0

    sget-wide v4, Lct/bq;->d:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v10, v4, v6

    if-lez v10, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    iget-object v4, v0, Lct/bq;->e:Landroid/location/Location;

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    iget-object v4, v0, Lct/bq;->e:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v10 .. v17}, Lct/b$a;->a(DDDD)D

    move-result-wide v4

    const-wide v6, 0x4097700000000000L    # 1500.0

    cmpg-double v10, v4, v6

    if-gez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sget-wide v6, Lct/bq;->c:D

    add-double/2addr v4, v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    sget-wide v10, Lct/bq;->d:D

    add-double/2addr v6, v10

    aput-wide v4, v3, v9

    aput-wide v6, v3, v8

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    iput-object v1, v0, Lct/bq;->e:Landroid/location/Location;

    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_4

    .line 52
    aget-wide v4, v3, v9

    aget-wide v2, v3, v8

    invoke-static {v1, v4, v5, v2, v3}, Lct/bq;->a(Landroid/location/Location;DD)V

    .line 53
    iget-object v2, v0, Lct/bq;->a:Lct/be;

    invoke-virtual {v2, v1}, Lct/be;->c(Ljava/lang/Object;)V

    return-void

    .line 56
    :cond_4
    iget-object v3, v0, Lct/bq;->b:Lct/ca;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "{\"version\":\""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lct/bq;->a:Lct/be;

    invoke-virtual {v10}, Lct/be;->h()Lct/bf;

    move-result-object v10

    invoke-virtual {v10}, Lct/bf;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\",\"source\":203,\"access_token\":\"160e7bd42dec9428721034e0146fc6dd\",\"location\":{\"latitude\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",\"longitude\":"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "}}"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lct/b$a;->b([B)[B

    move-result-object v4

    invoke-static {v4, v8}, Lct/ca;->a([BI)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lct/ca$a;

    invoke-direct {v6, v2, v4, v5, v1}, Lct/ca$a;-><init>(I[BLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Lct/ca$a;->a(Lct/ca$a;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v3, Lct/ca;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method
