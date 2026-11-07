.class public Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$CPUInfo;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CPUInfo"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public coreNums:I

.field public freq:I

.field public model:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoreNums()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$CPUInfo;->coreNums:I

    return v0
.end method

.method public getFreq()I
    .locals 1

    .line 585
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$CPUInfo;->freq:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$CPUInfo;->model:Ljava/lang/String;

    return-object v0
.end method
