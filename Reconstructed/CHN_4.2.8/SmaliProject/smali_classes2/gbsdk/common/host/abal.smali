.class public final enum Lgbsdk/common/host/abal;
.super Ljava/lang/Enum;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgbsdk/common/host/abal;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bq:Lgbsdk/common/host/abal;

.field public static final enum br:Lgbsdk/common/host/abal;

.field public static final synthetic bs:[Lgbsdk/common/host/abal;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lgbsdk/common/host/abal;

    const-string v1, "L0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgbsdk/common/host/abal;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abal;->bq:Lgbsdk/common/host/abal;

    .line 2
    new-instance v0, Lgbsdk/common/host/abal;

    const-string v1, "L1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lgbsdk/common/host/abal;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgbsdk/common/host/abal;->br:Lgbsdk/common/host/abal;

    const/4 v1, 0x2

    new-array v1, v1, [Lgbsdk/common/host/abal;

    .line 3
    sget-object v4, Lgbsdk/common/host/abal;->bq:Lgbsdk/common/host/abal;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lgbsdk/common/host/abal;->bs:[Lgbsdk/common/host/abal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgbsdk/common/host/abal;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abal;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "3bb4e5f0dfbfdc986805a156f1db8e3f"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lgbsdk/common/host/abal;

    return-object p0

    .line 1
    :cond_0
    const-class v0, Lgbsdk/common/host/abal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abal;

    return-object p0
.end method

.method public static values()[Lgbsdk/common/host/abal;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abal;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "fcfe355cb15c034142fa4f7f7a16f27e"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, [Lgbsdk/common/host/abal;

    return-object v0

    .line 1
    :cond_0
    sget-object v0, Lgbsdk/common/host/abal;->bs:[Lgbsdk/common/host/abal;

    invoke-virtual {v0}, [Lgbsdk/common/host/abal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgbsdk/common/host/abal;

    return-object v0
.end method
