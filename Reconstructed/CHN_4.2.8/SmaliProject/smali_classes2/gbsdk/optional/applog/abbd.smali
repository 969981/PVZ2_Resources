.class public Lgbsdk/optional/applog/abbd;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[[J


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lgbsdk/optional/applog/abfl;

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [[J

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [J

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [J

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lgbsdk/optional/applog/abbd;->a:[[J

    return-void

    :array_0
    .array-data 8
        0xea60
        0x0
        0xa
    .end array-data

    :array_1
    .array-data 8
        0x1d4c0
        0x5
        0x1
    .end array-data

    :array_2
    .array-data 8
        0x3a980
        0x5
        0x1
    .end array-data

    :array_3
    .array-data 8
        0x75300
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 8
        0xea600
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lgbsdk/optional/applog/abfl;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgbsdk/optional/applog/abbd;->c:Lgbsdk/optional/applog/abfl;

    iput-object p1, p0, Lgbsdk/optional/applog/abbd;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lgbsdk/optional/applog/abbd;->d:I

    .line 2
    iget-object p2, p2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgbsdk/optional/applog/abbd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "downgrade_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {p2, v0, v2, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-string p2, "downgrade_index"

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lgbsdk/optional/applog/abbd;->c:Lgbsdk/optional/applog/abfl;

    .line 4
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgbsdk/optional/applog/abbd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lgbsdk/optional/applog/abbd;->d:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgbsdk/optional/applog/abbd;->c:Lgbsdk/optional/applog/abfl;

    .line 6
    iget-object p1, p1, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgbsdk/optional/applog/abbd;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgbsdk/optional/applog/abbd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-virtual {p0}, Lgbsdk/optional/applog/abbd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lgbsdk/optional/applog/abbd;->d:I

    sget-object v1, Lgbsdk/optional/applog/abbd;->a:[[J

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v4, p0, Lgbsdk/optional/applog/abbd;->d:I

    add-int/2addr v4, v2

    iput v4, p0, Lgbsdk/optional/applog/abbd;->d:I

    iput v2, p0, Lgbsdk/optional/applog/abbd;->e:I

    iput v3, p0, Lgbsdk/optional/applog/abbd;->f:I

    iput-wide v0, p0, Lgbsdk/optional/applog/abbd;->g:J

    iput-wide v0, p0, Lgbsdk/optional/applog/abbd;->h:J

    iget-object v2, p0, Lgbsdk/optional/applog/abbd;->c:Lgbsdk/optional/applog/abfl;

    .line 2
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgbsdk/optional/applog/abbd;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "downgrade_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->putLong(Ljava/lang/String;J)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgbsdk/optional/applog/abbd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "downgrade_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lgbsdk/optional/applog/abbd;->d:I

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    goto :goto_0

    .line 4
    :cond_1
    iput v3, p0, Lgbsdk/optional/applog/abbd;->f:I

    :goto_0
    return-void
.end method

.method public b()V
    .locals 9

    invoke-virtual {p0}, Lgbsdk/optional/applog/abbd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lgbsdk/optional/applog/abbd;->f:I

    int-to-long v3, v2

    sget-object v5, Lgbsdk/optional/applog/abbd;->a:[[J

    iget v6, p0, Lgbsdk/optional/applog/abbd;->d:I

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-wide v7, v5, v6

    cmp-long v5, v3, v7

    if-gez v5, :cond_2

    iget-wide v3, p0, Lgbsdk/optional/applog/abbd;->h:J

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x1b7740

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v6

    iput v2, p0, Lgbsdk/optional/applog/abbd;->f:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lgbsdk/optional/applog/abbd;->d:I

    if-lez v0, :cond_3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lgbsdk/optional/applog/abbd;->d:I

    sub-int/2addr v2, v6

    iput v2, p0, Lgbsdk/optional/applog/abbd;->d:I

    iput v6, p0, Lgbsdk/optional/applog/abbd;->e:I

    iput v6, p0, Lgbsdk/optional/applog/abbd;->f:I

    iput-wide v0, p0, Lgbsdk/optional/applog/abbd;->g:J

    iput-wide v0, p0, Lgbsdk/optional/applog/abbd;->h:J

    iget-object v2, p0, Lgbsdk/optional/applog/abbd;->c:Lgbsdk/optional/applog/abfl;

    .line 2
    iget-object v2, v2, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lgbsdk/optional/applog/abbd;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "downgrade_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->putLong(Ljava/lang/String;J)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgbsdk/optional/applog/abbd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "downgrade_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lgbsdk/optional/applog/abbd;->d:I

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_3
    :goto_1
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abbd;->c:Lgbsdk/optional/applog/abfl;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->c:Lcom/bytedance/applog/InitConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isCongestionControlEnable()Z

    move-result v0

    return v0
.end method
