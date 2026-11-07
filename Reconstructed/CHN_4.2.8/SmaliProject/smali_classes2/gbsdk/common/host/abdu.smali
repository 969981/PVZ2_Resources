.class public final Lgbsdk/common/host/abdu;
.super Ljava/lang/Object;
.source "OaidModel.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final cq:Ljava/lang/Boolean;

.field public final cr:Ljava/lang/Long;

.field public final cs:Ljava/lang/Long;

.field public final ct:Ljava/lang/Integer;

.field public final cu:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgbsdk/common/host/abdu;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lgbsdk/common/host/abdu;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lgbsdk/common/host/abdu;->cq:Ljava/lang/Boolean;

    .line 5
    iput-object p4, p0, Lgbsdk/common/host/abdu;->cr:Ljava/lang/Long;

    .line 6
    iput-object p5, p0, Lgbsdk/common/host/abdu;->cs:Ljava/lang/Long;

    .line 7
    iput-object p6, p0, Lgbsdk/common/host/abdu;->ct:Ljava/lang/Integer;

    .line 8
    iput-object p7, p0, Lgbsdk/common/host/abdu;->cu:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abdu;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "594110b518ee44886a0c06b88f87fbac"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lgbsdk/common/host/abdu;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lgbsdk/common/host/abdu;->b:Ljava/lang/String;

    const-string v2, "req_id"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lgbsdk/common/host/abdu;->cq:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_track_limited"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lgbsdk/common/host/abdu;->cr:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "take_ms"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lgbsdk/common/host/abdu;->cs:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lgbsdk/common/host/abdu;->ct:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "query_times"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lgbsdk/common/host/abdu;->cu:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hw_id_version_code"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abdu;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5a32761a5ef9ca65b9c2450eab21aaa4"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lgbsdk/common/host/abdu;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lgbsdk/common/host/abdu;->b:Ljava/lang/String;

    const-string v2, "req_id"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lgbsdk/common/host/abdu;->cq:Ljava/lang/Boolean;

    const-string v2, "is_track_limited"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lgbsdk/common/host/abdu;->cr:Ljava/lang/Long;

    const-string v2, "take_ms"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lgbsdk/common/host/abdu;->cs:Ljava/lang/Long;

    const-string v2, "time"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lgbsdk/common/host/abdu;->ct:Ljava/lang/Integer;

    const-string v2, "query_times"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lgbsdk/common/host/abdu;->cu:Ljava/lang/Long;

    const-string v2, "hw_id_version_code"

    invoke-static {v0, v2, v1}, Lgbsdk/common/host/abds;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abdu;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c223ebc3e8723933964859ddd3eb1a4f"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lgbsdk/common/host/abdu;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
