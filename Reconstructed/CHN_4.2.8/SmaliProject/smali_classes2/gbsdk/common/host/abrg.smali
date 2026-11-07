.class public Lgbsdk/common/host/abrg;
.super Ljava/lang/Object;
.source "PerformanceConfig.java"


# static fields
.field public static final SETTINGS_NAME:Ljava/lang/String; = "performance_config"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public Dp:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shrink_vm_switch"
    .end annotation
.end field

.field public Dq:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "godzilla_switch"
    .end annotation
.end field

.field public Dr:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thread_size"
    .end annotation
.end field

.field public Ds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "portraits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/GBCrashPortrait;",
            ">;"
        }
    .end annotation
.end field

.field public Dt:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "launch_strategy"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/LaunchStrategy;",
            ">;"
        }
    .end annotation
.end field

.field public Du:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "launch_crash_limit"
    .end annotation
.end field

.field public Dv:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "launch_crash_timeout"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lgbsdk/common/host/abrg;->Dp:Z

    .line 21
    iput-boolean v0, p0, Lgbsdk/common/host/abrg;->Dq:Z

    const/16 v0, 0x200

    .line 24
    iput v0, p0, Lgbsdk/common/host/abrg;->Dr:I

    return-void
.end method

.method public static ep()Lgbsdk/common/host/abrg;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrg;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "5bb26ed1fdfc053d0983567cb3170840"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lgbsdk/common/host/abrg;

    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lgbsdk/common/host/abrl;->De:Lgbsdk/common/host/abrg;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lgbsdk/common/host/abrg;

    const-string v1, "performance_config"

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/cache/SettingsJsonParser;->parse(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abrg;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lgbsdk/common/host/abrg;

    invoke-direct {v0}, Lgbsdk/common/host/abrg;-><init>()V

    :cond_1
    return-object v0
.end method
