.class public Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine$ab;
.super Ljava/lang/Object;
.source "QueryFilterEngine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lgbsdk/common/host/abny;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ul:Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;


# direct methods
.method constructor <init>(Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine$ab;->ul:Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgbsdk/common/host/abny;Lgbsdk/common/host/abny;)I
    .locals 0

    .line 63
    iget p1, p1, Lgbsdk/common/host/abny;->mPriority:I

    iget p2, p2, Lgbsdk/common/host/abny;->mPriority:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 61
    check-cast p1, Lgbsdk/common/host/abny;

    check-cast p2, Lgbsdk/common/host/abny;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/frameworks/baselib/network/queryfilter/QueryFilterEngine$ab;->a(Lgbsdk/common/host/abny;Lgbsdk/common/host/abny;)I

    move-result p1

    return p1
.end method
