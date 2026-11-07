.class public Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportABISCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$LolilopImpl;,
        Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$BaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$BaseImpl;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 667
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 668
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$LolilopImpl;

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$LolilopImpl;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$1;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat;->IMPL:Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$BaseImpl;

    goto :goto_0

    .line 670
    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$BaseImpl;

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$BaseImpl;-><init>(Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$1;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat;->IMPL:Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$BaseImpl;

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportABIS()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "c11cb617a733d27797eae668464eb00f"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 661
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat;->IMPL:Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$BaseImpl;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/util/DeviceInfoUtils$SupportABISCompat$BaseImpl;->getSupportABIS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
