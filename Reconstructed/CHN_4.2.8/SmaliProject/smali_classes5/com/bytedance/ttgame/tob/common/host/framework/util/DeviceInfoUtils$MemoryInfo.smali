.class public Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$MemoryInfo;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public availableSize:J

.field public totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableSize()J
    .locals 2

    .line 650
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$MemoryInfo;->availableSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 646
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$MemoryInfo;->totalSize:J

    return-wide v0
.end method
