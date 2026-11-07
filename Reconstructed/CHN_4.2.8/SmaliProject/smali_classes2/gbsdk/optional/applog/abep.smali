.class public Lgbsdk/optional/applog/abep;
.super Lgbsdk/optional/applog/abcq;
.source ""


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lgbsdk/optional/applog/abfy;

.field public final c:Lgbsdk/optional/applog/abfl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgbsdk/optional/applog/abfl;Lgbsdk/optional/applog/abfy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lgbsdk/optional/applog/abcq;-><init>(ZZ)V

    iput-object p1, p0, Lgbsdk/optional/applog/abep;->a:Landroid/content/Context;

    iput-object p3, p0, Lgbsdk/optional/applog/abep;->b:Lgbsdk/optional/applog/abfy;

    iput-object p2, p0, Lgbsdk/optional/applog/abep;->c:Lgbsdk/optional/applog/abfl;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "DeviceParams"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abep;->c:Lgbsdk/optional/applog/abfl;

    invoke-virtual {v0}, Lgbsdk/optional/applog/abfl;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/optional/applog/abep;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/HardwareUtils;->getOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "carrier"

    invoke-static {p1, v1, v0}, Lgbsdk/optional/applog/abfy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lgbsdk/optional/applog/abep;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/HardwareUtils;->getOperatorMccMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/optional/applog/abce;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mcc_mnc"

    invoke-static {p1, v1, v0}, Lgbsdk/optional/applog/abfy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lgbsdk/optional/applog/abep;->b:Lgbsdk/optional/applog/abfy;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    .line 2
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfp;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientudid"

    invoke-static {p1, v1, v0}, Lgbsdk/optional/applog/abfy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lgbsdk/optional/applog/abep;->b:Lgbsdk/optional/applog/abfy;

    .line 3
    iget-object v0, v0, Lgbsdk/optional/applog/abfy;->i:Lgbsdk/optional/applog/abfp;

    .line 4
    invoke-virtual {v0}, Lgbsdk/optional/applog/abfp;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openudid"

    invoke-static {p1, v1, v0}, Lgbsdk/optional/applog/abfy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
