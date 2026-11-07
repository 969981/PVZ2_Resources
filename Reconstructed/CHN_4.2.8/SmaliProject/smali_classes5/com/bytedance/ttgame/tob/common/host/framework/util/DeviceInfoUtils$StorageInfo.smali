.class public Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$StorageInfo;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageInfo"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public appStorageSize:J

.field public availableExternalSize:J

.field public availableInternalSize:J

.field public totalExternalSize:J

.field public totalInternalSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppStorageSize()J
    .locals 2

    .line 637
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$StorageInfo;->appStorageSize:J

    return-wide v0
.end method

.method public getAvailableExternalSize()J
    .locals 2

    .line 621
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$StorageInfo;->availableExternalSize:J

    return-wide v0
.end method

.method public getAvailableInternalSize()J
    .locals 2

    .line 629
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$StorageInfo;->availableInternalSize:J

    return-wide v0
.end method

.method public getTotalExternalSize()J
    .locals 2

    .line 625
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$StorageInfo;->totalExternalSize:J

    return-wide v0
.end method

.method public getTotalInternalSize()J
    .locals 2

    .line 633
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$StorageInfo;->totalInternalSize:J

    return-wide v0
.end method
