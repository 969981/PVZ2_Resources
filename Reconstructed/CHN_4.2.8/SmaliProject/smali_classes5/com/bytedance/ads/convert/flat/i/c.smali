.class public final Lcom/bytedance/ads/convert/flat/i/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ads/convert/flat/i/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/ads/convert/flat/i/c$a;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/bytedance/ads/convert/flat/i/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ads/convert/flat/i/c$a;

    .line 1
    invoke-direct {v0}, Lcom/bytedance/ads/convert/flat/i/c$a;-><init>()V

    .line 2
    sput-object v0, Lcom/bytedance/ads/convert/flat/i/c;->a:Lcom/bytedance/ads/convert/flat/i/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ads/convert/flat/i/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ads/convert/flat/i/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/ads/convert/flat/i/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/ads/convert/flat/i/c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ads/convert/flat/i/c;->e:Lcom/bytedance/ads/convert/flat/i/f;

    return-void
.end method
