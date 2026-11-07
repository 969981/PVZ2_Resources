.class public final enum Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;
.super Ljava/lang/Enum;
.source "Resource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

.field public static final enum ERROR:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

.field public static final enum LOADING:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

.field public static final enum SUCCESS:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 46
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->SUCCESS:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->ERROR:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    const-string v1, "LOADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->LOADING:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    sget-object v5, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->SUCCESS:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    aput-object v5, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->ERROR:Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->$VALUES:[Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "08773fb239440b9efe00259973f6e96e"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    return-object p0

    .line 46
    :cond_0
    const-class v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "2908b149abddd7486e4dd85b9ae70c5e"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, [Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->$VALUES:[Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    invoke-virtual {v0}, [Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/ttgame/tob/common/host/framework/network/Resource$Status;

    return-object v0
.end method
