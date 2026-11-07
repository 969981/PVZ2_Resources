.class public final Lgbsdk/optional/applog/abcg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/bytedance/applog/exposure/ViewExposureData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/applog/exposure/ViewExposureData<",
            "Lcom/bytedance/applog/exposure/ViewExposureConfig;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Lgbsdk/optional/applog/abfi;

.field public d:J


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/applog/exposure/ViewExposureData;ZLgbsdk/optional/applog/abfi;JI)V
    .locals 1

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_1

    sget-object p3, Lgbsdk/optional/applog/abfi;->e:Lgbsdk/optional/applog/abfi;

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    const-wide/16 p4, 0x0

    :cond_2
    const-string p6, "data"

    .line 1
    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "viewExposureTriggerType"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abcg;->a:Lcom/bytedance/applog/exposure/ViewExposureData;

    iput-boolean p2, p0, Lgbsdk/optional/applog/abcg;->b:Z

    iput-object p3, p0, Lgbsdk/optional/applog/abcg;->c:Lgbsdk/optional/applog/abfi;

    iput-wide p4, p0, Lgbsdk/optional/applog/abcg;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lgbsdk/optional/applog/abfi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lgbsdk/optional/applog/abcg;->c:Lgbsdk/optional/applog/abfi;

    return-void
.end method
