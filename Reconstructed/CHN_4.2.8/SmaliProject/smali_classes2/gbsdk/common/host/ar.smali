.class public Lgbsdk/common/host/ar;
.super Lgbsdk/common/host/ao;
.source "RangersEventVerifyHeartBeater.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final aH:Lcom/apm/applog/AppLog;

.field public final aI:Lgbsdk/common/host/ap;

.field public final f:Ljava/lang/String;

.field public i:I


# direct methods
.method public constructor <init>(Lgbsdk/common/host/ap;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lgbsdk/common/host/ao;-><init>(Lgbsdk/common/host/ap;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lgbsdk/common/host/ar;->i:I

    .line 6
    iput-object p2, p0, Lgbsdk/common/host/ar;->f:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lgbsdk/common/host/ar;->aI:Lgbsdk/common/host/ap;

    .line 8
    iget-object p1, p1, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 9
    invoke-virtual {p1}, Lgbsdk/common/host/abbf;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/ar;->aH:Lcom/apm/applog/AppLog;

    return-void
.end method


# virtual methods
.method public B()[J
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public c()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/ar;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "91940fe311c0f59c6aac4d0cae750aed"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/ar;->aI:Lgbsdk/common/host/ap;

    iget-object v2, p0, Lgbsdk/common/host/ar;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lgbsdk/common/host/aj;->a(Lgbsdk/common/host/ap;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    iget v1, p0, Lgbsdk/common/host/ar;->i:I

    add-int/2addr v1, v2

    :goto_0
    iput v1, p0, Lgbsdk/common/host/ar;->i:I

    const/4 v3, 0x3

    if-le v1, v3, :cond_2

    .line 4
    iget-object v1, p0, Lgbsdk/common/host/ar;->aH:Lcom/apm/applog/AppLog;

    iget-object v3, p0, Lgbsdk/common/host/ar;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/apm/applog/AppLog;->setRangersEventVerifyEnable(ZLjava/lang/String;)V

    :cond_2
    return v2
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "RangersEventVerify"

    return-object v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method
