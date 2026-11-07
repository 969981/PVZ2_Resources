.class public final enum Lgbsdk/common/host/abrz;
.super Ljava/lang/Enum;
.source "ThreadPoolType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abrz;",
        ">;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static final enum zg:Lgbsdk/common/host/abrz;

.field public static final enum zh:Lgbsdk/common/host/abrz;

.field public static final enum zi:Lgbsdk/common/host/abrz;

.field public static final enum zj:Lgbsdk/common/host/abrz;

.field public static final enum zk:Lgbsdk/common/host/abrz;

.field public static final enum zl:Lgbsdk/common/host/abrz;

.field private static final synthetic zm:[Lgbsdk/common/host/abrz;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lgbsdk/common/host/abrz;

    const-string v1, "IO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abrz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abrz;->zg:Lgbsdk/common/host/abrz;

    .line 5
    new-instance v0, Lgbsdk/common/host/abrz;

    const-string v1, "DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgbsdk/common/host/abrz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abrz;->zh:Lgbsdk/common/host/abrz;

    .line 6
    new-instance v0, Lgbsdk/common/host/abrz;

    const-string v1, "BACKGROUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lgbsdk/common/host/abrz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abrz;->zi:Lgbsdk/common/host/abrz;

    .line 7
    new-instance v0, Lgbsdk/common/host/abrz;

    const-string v1, "FIXED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lgbsdk/common/host/abrz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abrz;->zj:Lgbsdk/common/host/abrz;

    .line 8
    new-instance v0, Lgbsdk/common/host/abrz;

    const-string v1, "SCHEDULED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lgbsdk/common/host/abrz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abrz;->zk:Lgbsdk/common/host/abrz;

    .line 9
    new-instance v0, Lgbsdk/common/host/abrz;

    const-string v1, "SINGLE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lgbsdk/common/host/abrz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgbsdk/common/host/abrz;->zl:Lgbsdk/common/host/abrz;

    const/4 v1, 0x6

    new-array v1, v1, [Lgbsdk/common/host/abrz;

    .line 3
    sget-object v8, Lgbsdk/common/host/abrz;->zg:Lgbsdk/common/host/abrz;

    aput-object v8, v1, v2

    sget-object v2, Lgbsdk/common/host/abrz;->zh:Lgbsdk/common/host/abrz;

    aput-object v2, v1, v3

    sget-object v2, Lgbsdk/common/host/abrz;->zi:Lgbsdk/common/host/abrz;

    aput-object v2, v1, v4

    sget-object v2, Lgbsdk/common/host/abrz;->zj:Lgbsdk/common/host/abrz;

    aput-object v2, v1, v5

    sget-object v2, Lgbsdk/common/host/abrz;->zk:Lgbsdk/common/host/abrz;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lgbsdk/common/host/abrz;->zm:[Lgbsdk/common/host/abrz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abrz;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abrz;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "ceff0661c190290a0d988919e2503492"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/common/host/abrz;

    return-object p0

    .line 3
    :cond_0
    const-class v0, Lgbsdk/common/host/abrz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abrz;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abrz;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrz;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "5a34e28acd97b2559cf8f5b8617b62bb"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, [Lgbsdk/common/host/abrz;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lgbsdk/common/host/abrz;->zm:[Lgbsdk/common/host/abrz;

    invoke-virtual {v0}, [Lgbsdk/common/host/abrz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abrz;

    return-object v0
.end method
