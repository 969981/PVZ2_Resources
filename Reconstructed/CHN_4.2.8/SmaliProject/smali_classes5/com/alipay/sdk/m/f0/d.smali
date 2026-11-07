.class public Lcom/alipay/sdk/m/f0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/m/f0/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/m/f0/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/sdk/m/f0/d;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    sget-object v1, Lcom/alipay/sdk/m/f0/d;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/sdk/m/f0/d$a;

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    iget-wide v3, v2, Lcom/alipay/sdk/m/f0/d$a;->b:J

    iget-wide v5, v2, Lcom/alipay/sdk/m/f0/d$a;->c:J

    invoke-static {v3, v4, v5, v6}, Lcom/alipay/sdk/m/f0/d;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v2, Lcom/alipay/sdk/m/f0/d$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0x5265c00

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/sdk/m/f0/d;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    const-wide/32 p2, 0x5265c00

    :cond_2
    sget-object v0, Lcom/alipay/sdk/m/f0/d;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/sdk/m/f0/d$a;

    if-nez v1, :cond_3

    new-instance v1, Lcom/alipay/sdk/m/f0/d$a;

    invoke-direct {v1}, Lcom/alipay/sdk/m/f0/d$a;-><init>()V

    :cond_3
    iput-object p1, v1, Lcom/alipay/sdk/m/f0/d$a;->a:Ljava/lang/String;

    iput-wide p2, v1, Lcom/alipay/sdk/m/f0/d$a;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/alipay/sdk/m/f0/d$a;->b:J

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(JJ)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    cmp-long p0, v0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
