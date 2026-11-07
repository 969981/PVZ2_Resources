.class public Lcom/alipay/android/phone/mrpc/core/h;
.super Lcom/alipay/android/phone/mrpc/core/x;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/x;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/h;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/alipay/android/phone/mrpc/core/h;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/alipay/android/phone/mrpc/core/h;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/alipay/android/phone/mrpc/core/ab;)Lcom/alipay/android/phone/mrpc/core/g;
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/i;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/mrpc/core/i;-><init>(Lcom/alipay/android/phone/mrpc/core/h;Lcom/alipay/android/phone/mrpc/core/ab;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/ab;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alipay/android/phone/mrpc/core/ab;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/y;

    invoke-direct {p0, p2}, Lcom/alipay/android/phone/mrpc/core/h;->a(Lcom/alipay/android/phone/mrpc/core/ab;)Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/alipay/android/phone/mrpc/core/y;-><init>(Lcom/alipay/android/phone/mrpc/core/g;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mrpc/core/y;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
