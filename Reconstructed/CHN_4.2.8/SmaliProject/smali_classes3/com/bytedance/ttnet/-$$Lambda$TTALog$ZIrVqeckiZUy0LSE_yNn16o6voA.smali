.class public final synthetic Lcom/bytedance/ttnet/-$$Lambda$TTALog$ZIrVqeckiZUy0LSE_yNn16o6voA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Losdk/com/ss/android/agilelogger/INativeFuncAddrCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/bytedance/ttnet/-$$Lambda$TTALog$ZIrVqeckiZUy0LSE_yNn16o6voA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttnet/-$$Lambda$TTALog$ZIrVqeckiZUy0LSE_yNn16o6voA;

    invoke-direct {v0}, Lcom/bytedance/ttnet/-$$Lambda$TTALog$ZIrVqeckiZUy0LSE_yNn16o6voA;-><init>()V

    sput-object v0, Lcom/bytedance/ttnet/-$$Lambda$TTALog$ZIrVqeckiZUy0LSE_yNn16o6voA;->INSTANCE:Lcom/bytedance/ttnet/-$$Lambda$TTALog$ZIrVqeckiZUy0LSE_yNn16o6voA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeFuncReady(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/bytedance/ttnet/TTALog;->lambda$ensureALogInitialized$0(J)V

    return-void
.end method
