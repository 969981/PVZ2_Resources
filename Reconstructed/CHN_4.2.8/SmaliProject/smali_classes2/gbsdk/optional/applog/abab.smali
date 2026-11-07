.class public Lgbsdk/optional/applog/abab;
.super Lgbsdk/optional/applog/abcq;
.source ""


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lgbsdk/optional/applog/abfl;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abfl;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lgbsdk/optional/applog/abcq;-><init>(ZZ)V

    iput-object p2, p0, Lgbsdk/optional/applog/abab;->a:Landroid/content/Context;

    iput-object p1, p0, Lgbsdk/optional/applog/abab;->b:Lgbsdk/optional/applog/abfl;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "SimCountry"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abab;->b:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/abab;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/HardwareUtils;->getSimCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sim_region"

    invoke-static {p1, v1, v0}, Lgbsdk/optional/applog/abfy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
