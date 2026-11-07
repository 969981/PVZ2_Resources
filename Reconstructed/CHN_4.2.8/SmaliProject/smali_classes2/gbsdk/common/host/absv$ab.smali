.class public final Lgbsdk/common/host/absv$ab;
.super Ljava/lang/Object;
.source "DataLinkConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/absv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ab"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/main/setting/DataLinkConfig$Companion;",
        "",
        "()V",
        "SETTINGS_NAME",
        "",
        "instance",
        "Lcom/bytedance/ttgame/tob/common/host/main/setting/DataLinkConfig;",
        "getInstance",
        "()Lcom/bytedance/ttgame/tob/common/host/main/setting/DataLinkConfig;",
        "ch_main_tobRelease"
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lgbsdk/common/host/absv$ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final gE()Lgbsdk/common/host/absv;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/absv$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e109ef9da96de7c14d09ce64834d994c"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/absv;

    return-object v0

    :cond_0
    const-class v0, Lgbsdk/common/host/absv;

    const-string v1, "datalink_config"

    .line 14
    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->parse(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/absv;

    if-nez v0, :cond_1

    .line 16
    new-instance v0, Lgbsdk/common/host/absv;

    invoke-direct {v0}, Lgbsdk/common/host/absv;-><init>()V

    :cond_1
    return-object v0
.end method
