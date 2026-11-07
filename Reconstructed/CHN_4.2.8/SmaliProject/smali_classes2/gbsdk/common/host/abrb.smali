.class public final Lgbsdk/common/host/abrb;
.super Ljava/lang/Object;
.source "ComponentSwitchConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abrb$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 J\u0008\u0010\"\u001a\u00020#H\u0016R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001e\u0010\u000c\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001e\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001e\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001e\u0010\u0015\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001e\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001e\u0010\u001b\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008\u00a8\u0006%"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/base/impl/settings/ComponentSwitchConfig;",
        "",
        "()V",
        "adFeatureEnable",
        "",
        "getAdFeatureEnable",
        "()Z",
        "setAdFeatureEnable",
        "(Z)V",
        "awemeAuthEnable",
        "getAwemeAuthEnable",
        "setAwemeAuthEnable",
        "awemeShareEnable",
        "getAwemeShareEnable",
        "setAwemeShareEnable",
        "broadcastEnable",
        "getBroadcastEnable",
        "setBroadcastEnable",
        "initSwitchEnable",
        "getInitSwitchEnable",
        "setInitSwitchEnable",
        "profileEnable",
        "getProfileEnable",
        "setProfileEnable",
        "screenCapEnable",
        "getScreenCapEnable",
        "setScreenCapEnable",
        "videoEditEnable",
        "getVideoEditEnable",
        "setVideoEditEnable",
        "getScreenCapAndHWCheck",
        "context",
        "Landroid/content/Context;",
        "getVideEditAndHWCheck",
        "toString",
        "",
        "Companion",
        "ch_base_impl_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final DF:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final Dw:Lgbsdk/common/host/abrb$ab;

.field private static final SETTINGS_NAME:Ljava/lang/String; = "component_function_switch"

.field private static final TAG:Ljava/lang/String; = "ComponentSwitchConfig"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public DA:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_edit"
    .end annotation
.end field

.field public DB:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_feature"
    .end annotation
.end field

.field public DC:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "broadcast_feature"
    .end annotation
.end field

.field public DD:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "init_switch"
    .end annotation
.end field

.field public DE:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_feature"
    .end annotation
.end field

.field public Dx:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "douyin_share"
    .end annotation
.end field

.field public Dy:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "douyin_auth"
    .end annotation
.end field

.field public Dz:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screen_cap"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgbsdk/common/host/abrb$ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbsdk/common/host/abrb$ab;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgbsdk/common/host/abrb;->Dw:Lgbsdk/common/host/abrb$ab;

    .line 25
    sget-object v0, Lgbsdk/common/host/abrb$ac;->DG:Lgbsdk/common/host/abrb$ac;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abrb;->DF:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lgbsdk/common/host/abrb;->Dx:Z

    .line 62
    iput-boolean v0, p0, Lgbsdk/common/host/abrb;->Dy:Z

    .line 65
    iput-boolean v0, p0, Lgbsdk/common/host/abrb;->Dz:Z

    .line 68
    iput-boolean v0, p0, Lgbsdk/common/host/abrb;->DA:Z

    .line 71
    iput-boolean v0, p0, Lgbsdk/common/host/abrb;->DB:Z

    .line 74
    iput-boolean v0, p0, Lgbsdk/common/host/abrb;->DC:Z

    .line 77
    iput-boolean v0, p0, Lgbsdk/common/host/abrb;->DD:Z

    .line 80
    iput-boolean v0, p0, Lgbsdk/common/host/abrb;->DE:Z

    return-void
.end method


# virtual methods
.method public final aq(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrb;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "de895fff2f10a9f6d5ecd5b4105338d2"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object p1, Lgbsdk/common/host/abrb;->Dw:Lgbsdk/common/host/abrb$ab;

    invoke-virtual {p1}, Lgbsdk/common/host/abrb$ab;->eq()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 88
    :cond_1
    iget-boolean p1, p0, Lgbsdk/common/host/abrb;->DA:Z

    return p1
.end method

.method public final ar(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abrb;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "0d09775195d58dada3a908ac937d45d1"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object p1, Lgbsdk/common/host/abrb;->Dw:Lgbsdk/common/host/abrb$ab;

    invoke-virtual {p1}, Lgbsdk/common/host/abrb$ab;->eq()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 96
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_2

    return v1

    .line 99
    :cond_2
    iget-boolean p1, p0, Lgbsdk/common/host/abrb;->Dz:Z

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrb;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "575051079c219d2204711c73f08bcbcd"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentSwitchConfig(awemeShareEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lgbsdk/common/host/abrb;->Dx:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", awemeAuthEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-boolean v1, p0, Lgbsdk/common/host/abrb;->Dy:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", screenCapEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-boolean v1, p0, Lgbsdk/common/host/abrb;->Dz:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", videoEditEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-boolean v1, p0, Lgbsdk/common/host/abrb;->DA:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adFeatureEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-boolean v1, p0, Lgbsdk/common/host/abrb;->DB:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", broadCastEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-boolean v1, p0, Lgbsdk/common/host/abrb;->DC:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", initSwitchEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-boolean v1, p0, Lgbsdk/common/host/abrb;->DD:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", profileEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-boolean v1, p0, Lgbsdk/common/host/abrb;->DE:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
