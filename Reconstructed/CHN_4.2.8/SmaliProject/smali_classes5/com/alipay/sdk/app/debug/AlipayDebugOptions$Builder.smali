.class public Lcom/alipay/sdk/app/debug/AlipayDebugOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/debug/AlipayDebugOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alipayDebugOptions:Lcom/alipay/sdk/app/debug/AlipayDebugOptions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/alipay/sdk/app/debug/AlipayDebugOptions$Builder;->alipayDebugOptions:Lcom/alipay/sdk/app/debug/AlipayDebugOptions;

    .line 6
    new-instance v1, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;

    invoke-direct {v1, v0}, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;-><init>(Lcom/alipay/sdk/app/debug/AlipayDebugOptions$a;)V

    iput-object v1, p0, Lcom/alipay/sdk/app/debug/AlipayDebugOptions$Builder;->alipayDebugOptions:Lcom/alipay/sdk/app/debug/AlipayDebugOptions;

    return-void
.end method


# virtual methods
.method public build()Lcom/alipay/sdk/app/debug/AlipayDebugOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/debug/AlipayDebugOptions$Builder;->alipayDebugOptions:Lcom/alipay/sdk/app/debug/AlipayDebugOptions;

    return-object v0
.end method

.method public setAlipayPayLifeCycle(Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;)Lcom/alipay/sdk/app/debug/AlipayDebugOptions$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/debug/AlipayDebugOptions$Builder;->alipayDebugOptions:Lcom/alipay/sdk/app/debug/AlipayDebugOptions;

    invoke-static {v0, p1}, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;->access$102(Lcom/alipay/sdk/app/debug/AlipayDebugOptions;Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;)Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;

    return-object p0
.end method
