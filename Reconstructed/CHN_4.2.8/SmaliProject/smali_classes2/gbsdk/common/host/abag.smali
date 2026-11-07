.class public Lgbsdk/common/host/abag;
.super Lgbsdk/common/host/aban;
.source "Pack.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public bC:J

.field public bE:[B

.field public bF:Lorg/json/JSONArray;

.field public bG:Lorg/json/JSONArray;

.field public bH:J

.field public bI:Lgbsdk/common/host/abad;

.field public bJ:Lorg/json/JSONArray;

.field public bK:Lgbsdk/common/host/abab;

.field public bL:Lorg/json/JSONObject;

.field public bM:Lorg/json/JSONArray;

.field public bN:J

.field public bO:Lorg/json/JSONArray;

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgbsdk/common/host/aban;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lorg/json/JSONObject;)[B
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/aban;",
            ">;",
            "Lorg/json/JSONObject;",
            ")[B"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    sget-object v4, Lgbsdk/common/host/abag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v5, 0x0

    const-string v6, "d4e65a5f94a9e0ae59eeb55eb1d98c54"

    invoke-static {v1, v5, v4, v3, v6}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Lgbsdk/common/host/abag;

    invoke-direct {v1}, Lgbsdk/common/host/abag;-><init>()V

    const/4 v4, 0x3

    new-array v11, v4, [Lorg/json/JSONArray;

    .line 2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    aput-object v6, v11, v2

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    aput-object v6, v11, v3

    aput-object v5, v11, v0

    new-array v12, v4, [J

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/aban;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "event"

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lgbsdk/common/host/aban;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    aget-object v4, v11, v2

    invoke-virtual {v0}, Lgbsdk/common/host/aban;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    const-string v4, "eventv3"

    .line 9
    :try_start_2
    invoke-virtual {v0}, Lgbsdk/common/host/aban;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    aget-object v4, v11, v3

    invoke-virtual {v0}, Lgbsdk/common/host/aban;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v6, v1

    move-object v7, p1

    .line 13
    invoke-virtual/range {v6 .. v13}, Lgbsdk/common/host/abag;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abab;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    .line 14
    invoke-virtual {v1}, Lgbsdk/common/host/aban;->f()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 17
    invoke-static {p0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    return-object v5
.end method


# virtual methods
.method public N()[B
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8146398804af515f5b3bc5a31867d730"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    iput-object v1, p0, Lgbsdk/common/host/abag;->bE:[B

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lgbsdk/common/host/aban;->f()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgbsdk/common/host/abam;->q(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lgbsdk/common/host/abag;->bE:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    :goto_0
    sget-object v3, Lgbsdk/common/host/abah;->bA:[Lgbsdk/common/host/abah$ac;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 16
    aget-object v4, v3, v0

    if-eqz v4, :cond_1

    .line 17
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lgbsdk/common/host/abah$ac;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Landroid/database/Cursor;)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "ef8c0acfdb8808cf973e15e49f4b81ec"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 30
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lgbsdk/common/host/aban;->a:J

    .line 31
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lgbsdk/common/host/aban;->b:J

    const/4 v0, 0x2

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lgbsdk/common/host/abag;->bE:[B

    const/4 v0, 0x3

    .line 33
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lgbsdk/common/host/abag;->m:I

    const-string p1, ""

    .line 34
    iput-object p1, p0, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lgbsdk/common/host/abag;->bL:Lorg/json/JSONObject;

    .line 36
    iput-object p1, p0, Lgbsdk/common/host/abag;->bI:Lgbsdk/common/host/abad;

    .line 37
    iput-object p1, p0, Lgbsdk/common/host/abag;->bK:Lgbsdk/common/host/abab;

    .line 38
    iput-object p1, p0, Lgbsdk/common/host/abag;->bJ:Lorg/json/JSONArray;

    .line 39
    iput-object p1, p0, Lgbsdk/common/host/abag;->bF:Lorg/json/JSONArray;

    .line 40
    iput-object p1, p0, Lgbsdk/common/host/abag;->bG:Lorg/json/JSONArray;

    .line 41
    iput-object p1, p0, Lgbsdk/common/host/abag;->bM:Lorg/json/JSONArray;

    .line 42
    iput-object p1, p0, Lgbsdk/common/host/abag;->bO:Lorg/json/JSONArray;

    const/4 p1, 0x4

    return p1
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9696b61102f20a848634da49404dd8c7"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lgbsdk/common/host/aban;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "local_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    invoke-virtual {p0}, Lgbsdk/common/host/abag;->N()[B

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abab;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V
    .locals 6

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const/4 v4, 0x3

    aput-object p4, v0, v4

    const/4 v4, 0x4

    aput-object p5, v0, v4

    const/4 v4, 0x5

    aput-object p6, v0, v4

    const/4 v4, 0x6

    aput-object p7, v0, v4

    sget-object v4, Lgbsdk/common/host/abag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v5, "e94713898975c8bb555faac4692e88c8"

    invoke-static {v0, p0, v4, v1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    .line 18
    invoke-virtual {p0, v4, v5}, Lgbsdk/common/host/aban;->a(J)V

    .line 19
    iput-object p1, p0, Lgbsdk/common/host/abag;->bL:Lorg/json/JSONObject;

    .line 20
    iput-object p2, p0, Lgbsdk/common/host/abag;->bI:Lgbsdk/common/host/abad;

    .line 21
    iput-object p3, p0, Lgbsdk/common/host/abag;->bK:Lgbsdk/common/host/abab;

    .line 22
    iput-object p4, p0, Lgbsdk/common/host/abag;->bJ:Lorg/json/JSONArray;

    .line 23
    aget-object p1, p5, v1

    iput-object p1, p0, Lgbsdk/common/host/abag;->bF:Lorg/json/JSONArray;

    .line 24
    aget-wide p1, p6, v1

    iput-wide p1, p0, Lgbsdk/common/host/abag;->bC:J

    .line 25
    aget-object p1, p5, v2

    iput-object p1, p0, Lgbsdk/common/host/abag;->bG:Lorg/json/JSONArray;

    .line 26
    aget-wide p1, p6, v2

    iput-wide p1, p0, Lgbsdk/common/host/abag;->bH:J

    .line 27
    aget-object p1, p5, v3

    iput-object p1, p0, Lgbsdk/common/host/abag;->bM:Lorg/json/JSONArray;

    .line 28
    aget-wide p1, p6, v3

    iput-wide p1, p0, Lgbsdk/common/host/abag;->bN:J

    .line 29
    iput-object p7, p0, Lgbsdk/common/host/abag;->bO:Lorg/json/JSONArray;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8e5390011798e9a192499dd26c8d8aff"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    const-string v1, "_id"

    const-string v2, "integer primary key autoincrement"

    const-string v3, "local_time_ms"

    const-string v4, "integer"

    const-string v5, "_data"

    const-string v6, "blob"

    const-string v7, "_fail"

    const-string v8, "integer"

    .line 1
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "5027ffc1f1eb0ed2f4e85c0e5a85b230"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1
    :cond_0
    iget-wide v0, p0, Lgbsdk/common/host/aban;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "pack"

    return-object v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bbd3f54f8bf39644c77d623c9d2ca432"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "magic_tag"

    const-string v3, "ss_app_log"

    .line 2
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v2, p0, Lgbsdk/common/host/abag;->bL:Lorg/json/JSONObject;

    const-string v3, "header"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    sget-object v2, Lgbsdk/common/host/aj;->b:Lorg/json/JSONObject;

    const-string v3, "time_sync"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v4, "local_time"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 7
    iget-object v2, p0, Lgbsdk/common/host/abag;->bI:Lgbsdk/common/host/abad;

    if-eqz v2, :cond_1

    .line 8
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 9
    iget-object v3, p0, Lgbsdk/common/host/abag;->bI:Lgbsdk/common/host/abad;

    invoke-virtual {v3}, Lgbsdk/common/host/aban;->f()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "launch"

    .line 10
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_1
    iget-object v2, p0, Lgbsdk/common/host/abag;->bK:Lgbsdk/common/host/abab;

    if-eqz v2, :cond_6

    .line 14
    invoke-virtual {v2}, Lgbsdk/common/host/aban;->f()Lorg/json/JSONObject;

    move-result-object v2

    .line 18
    iget-object v3, p0, Lgbsdk/common/host/abag;->bJ:Lorg/json/JSONArray;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 19
    :goto_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    .line 21
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 22
    new-instance v7, Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lgbsdk/common/host/abag;->bJ:Lorg/json/JSONArray;

    .line 23
    invoke-virtual {v9, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "params"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "page_key"

    const-string v9, ""

    .line 24
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string v8, "duration"

    .line 25
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    add-int/lit16 v7, v7, 0x3e7

    div-int/lit16 v7, v7, 0x3e8

    const/4 v8, 0x1

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 26
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-lez v3, :cond_4

    const-string v3, "activites"

    .line 29
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_4
    sget v3, Lcom/apm/applog/AppLog;->sLaunchFrom:I

    if-lez v3, :cond_5

    const-string v4, "launch_from"

    .line 34
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    sput v0, Lcom/apm/applog/AppLog;->sLaunchFrom:I

    .line 38
    :cond_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 39
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "terminate"

    .line 40
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_6
    iget-object v2, p0, Lgbsdk/common/host/abag;->bF:Lorg/json/JSONArray;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-lez v2, :cond_8

    .line 45
    iget-object v3, p0, Lgbsdk/common/host/abag;->bF:Lorg/json/JSONArray;

    const-string v4, "event"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_8
    iget-object v3, p0, Lgbsdk/common/host/abag;->bJ:Lorg/json/JSONArray;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    .line 49
    :goto_3
    invoke-static {}, Lgbsdk/common/host/ap;->f()Z

    .line 59
    iget-object v4, p0, Lgbsdk/common/host/abag;->bG:Lorg/json/JSONArray;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    if-lez v4, :cond_b

    .line 61
    iget-object v5, p0, Lgbsdk/common/host/abag;->bG:Lorg/json/JSONArray;

    const-string v6, "event_v3"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_b
    iget-object v5, p0, Lgbsdk/common/host/abag;->bM:Lorg/json/JSONArray;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    :goto_5
    if-lez v5, :cond_d

    .line 67
    iget-object v6, p0, Lgbsdk/common/host/abag;->bM:Lorg/json/JSONArray;

    const-string v7, "log_data"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_d
    iget-object v6, p0, Lgbsdk/common/host/abag;->bO:Lorg/json/JSONArray;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    :cond_e
    if-lez v0, :cond_f

    .line 73
    iget-object v6, p0, Lgbsdk/common/host/abag;->bO:Lorg/json/JSONArray;

    const-string v7, "item_impression"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pack {"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "ts:"

    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lgbsdk/common/host/aban;->b:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", la:"

    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lgbsdk/common/host/abag;->bI:Lgbsdk/common/host/abad;

    const-string v8, "0"

    if-eqz v7, :cond_10

    goto :goto_6

    :cond_10
    move-object v7, v8

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", te:"

    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lgbsdk/common/host/abag;->bK:Lgbsdk/common/host/abab;

    if-eqz v7, :cond_11

    move-object v8, v7

    :cond_11
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", p:"

    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", v1:"

    .line 81
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", v3:"

    .line 82
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", m:"

    .line 83
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imp:"

    .line 84
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    return-object v1
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgbsdk/common/host/abag;->bI:Lgbsdk/common/host/abad;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(Lorg/json/JSONObject;)Lgbsdk/common/host/aban;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lgbsdk/common/host/abag;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "9163570fb73180c4b0105f8443344f22"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/common/host/aban;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method
