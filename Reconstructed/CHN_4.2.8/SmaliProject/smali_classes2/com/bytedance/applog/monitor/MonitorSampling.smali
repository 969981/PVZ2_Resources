.class public final Lcom/bytedance/applog/monitor/MonitorSampling;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR,\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00048\u0006@FX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u0002\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bytedance/applog/monitor/MonitorSampling;",
        "",
        "()V",
        "DEFAULT_SAMPLING_PERCENT",
        "",
        "globalColdLaunchId",
        "",
        "getGlobalColdLaunchId$agent_liteChinaRelease",
        "()Ljava/lang/String;",
        "isSampling",
        "",
        "isSampling$agent_liteChinaRelease",
        "()Z",
        "setSampling$agent_liteChinaRelease",
        "(Z)V",
        "value",
        "samplingPercent",
        "samplingPercent$annotations",
        "getSamplingPercent",
        "()I",
        "setSamplingPercent",
        "(I)V",
        "reCheckIsSampling",
        "agent_liteChinaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/applog/monitor/MonitorSampling;

.field public static a:I = 0x5

.field public static final b:Ljava/lang/String;

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bytedance/applog/monitor/MonitorSampling;

    invoke-direct {v0}, Lcom/bytedance/applog/monitor/MonitorSampling;-><init>()V

    sput-object v0, Lcom/bytedance/applog/monitor/MonitorSampling;->INSTANCE:Lcom/bytedance/applog/monitor/MonitorSampling;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UUID.randomUUID().toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/applog/monitor/MonitorSampling;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/applog/monitor/MonitorSampling;->a()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/applog/monitor/MonitorSampling;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSamplingPercent()I
    .locals 1

    sget v0, Lcom/bytedance/applog/monitor/MonitorSampling;->a:I

    return v0
.end method

.method public static synthetic samplingPercent$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final setSamplingPercent(I)V
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x5

    :cond_1
    sput p0, Lcom/bytedance/applog/monitor/MonitorSampling;->a:I

    sget-object p0, Lcom/bytedance/applog/monitor/MonitorSampling;->INSTANCE:Lcom/bytedance/applog/monitor/MonitorSampling;

    invoke-virtual {p0}, Lcom/bytedance/applog/monitor/MonitorSampling;->a()Z

    move-result p0

    sput-boolean p0, Lcom/bytedance/applog/monitor/MonitorSampling;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    sget-object v0, Lcom/bytedance/applog/monitor/MonitorSampling;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MonitorSampling hash "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    const-string v2, "MonitorSampling samplingPercent "

    invoke-static {v2}, Lgbsdk/optional/applog/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/bytedance/applog/monitor/MonitorSampling;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v1, Lcom/bytedance/applog/monitor/MonitorSampling;->a:I

    if-gt v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public final getGlobalColdLaunchId$agent_liteChinaRelease()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/monitor/MonitorSampling;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final isSampling$agent_liteChinaRelease()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/applog/monitor/MonitorSampling;->c:Z

    return v0
.end method

.method public final setSampling$agent_liteChinaRelease(Z)V
    .locals 0

    sput-boolean p1, Lcom/bytedance/applog/monitor/MonitorSampling;->c:Z

    return-void
.end method
