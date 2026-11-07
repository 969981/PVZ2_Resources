.class public Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$LolilopImpl;
.super Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$BaseImpl;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LolilopImpl"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 681
    invoke-direct {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$BaseImpl;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$1;)V
    .locals 0

    .line 681
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$LolilopImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportABIS()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$LolilopImpl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3c6158301b464349177ee7d5095c2ffa"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 685
    :cond_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_1

    return-object v2

    .line 689
    :cond_1
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method
