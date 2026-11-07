.class public Lcom/bytedance/ads/convert/flat/k/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ads/convert/flat/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/k/b$a;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/bytedance/ads/convert/flat/k/b$a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/ads/convert/flat/k/b$a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lcom/bytedance/ads/convert/flat/k/b$a;)Lcom/bytedance/ads/convert/flat/n/a;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method
