.class public Lgbsdk/common/host/abmj;
.super Lgbsdk/common/host/abmg;
.source "DispatchTypedAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private rn:Lgbsdk/common/host/abmk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lgbsdk/common/host/abmj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abmj;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgbsdk/common/host/abmg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lgbsdk/common/host/ablk$ab;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lgbsdk/common/host/ablk$ab;"
        }
    .end annotation

    .line 18
    sget-object v0, Lgbsdk/common/host/abmj;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lgbsdk/common/host/abmj;->rn:Lgbsdk/common/host/abmk;

    iget-object v2, v2, Lgbsdk/common/host/abmk;->rd:Lgbsdk/common/host/abmk$ab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lgbsdk/common/host/ablk$ab;->qM:Lgbsdk/common/host/ablk$ab;

    .line 21
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lgbsdk/common/host/abmj;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgbsdk/common/host/abmj;->rn:Lgbsdk/common/host/abmk;

    if-eqz v2, :cond_1

    .line 23
    sget-object v0, Lgbsdk/common/host/ablk$ab;->qN:Lgbsdk/common/host/ablk$ab;

    .line 24
    iget-object v2, p0, Lgbsdk/common/host/abmj;->rn:Lgbsdk/common/host/abmk;

    invoke-virtual {v2, v1}, Lgbsdk/common/host/abmk;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 26
    invoke-interface {p2, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p2, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected a(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abmj;->B(Lorg/json/JSONObject;)V

    const-string v0, "service_name"

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iput-object v0, p0, Lgbsdk/common/host/abmj;->qJ:Ljava/lang/String;

    :cond_0
    const-string v0, "dispatch_strategy"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "strategy_info"

    .line 56
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-ltz v0, :cond_2

    const/4 p1, 0x5

    if-le v0, p1, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Lgbsdk/common/host/abmk$ab;->values()[Lgbsdk/common/host/abmk$ab;

    move-result-object p1

    aget-object v3, p1, v0

    .line 63
    iget v8, p0, Lgbsdk/common/host/ablk;->mPriority:I

    move-object v5, p3

    move-wide v6, p4

    .line 62
    invoke-static/range {v3 .. v8}, Lgbsdk/common/host/abmk;->a(Lgbsdk/common/host/abmk$ab;Lorg/json/JSONObject;Ljava/lang/String;JI)Lgbsdk/common/host/abmk;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abmj;->rn:Lgbsdk/common/host/abmk;

    .line 65
    invoke-virtual {p1}, Lgbsdk/common/host/abmk;->cr()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lgbsdk/common/host/abmj;->rn:Lgbsdk/common/host/abmk;

    return v1
.end method

.method protected b(Ljava/lang/String;ZI)V
    .locals 1

    .line 37
    iget-object v0, p0, Lgbsdk/common/host/abmj;->rn:Lgbsdk/common/host/abmk;

    invoke-virtual {v0, p1, p2, p3}, Lgbsdk/common/host/abmk;->a(Ljava/lang/String;ZI)V

    return-void
.end method

.method public ct()I
    .locals 1

    .line 42
    iget-object v0, p0, Lgbsdk/common/host/abmj;->rn:Lgbsdk/common/host/abmk;

    iget-object v0, v0, Lgbsdk/common/host/abmk;->rd:Lgbsdk/common/host/abmk$ab;

    invoke-virtual {v0}, Lgbsdk/common/host/abmk$ab;->ordinal()I

    move-result v0

    return v0
.end method
