.class public final Lgbsdk/common/host/abty;
.super Ljava/lang/Object;
.source "GodzillaHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abty$ac;,
        Lgbsdk/common/host/abty$ab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001b\u001cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0008H\u0002J\u0006\u0010\u0012\u001a\u00020\u0004J\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00142\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0006\u0010\u001a\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/impl/performance/GodzillaHelper;",
        "",
        "()V",
        "LAUNCH_CRASH_LIMIT",
        "",
        "LAUNCH_CRASH_TIMEOUT",
        "",
        "STRATEGY_TYPE_CLEAR_ALL",
        "",
        "STRATEGY_TYPE_CLEAR_DB",
        "STRATEGY_TYPE_CLEAR_SETTINGS",
        "STRATEGY_TYPE_DEL_FILE",
        "STRATEGY_TYPE_DEL_FOLDER",
        "STRATEGY_TYPE_HANDLE_PLUGIN",
        "getCrashHandler",
        "Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;",
        "strategyType",
        "params",
        "getCrashLimit",
        "getCrashPortraitList",
        "",
        "Lcom/bytedance/platform/godzilla/common/CrashPortrait;",
        "getLaunchStrategyList",
        "Lcom/bytedance/platform/godzilla/launch/safe/Strategy;",
        "context",
        "Landroid/content/Context;",
        "getWatchDogTime",
        "DownloadPluginHandler",
        "SettingClear",
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
.field private static final EA:Ljava/lang/String; = "handle_plugin"

.field private static final EB:I = 0x3

.field private static final EC:J = 0x2710L

.field public static final Eu:Lgbsdk/common/host/abty;

.field private static final Ev:Ljava/lang/String; = "del_folder"

.field private static final Ew:Ljava/lang/String; = "del_file"

.field private static final Ex:Ljava/lang/String; = "clear_db"

.field private static final Ey:Ljava/lang/String; = "clear_settings"

.field private static final Ez:Ljava/lang/String; = "clear_all"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/common/host/abty;

    invoke-direct {v0}, Lgbsdk/common/host/abty;-><init>()V

    sput-object v0, Lgbsdk/common/host/abty;->Eu:Lgbsdk/common/host/abty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final O(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abty;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2b4c5b0f1f21ac6fddacd2bb6fdf17e7"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;

    return-object p1

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "del_file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 73
    :cond_1
    new-instance p1, Lcom/bytedance/platform/godzilla/launch/safe/impl/FileDeleteHandler;

    invoke-direct {p1, p2}, Lcom/bytedance/platform/godzilla/launch/safe/impl/FileDeleteHandler;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;

    goto :goto_1

    :sswitch_1
    const-string v0, "clear_db"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 75
    :cond_2
    new-instance p1, Lcom/bytedance/platform/godzilla/launch/safe/impl/DatabaseDeleteHandler;

    invoke-direct {p1, p2}, Lcom/bytedance/platform/godzilla/launch/safe/impl/DatabaseDeleteHandler;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;

    goto :goto_1

    :sswitch_2
    const-string v0, "handle_plugin"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 78
    :cond_3
    new-instance p1, Lgbsdk/common/host/abty$ab;

    invoke-direct {p1, p2}, Lgbsdk/common/host/abty$ab;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;

    goto :goto_1

    :sswitch_3
    const-string v0, "del_folder"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 74
    :cond_4
    new-instance p1, Lcom/bytedance/platform/godzilla/launch/safe/impl/FolderDeleteHandler;

    invoke-direct {p1, p2}, Lcom/bytedance/platform/godzilla/launch/safe/impl/FolderDeleteHandler;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;

    goto :goto_1

    :sswitch_4
    const-string p2, "clear_all"

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 77
    :cond_5
    new-instance p1, Lcom/bytedance/platform/godzilla/launch/safe/impl/ClearAllDataHandler;

    invoke-direct {p1}, Lcom/bytedance/platform/godzilla/launch/safe/impl/ClearAllDataHandler;-><init>()V

    check-cast p1, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;

    goto :goto_1

    :sswitch_5
    const-string v0, "clear_settings"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 76
    :cond_6
    new-instance p1, Lcom/bytedance/platform/godzilla/launch/safe/impl/SettingClearHandler;

    new-instance v0, Lgbsdk/common/host/abty$ac;

    invoke-direct {v0, p2}, Lgbsdk/common/host/abty$ac;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/bytedance/platform/godzilla/launch/safe/impl/SettingClearHandler$SettingClear;

    invoke-direct {p1, v0}, Lcom/bytedance/platform/godzilla/launch/safe/impl/SettingClearHandler;-><init>(Lcom/bytedance/platform/godzilla/launch/safe/impl/SettingClearHandler$SettingClear;)V

    check-cast p1, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;

    goto :goto_1

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x709a022b -> :sswitch_5
        -0x4bbb8f51 -> :sswitch_4
        0x147c0322 -> :sswitch_3
        0x25ec412a -> :sswitch_2
        0x2f1afbb0 -> :sswitch_1
        0x3080f930 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final as(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/platform/godzilla/launch/safe/Strategy;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abty;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b1147e78abb9babae295ac6d04194d75"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 53
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 54
    invoke-static {}, Lgbsdk/common/host/abrg;->ep()Lgbsdk/common/host/abrg;

    move-result-object v1

    iget-object v1, v1, Lgbsdk/common/host/abrg;->Dt:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 55
    check-cast v1, Ljava/lang/Iterable;

    .line 136
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/LaunchStrategy;

    .line 56
    new-instance v3, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashPortrait;

    invoke-direct {v3}, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashPortrait;-><init>()V

    .line 57
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/LaunchStrategy;->processName:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashPortrait;->processName:Ljava/lang/String;

    .line 58
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/LaunchStrategy;->clazzName:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashPortrait;->clazzName:Ljava/lang/String;

    .line 59
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/LaunchStrategy;->methodName:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashPortrait;->methodName:Ljava/lang/String;

    .line 60
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/LaunchStrategy;->threadName:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashPortrait;->threadName:Ljava/lang/String;

    .line 61
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/LaunchStrategy;->detailMessage:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashPortrait;->detailMessage:Ljava/lang/String;

    .line 62
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/LaunchStrategy;->throwableClassName:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashPortrait;->throwableClassName:Ljava/lang/String;

    .line 63
    iget v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/LaunchStrategy;->osVersion:I

    iput v4, v3, Lcom/bytedance/platform/godzilla/launch/safe/api/CrashPortrait;->osVersion:I

    .line 64
    sget-object v4, Lgbsdk/common/host/abty;->Eu:Lgbsdk/common/host/abty;

    iget-object v5, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/LaunchStrategy;->strategyType:Ljava/lang/String;

    iget-object v2, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/LaunchStrategy;->param:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lgbsdk/common/host/abty;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;

    move-result-object v2

    .line 65
    new-instance v4, Lcom/bytedance/platform/godzilla/launch/safe/Strategy;

    sget-object v5, Lgbsdk/common/host/abty;->Eu:Lgbsdk/common/host/abty;

    invoke-virtual {v5}, Lgbsdk/common/host/abty;->eM()I

    move-result v5

    invoke-direct {v4, v3, v2, v5, p1}, Lcom/bytedance/platform/godzilla/launch/safe/Strategy;-><init>(Lcom/bytedance/platform/godzilla/launch/safe/api/CrashPortrait;Lcom/bytedance/platform/godzilla/launch/safe/api/CrashHandler;ILandroid/content/Context;)V

    .line 66
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final eL()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/platform/godzilla/common/CrashPortrait;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abty;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ac0e192a985f679a1bde145afd185114"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 36
    invoke-static {}, Lgbsdk/common/host/abrg;->ep()Lgbsdk/common/host/abrg;

    move-result-object v1

    iget-object v1, v1, Lgbsdk/common/host/abrg;->Ds:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 37
    check-cast v1, Ljava/lang/Iterable;

    .line 134
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/GBCrashPortrait;

    .line 38
    new-instance v3, Lcom/bytedance/platform/godzilla/common/CrashPortrait;

    invoke-direct {v3}, Lcom/bytedance/platform/godzilla/common/CrashPortrait;-><init>()V

    .line 39
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/GBCrashPortrait;->processName:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/common/CrashPortrait;->processName:Ljava/lang/String;

    .line 40
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/GBCrashPortrait;->clazzName:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/common/CrashPortrait;->clazzName:Ljava/lang/String;

    .line 41
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/GBCrashPortrait;->methodName:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/common/CrashPortrait;->methodName:Ljava/lang/String;

    .line 42
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/GBCrashPortrait;->threadName:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/common/CrashPortrait;->threadName:Ljava/lang/String;

    .line 43
    iget v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/GBCrashPortrait;->updateVersion:I

    iput v4, v3, Lcom/bytedance/platform/godzilla/common/CrashPortrait;->updateVersion:I

    .line 44
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/GBCrashPortrait;->detailMessage:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/common/CrashPortrait;->detailMessage:Ljava/lang/String;

    .line 45
    iget-object v4, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/GBCrashPortrait;->throwableClassName:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/platform/godzilla/common/CrashPortrait;->throwableClassName:Ljava/lang/String;

    .line 46
    iget v2, v2, Lcom/bytedance/ttgame/tob/common/host/base/impl/performance/GBCrashPortrait;->osVersion:I

    iput v2, v3, Lcom/bytedance/platform/godzilla/common/CrashPortrait;->osVersion:I

    .line 47
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final eM()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abty;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8bd38fc2446dc36c159be4d6d60aa421"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 84
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abrg;->ep()Lgbsdk/common/host/abrg;

    move-result-object v0

    iget v0, v0, Lgbsdk/common/host/abrg;->Du:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public final eN()J
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abty;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1172209380b8a49ffb92d61c6188d436"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 93
    :cond_0
    invoke-static {}, Lgbsdk/common/host/abrg;->ep()Lgbsdk/common/host/abrg;

    move-result-object v0

    iget-wide v0, v0, Lgbsdk/common/host/abrg;->Dv:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2710

    :goto_0
    return-wide v0
.end method
