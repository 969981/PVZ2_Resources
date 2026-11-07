.class public Lcom/bytedance/ttgame/tob/common/host/framework/util/HashUtil;
.super Ljava/lang/Object;
.source "HashUtil.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static longHashCode(Ljava/lang/String;)J
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/util/HashUtil;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "062149034957cbd4e3ed3f7f53300458"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 12
    array-length v0, p0

    const-wide/16 v3, 0x0

    if-lez v0, :cond_1

    .line 13
    array-length v0, p0

    move-wide v5, v3

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v1, p0, v2

    const-wide/16 v7, 0x1f

    mul-long v5, v5, v7

    int-to-long v7, v1

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-wide v5, v3

    :cond_2
    cmp-long p0, v5, v3

    if-gez p0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v5, v0

    :cond_3
    return-wide v5
.end method
