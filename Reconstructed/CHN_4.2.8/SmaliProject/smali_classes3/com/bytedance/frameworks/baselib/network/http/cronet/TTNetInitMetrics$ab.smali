.class public final enum Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;
.super Ljava/lang/Enum;
.source "TTNetInitMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ii:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

.field public static final enum ij:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

.field public static final enum ik:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

.field public static final enum il:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

.field private static final synthetic in:[Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;


# instance fields
.field final im:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->ii:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    .line 31
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    const-string v1, "LAZY_INIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->ij:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    .line 32
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    const-string v1, "PRE_INIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->ik:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    .line 33
    new-instance v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    const-string v1, "FORCE_INIT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->il:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    .line 29
    sget-object v6, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->ii:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    aput-object v6, v1, v2

    sget-object v2, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->ij:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->ik:Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->in:[Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->im:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;
    .locals 1

    .line 29
    const-class v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;
    .locals 1

    .line 29
    sget-object v0, Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->in:[Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    invoke-virtual {v0}, [Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/frameworks/baselib/network/http/cronet/TTNetInitMetrics$ab;

    return-object v0
.end method
