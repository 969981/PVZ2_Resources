.class public Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$GPUInfo;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPUInfo"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private glExtensions:Ljava/lang/String;

.field private glRenderer:Ljava/lang/String;

.field private glVendor:Ljava/lang/String;

.field private glVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGlExtensions()Ljava/lang/String;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$GPUInfo;->glExtensions:Ljava/lang/String;

    return-object v0
.end method

.method public getGlRenderer()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$GPUInfo;->glRenderer:Ljava/lang/String;

    return-object v0
.end method

.method public getGlVendor()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$GPUInfo;->glVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getGlVersion()Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$GPUInfo;->glVersion:Ljava/lang/String;

    return-object v0
.end method
