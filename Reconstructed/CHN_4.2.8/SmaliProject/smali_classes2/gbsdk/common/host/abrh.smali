.class public Lgbsdk/common/host/abrh;
.super Ljava/lang/Object;
.source "DebugPanelConfig.java"


# static fields
.field public static final SETTINGS_NAME:Ljava/lang/String; = "debug_panel_config"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public Do:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dp_enabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eo()Lgbsdk/common/host/abrh;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrh;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "27c5acfe37ec53fe0b7274232d86fd96"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abrh;

    return-object v0

    .line 17
    :cond_0
    const-class v0, Lgbsdk/common/host/abrh;

    const-string v1, "debug_panel_config"

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->parse(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abrh;

    if-nez v0, :cond_1

    .line 19
    new-instance v0, Lgbsdk/common/host/abrh;

    invoke-direct {v0}, Lgbsdk/common/host/abrh;-><init>()V

    :cond_1
    return-object v0
.end method
