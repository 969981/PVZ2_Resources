.class public abstract Lcom/bytedance/ttnet/utils/RetrofitUtils$ab;
.super Ljava/lang/Object;
.source "RetrofitUtils.java"

# interfaces
.implements Lcom/bytedance/retrofit2/intercept/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttnet/utils/RetrofitUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ab"
.end annotation


# instance fields
.field protected aKv:Lcom/bytedance/retrofit2/intercept/Interceptor;


# direct methods
.method public constructor <init>(Lcom/bytedance/retrofit2/intercept/Interceptor;)V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ab;->aKv:Lcom/bytedance/retrofit2/intercept/Interceptor;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;)Lcom/bytedance/retrofit2/SsResponse;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/bytedance/ttnet/utils/RetrofitUtils$ab;->aKv:Lcom/bytedance/retrofit2/intercept/Interceptor;

    invoke-interface {v0, p1}, Lcom/bytedance/retrofit2/intercept/Interceptor;->intercept(Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;)Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1

    return-object p1
.end method
