.class public Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ThreadOOMInfo;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadOOMInfo"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public fdCount:J

.field public maxFdCount:J

.field public threadCount:I

.field public vmPeak:J

.field public vmSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 703
    iput-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ThreadOOMInfo;->vmPeak:J

    .line 706
    iput-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ThreadOOMInfo;->vmSize:J

    .line 709
    iput-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ThreadOOMInfo;->maxFdCount:J

    .line 712
    iput-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ThreadOOMInfo;->fdCount:J

    const/4 v0, -0x1

    .line 715
    iput v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ThreadOOMInfo;->threadCount:I

    return-void
.end method


# virtual methods
.method public getFdCount()J
    .locals 2

    .line 730
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ThreadOOMInfo;->fdCount:J

    return-wide v0
.end method

.method public getMaxFdCount()J
    .locals 2

    .line 726
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ThreadOOMInfo;->maxFdCount:J

    return-wide v0
.end method

.method public getThreadCount()I
    .locals 1

    .line 734
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ThreadOOMInfo;->threadCount:I

    return v0
.end method

.method public getVmPeak()J
    .locals 2

    .line 718
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ThreadOOMInfo;->vmPeak:J

    return-wide v0
.end method

.method public getVmSize()J
    .locals 2

    .line 722
    iget-wide v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ThreadOOMInfo;->vmSize:J

    return-wide v0
.end method
