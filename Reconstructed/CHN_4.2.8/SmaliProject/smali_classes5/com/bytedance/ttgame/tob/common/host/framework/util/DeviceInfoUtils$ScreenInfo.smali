.class public Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ScreenInfo;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenInfo"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public dpi:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDpi()I
    .locals 1

    .line 599
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ScreenInfo;->dpi:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 607
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ScreenInfo;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 603
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$ScreenInfo;->width:I

    return v0
.end method
