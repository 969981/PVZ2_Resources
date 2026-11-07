.class public final Lct/cd;
.super Lct/cg;
.source "TL"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field private final i:J

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lct/cg;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lct/cd;->a:I

    .line 29
    iput v0, p0, Lct/cd;->b:I

    iput v0, p0, Lct/cd;->c:I

    iput v0, p0, Lct/cd;->d:I

    iput v0, p0, Lct/cd;->e:I

    iput v0, p0, Lct/cd;->f:I

    const v0, 0x7fffffff

    .line 30
    iput v0, p0, Lct/cd;->g:I

    iput v0, p0, Lct/cd;->h:I

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/cd;->i:J

    return-void
.end method

.method public static a(Lct/be;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lct/cd;
    .locals 5

    .line 76
    invoke-virtual {p0}, Lct/be;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lct/be;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 81
    new-instance v1, Lct/cd;

    invoke-direct {v1}, Lct/cd;-><init>()V

    .line 83
    instance-of v2, p1, Landroid/telephony/cdma/CdmaCellLocation;

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    .line 84
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 85
    iput v4, v1, Lct/cd;->a:I

    .line 86
    invoke-direct {v1, p0, v0}, Lct/cd;->a(Lct/be;Landroid/telephony/TelephonyManager;)V

    .line 87
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result p0

    iput p0, v1, Lct/cd;->c:I

    .line 88
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result p0

    iput p0, v1, Lct/cd;->d:I

    .line 89
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    iput p0, v1, Lct/cd;->e:I

    .line 90
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result p0

    iput p0, v1, Lct/cd;->g:I

    .line 91
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result p0

    iput p0, v1, Lct/cd;->h:I

    if-nez p2, :cond_1

    .line 93
    iput v3, v1, Lct/cd;->f:I

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p0

    .line 96
    iput p0, v1, Lct/cd;->f:I

    goto :goto_0

    .line 100
    :cond_2
    :try_start_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v2, 0x1

    .line 101
    iput v2, v1, Lct/cd;->a:I

    .line 102
    invoke-direct {v1, p0, v0}, Lct/cd;->a(Lct/be;Landroid/telephony/TelephonyManager;)V

    .line 103
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p0

    iput p0, v1, Lct/cd;->d:I

    .line 104
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p0

    iput p0, v1, Lct/cd;->e:I

    if-nez p2, :cond_3

    .line 112
    iput v3, v1, Lct/cd;->f:I

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, -0x71

    .line 115
    iput p0, v1, Lct/cd;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v1

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lct/be;Landroid/telephony/TelephonyManager;)V
    .locals 2

    .line 124
    invoke-virtual {p1}, Lct/be;->h()Lct/bf;

    move-result-object p1

    .line 125
    iget v0, p1, Lct/bf;->i:I

    .line 126
    iget v1, p1, Lct/bf;->j:I

    if-lez v0, :cond_0

    if-ltz v1, :cond_0

    .line 129
    iput v0, p0, Lct/cd;->b:I

    .line 130
    iput v1, p0, Lct/cd;->c:I

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 133
    invoke-static {p2, v0}, Lct/cs;->a(Landroid/telephony/TelephonyManager;[I)V

    const/4 p2, 0x0

    .line 136
    aget p2, v0, p2

    iput p2, p1, Lct/bf;->i:I

    const/4 p2, 0x1

    .line 137
    aget p2, v0, p2

    iput p2, p1, Lct/bf;->j:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lct/cd;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lct/cd;->j:Ljava/util/List;

    .line 163
    :cond_0
    iget-object v0, p0, Lct/cd;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 174
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lct/cd;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 176
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lct/cd;->j:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TxCellInfo [PhoneType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lct/cd;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MCC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lct/cd;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MNC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lct/cd;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", LAC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lct/cd;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lct/cd;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RSSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lct/cd;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", LAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lct/cd;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", LNG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lct/cd;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lct/cd;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
