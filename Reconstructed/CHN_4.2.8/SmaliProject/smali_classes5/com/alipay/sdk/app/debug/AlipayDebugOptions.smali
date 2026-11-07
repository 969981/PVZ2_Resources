.class public Lcom/alipay/sdk/app/debug/AlipayDebugOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;,
        Lcom/alipay/sdk/app/debug/AlipayDebugOptions$Builder;
    }
.end annotation


# instance fields
.field private mAlipayPayLifeCycle:Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;->mAlipayPayLifeCycle:Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alipay/sdk/app/debug/AlipayDebugOptions$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lcom/alipay/sdk/app/debug/AlipayDebugOptions;Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;)Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;->mAlipayPayLifeCycle:Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;

    return-object p1
.end method


# virtual methods
.method public getAlipayPayLifeCycle()Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/debug/AlipayDebugOptions;->mAlipayPayLifeCycle:Lcom/alipay/sdk/app/debug/AlipayDebugOptions$AlipayPayLifeCycle;

    return-object v0
.end method
