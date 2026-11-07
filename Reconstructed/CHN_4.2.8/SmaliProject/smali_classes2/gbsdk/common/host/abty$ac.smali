.class public final Lgbsdk/common/host/abty$ac;
.super Ljava/lang/Object;
.source "GodzillaHelper.kt"

# interfaces
.implements Lcom/bytedance/platform/godzilla/launch/safe/impl/SettingClearHandler$SettingClear;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ac"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/performance/GodzillaHelper$SettingClear;",
        "Lcom/bytedance/platform/godzilla/launch/safe/impl/SettingClearHandler$SettingClear;",
        "settingsName",
        "",
        "(Ljava/lang/String;)V",
        "clear",
        "",
        "ch_delegate_impl_osdk_tobRelease"
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
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final EF:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "settingsName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/abty$ac;->EF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public eQ()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abty$ac;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1226004348960b8667fae01a55a401ba"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 103
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/library/luffy/Luffy;->Companion:Lcom/bytedance/ttgame/library/luffy/Luffy$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/library/luffy/Luffy$Companion;->getInstance()Lcom/bytedance/ttgame/library/luffy/Luffy;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abty$ac;->EF:Ljava/lang/String;

    const-string v2, "_gsdk_remote_config_repo"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/ttgame/library/luffy/Luffy;->remove(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
