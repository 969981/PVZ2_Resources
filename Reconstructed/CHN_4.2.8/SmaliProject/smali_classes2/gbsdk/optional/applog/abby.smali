.class public Lgbsdk/optional/applog/abby;
.super Lgbsdk/optional/applog/aq;
.source ""


# static fields
.field public static final a:[J


# instance fields
.field public final b:Ljava/lang/String;

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    aput-wide v2, v0, v1

    sput-object v0, Lgbsdk/optional/applog/abby;->a:[J

    return-void
.end method

.method public constructor <init>(Lgbsdk/optional/applog/abbj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lgbsdk/optional/applog/aq;-><init>(Lgbsdk/optional/applog/abbj;)V

    const/4 p1, 0x0

    iput p1, p0, Lgbsdk/optional/applog/abby;->i:I

    iput-object p2, p0, Lgbsdk/optional/applog/abby;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public c()[J
    .locals 1

    sget-object v0, Lgbsdk/optional/applog/abby;->a:[J

    return-object v0
.end method

.method public d()Z
    .locals 4

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->k:Lgbsdk/optional/applog/abcz;

    .line 2
    iget-object v1, p0, Lgbsdk/optional/applog/abby;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lgbsdk/optional/applog/abcz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lgbsdk/optional/applog/abby;->i:I

    add-int/2addr v0, v2

    :goto_0
    iput v0, p0, Lgbsdk/optional/applog/abby;->i:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lgbsdk/optional/applog/aq;->h:Lcom/bytedance/bdtracker/d;

    iget-object v3, p0, Lgbsdk/optional/applog/abby;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/bdtracker/d;->setRangersEventVerifyEnable(ZLjava/lang/String;)V

    :cond_1
    return v2
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "RangersEventVerify"

    return-object v0
.end method
