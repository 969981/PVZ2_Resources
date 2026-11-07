.class public final enum Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;
.super Ljava/lang/Enum;
.source "TTAppStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ia:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

.field public static final enum ib:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

.field public static final enum ic:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

.field public static final enum ie:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

.field public static final enum if:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

.field public static final enum ig:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

.field private static final synthetic ih:[Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;


# instance fields
.field public final state:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    const-string v1, "NormalStart"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ia:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    .line 17
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    const-string v1, "ColdStart"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ib:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    .line 18
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    const-string v1, "HotStart"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ic:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    .line 19
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    const-string v1, "WarmStart"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ie:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    .line 20
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    const-string v1, "WeakNet"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->if:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    .line 21
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    const-string v1, "Default"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ig:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    .line 14
    sget-object v8, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ia:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    aput-object v8, v1, v2

    sget-object v2, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ib:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ic:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    aput-object v2, v1, v4

    sget-object v2, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ie:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    aput-object v2, v1, v5

    sget-object v2, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->if:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ih:[Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->state:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;
    .locals 1

    .line 14
    const-class v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;
    .locals 1

    .line 14
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->ih:[Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    invoke-virtual {v0}, [Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/frameworks/baselib/network/http/cronet/TTAppStateManager$ab;

    return-object v0
.end method
